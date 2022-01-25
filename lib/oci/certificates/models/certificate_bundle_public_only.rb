# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require_relative 'certificate_bundle'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # A certificate bundle, not including the private key.
  class Certificates::Models::CertificateBundlePublicOnly < Certificates::Models::CertificateBundle
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'certificate_bundle_type': :'certificateBundleType',
        'certificate_id': :'certificateId',
        'certificate_name': :'certificateName',
        'version_number': :'versionNumber',
        'serial_number': :'serialNumber',
        'certificate_pem': :'certificatePem',
        'cert_chain_pem': :'certChainPem',
        'time_created': :'timeCreated',
        'validity': :'validity',
        'version_name': :'versionName',
        'stages': :'stages',
        'revocation_status': :'revocationStatus'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'certificate_bundle_type': :'String',
        'certificate_id': :'String',
        'certificate_name': :'String',
        'version_number': :'Integer',
        'serial_number': :'String',
        'certificate_pem': :'String',
        'cert_chain_pem': :'String',
        'time_created': :'DateTime',
        'validity': :'OCI::Certificates::Models::Validity',
        'version_name': :'String',
        'stages': :'Array<String>',
        'revocation_status': :'OCI::Certificates::Models::RevocationStatus'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :certificate_id The value to assign to the {OCI::Certificates::Models::CertificateBundle#certificate_id #certificate_id} proprety
    # @option attributes [String] :certificate_name The value to assign to the {OCI::Certificates::Models::CertificateBundle#certificate_name #certificate_name} proprety
    # @option attributes [Integer] :version_number The value to assign to the {OCI::Certificates::Models::CertificateBundle#version_number #version_number} proprety
    # @option attributes [String] :serial_number The value to assign to the {OCI::Certificates::Models::CertificateBundle#serial_number #serial_number} proprety
    # @option attributes [String] :certificate_pem The value to assign to the {OCI::Certificates::Models::CertificateBundle#certificate_pem #certificate_pem} proprety
    # @option attributes [String] :cert_chain_pem The value to assign to the {OCI::Certificates::Models::CertificateBundle#cert_chain_pem #cert_chain_pem} proprety
    # @option attributes [DateTime] :time_created The value to assign to the {OCI::Certificates::Models::CertificateBundle#time_created #time_created} proprety
    # @option attributes [OCI::Certificates::Models::Validity] :validity The value to assign to the {OCI::Certificates::Models::CertificateBundle#validity #validity} proprety
    # @option attributes [String] :version_name The value to assign to the {OCI::Certificates::Models::CertificateBundle#version_name #version_name} proprety
    # @option attributes [Array<String>] :stages The value to assign to the {OCI::Certificates::Models::CertificateBundle#stages #stages} proprety
    # @option attributes [OCI::Certificates::Models::RevocationStatus] :revocation_status The value to assign to the {OCI::Certificates::Models::CertificateBundle#revocation_status #revocation_status} proprety
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes['certificateBundleType'] = 'CERTIFICATE_CONTENT_PUBLIC_ONLY'

      super(attributes)
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        certificate_bundle_type == other.certificate_bundle_type &&
        certificate_id == other.certificate_id &&
        certificate_name == other.certificate_name &&
        version_number == other.version_number &&
        serial_number == other.serial_number &&
        certificate_pem == other.certificate_pem &&
        cert_chain_pem == other.cert_chain_pem &&
        time_created == other.time_created &&
        validity == other.validity &&
        version_name == other.version_name &&
        stages == other.stages &&
        revocation_status == other.revocation_status
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
      [certificate_bundle_type, certificate_id, certificate_name, version_number, serial_number, certificate_pem, cert_chain_pem, time_created, validity, version_name, stages, revocation_status].hash
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