# Copyright (c) 2016, 2018, Oracle and/or its affiliates. All rights reserved.

require 'net/http'
require 'openssl'
require 'securerandom'
require 'uri'

module OCI
  module Auth
    # A certificate retriever which reads PEM-format strings from URLs.
    class UrlBasedCertificateRetriever
      # Creates a new UrlBasedCertificateRetriever
      #
      # @param [String] certificate_url The URL from which to retrieve a certificate. It is assumed that what we retrieve is the PEM-formatted string for the certificate
      # @param [String] private_key_url The URL from which to retrieve the private key corresponding to certificate_url (if any). It is assumed that what we retrieve is the PEM-formatted string for
      # @param [String] private_key_passphrase The passphrase of the private key (if any)
      def initialize(certificate_url, private_key_url: nil, private_key_passphrase: nil)
        raise 'A certificate_url must be supplied' unless certificate_url

        @certificate_url = certificate_url
        @private_key_url = private_key_url
        @private_key_passphrase = private_key_passphrase

        @certificate_pem = nil
        @private_key_pem = nil
        @private_key = nil

        @refresh_lock = Mutex.new

        uri = URI(certificate_url)
        @certificate_retrieve_http_client = Net::HTTP.new(uri.hostname, uri.port)

        if !@private_key_url.nil? && !@private_key_url.strip.empty?
          uri = URI(private_key_url.strip)
          @private_key_retrieve_http_client = Net::HTTP.new(uri.hostname, uri.port)
        else
          @private_key_retrieve_http_client = nil
        end

        refresh
      end

      # @return [String] The certificate as a PEM formatted string
      def certificate_pem
        @refresh_lock.lock
        pem = @certificate_pem
        @refresh_lock.unlock

        pem
      end

      # @return [OpenSSL::X509::Certificate] The certificate as an {OpenSSL::X509::Certificate}. This converts the
      # PEM-formatted string into a {OpenSSL::X509::Certificate}
      def certificate
        cert_pem = certificate_pem
        OpenSSL::X509::Certificate.new(cert_pem)
      end

      # @return [String] The private key as a PEM-formatted string
      def private_key_pem
        @refresh_lock.lock
        pem = @private_key_pem
        @refresh_lock.unlock

        pem
      end

      # @return [OpenSSL::PKey::RSA] The private key
      def private_key
        @refresh_lock.lock
        key = @private_key
        @refresh_lock.unlock

        key
      end

      def refresh
        @refresh_lock.lock
        @certificate_retrieve_http_client.start do
          @certificate_retrieve_http_client.request(Net::HTTP::Get.new(@certificate_url)) do |response|
            @certificate_pem = response.body
          end
        end

        if @private_key_retrieve_http_client
          @private_key_retrieve_http_client.start do
            @private_key_retrieve_http_client.request(Net::HTTP::Get.new(@private_key_url)) do |response|
              @private_key_pem = response.body
              @private_key = OpenSSL::PKey::RSA.new(
                @private_key_pem,
                @pass_phrase || SecureRandom.uuid
              )
            end
          end
        end

        nil
      ensure
        @refresh_lock.unlock if @refresh_lock.locked? && @refresh_lock.owned?
      end
    end
  end
end
