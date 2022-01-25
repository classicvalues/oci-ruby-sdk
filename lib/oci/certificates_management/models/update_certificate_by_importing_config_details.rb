# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require_relative 'update_certificate_config_details'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The details of the configuration for updating a certificate based on the keys from an imported certificate.
  class CertificatesManagement::Models::UpdateCertificateByImportingConfigDetails < CertificatesManagement::Models::UpdateCertificateConfigDetails
    # **[Required]** The certificate chain (in PEM format) for the imported certificate.
    # @return [String]
    attr_accessor :cert_chain_pem

    # **[Required]** The private key (in PEM format) for the imported certificate.
    # @return [String]
    attr_accessor :private_key_pem

    # **[Required]** The certificate (in PEM format) for the imported certificate.
    # @return [String]
    attr_accessor :certificate_pem

    # An optional passphrase for the private key.
    # @return [String]
    attr_accessor :private_key_pem_passphrase

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'config_type': :'configType',
        'version_name': :'versionName',
        'stage': :'stage',
        'cert_chain_pem': :'certChainPem',
        'private_key_pem': :'privateKeyPem',
        'certificate_pem': :'certificatePem',
        'private_key_pem_passphrase': :'privateKeyPemPassphrase'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'config_type': :'String',
        'version_name': :'String',
        'stage': :'String',
        'cert_chain_pem': :'String',
        'private_key_pem': :'String',
        'certificate_pem': :'String',
        'private_key_pem_passphrase': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :version_name The value to assign to the {OCI::CertificatesManagement::Models::UpdateCertificateConfigDetails#version_name #version_name} proprety
    # @option attributes [String] :stage The value to assign to the {OCI::CertificatesManagement::Models::UpdateCertificateConfigDetails#stage #stage} proprety
    # @option attributes [String] :cert_chain_pem The value to assign to the {#cert_chain_pem} property
    # @option attributes [String] :private_key_pem The value to assign to the {#private_key_pem} property
    # @option attributes [String] :certificate_pem The value to assign to the {#certificate_pem} property
    # @option attributes [String] :private_key_pem_passphrase The value to assign to the {#private_key_pem_passphrase} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes['configType'] = 'IMPORTED'

      super(attributes)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.cert_chain_pem = attributes[:'certChainPem'] if attributes[:'certChainPem']

      raise 'You cannot provide both :certChainPem and :cert_chain_pem' if attributes.key?(:'certChainPem') && attributes.key?(:'cert_chain_pem')

      self.cert_chain_pem = attributes[:'cert_chain_pem'] if attributes[:'cert_chain_pem']

      self.private_key_pem = attributes[:'privateKeyPem'] if attributes[:'privateKeyPem']

      raise 'You cannot provide both :privateKeyPem and :private_key_pem' if attributes.key?(:'privateKeyPem') && attributes.key?(:'private_key_pem')

      self.private_key_pem = attributes[:'private_key_pem'] if attributes[:'private_key_pem']

      self.certificate_pem = attributes[:'certificatePem'] if attributes[:'certificatePem']

      raise 'You cannot provide both :certificatePem and :certificate_pem' if attributes.key?(:'certificatePem') && attributes.key?(:'certificate_pem')

      self.certificate_pem = attributes[:'certificate_pem'] if attributes[:'certificate_pem']

      self.private_key_pem_passphrase = attributes[:'privateKeyPemPassphrase'] if attributes[:'privateKeyPemPassphrase']

      raise 'You cannot provide both :privateKeyPemPassphrase and :private_key_pem_passphrase' if attributes.key?(:'privateKeyPemPassphrase') && attributes.key?(:'private_key_pem_passphrase')

      self.private_key_pem_passphrase = attributes[:'private_key_pem_passphrase'] if attributes[:'private_key_pem_passphrase']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        config_type == other.config_type &&
        version_name == other.version_name &&
        stage == other.stage &&
        cert_chain_pem == other.cert_chain_pem &&
        private_key_pem == other.private_key_pem &&
        certificate_pem == other.certificate_pem &&
        private_key_pem_passphrase == other.private_key_pem_passphrase
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines

    # @see the `==` method
    # @param [Object] other the other object to be compared
    def eql?(other)
      self == other
    end

    # rubocop:disable Metrics/AbcSize, Layout/EmptyLines


    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [config_type, version_name, stage, cert_chain_pem, private_key_pem, certificate_pem, private_key_pem_passphrase].hash
    end
    # rubocop:enable Metrics/AbcSize, Layout/EmptyLines

    # rubocop:disable Metrics/AbcSize, Layout/EmptyLines


    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)

      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            public_method("#{key}=").call(
              attributes[self.class.attribute_map[key]]
                .map { |v| OCI::Internal::Util.convert_to_type(Regexp.last_match(1), v) }
            )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          public_method("#{key}=").call(
            OCI::Internal::Util.convert_to_type(type, attributes[self.class.attribute_map[key]])
          )
        end
        # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end
    # rubocop:enable Metrics/AbcSize, Layout/EmptyLines

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = public_method(attr).call
        next if value.nil? && !instance_variable_defined?("@#{attr}")

        hash[param] = _to_hash(value)
      end
      hash
    end

    private

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
# rubocop:enable Lint/UnneededCopDisableDirective, Metrics/LineLength
