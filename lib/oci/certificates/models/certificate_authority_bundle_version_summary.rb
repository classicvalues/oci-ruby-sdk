# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The properties of a version of a bundle for a certificate authority (CA). Certificate authority bundle version summary objects do not include the actual contents of the certificate.
  #
  class Certificates::Models::CertificateAuthorityBundleVersionSummary
    STAGES_ENUM = [
      STAGES_CURRENT = 'CURRENT'.freeze,
      STAGES_PENDING = 'PENDING'.freeze,
      STAGES_LATEST = 'LATEST'.freeze,
      STAGES_PREVIOUS = 'PREVIOUS'.freeze,
      STAGES_DEPRECATED = 'DEPRECATED'.freeze,
      STAGES_FAILED = 'FAILED'.freeze,
      STAGES_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The OCID of the certificate authority (CA).
    # @return [String]
    attr_accessor :certificate_authority_id

    # A unique certificate identifier used in certificate revocation tracking, formatted as octets.
    # Example: `03 AC FC FA CC B3 CB 02 B8 F8 DE F5 85 E7 7B FF`
    #
    # @return [String]
    attr_accessor :serial_number

    # **[Required]** An optional property indicating when the CA version was created, expressed in [RFC 3339](https://tools.ietf.org/html/rfc3339) timestamp format.
    # Example: `2019-04-03T21:10:29.600Z`
    #
    # @return [DateTime]
    attr_accessor :time_created

    # **[Required]** The version number of the CA.
    # @return [Integer]
    attr_accessor :version_number

    # The name of the CA version. When this value is not null, the name is unique across CA versions for a given CA.
    #
    # @return [String]
    attr_accessor :version_name

    # **[Required]** The name of the CA.
    # @return [String]
    attr_accessor :certificate_authority_name

    # An optional property indicating when to delete the CA version, expressed in [RFC 3339](https://tools.ietf.org/html/rfc3339) timestamp format.
    # Example: `2019-04-03T21:10:29.600Z`
    #
    # @return [DateTime]
    attr_accessor :time_of_deletion

    # @return [OCI::Certificates::Models::Validity]
    attr_accessor :validity

    # **[Required]** A list of rotation states for this CA version.
    # @return [Array<String>]
    attr_reader :stages

    # @return [OCI::Certificates::Models::RevocationStatus]
    attr_accessor :revocation_status

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'certificate_authority_id': :'certificateAuthorityId',
        'serial_number': :'serialNumber',
        'time_created': :'timeCreated',
        'version_number': :'versionNumber',
        'version_name': :'versionName',
        'certificate_authority_name': :'certificateAuthorityName',
        'time_of_deletion': :'timeOfDeletion',
        'validity': :'validity',
        'stages': :'stages',
        'revocation_status': :'revocationStatus'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'certificate_authority_id': :'String',
        'serial_number': :'String',
        'time_created': :'DateTime',
        'version_number': :'Integer',
        'version_name': :'String',
        'certificate_authority_name': :'String',
        'time_of_deletion': :'DateTime',
        'validity': :'OCI::Certificates::Models::Validity',
        'stages': :'Array<String>',
        'revocation_status': :'OCI::Certificates::Models::RevocationStatus'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :certificate_authority_id The value to assign to the {#certificate_authority_id} property
    # @option attributes [String] :serial_number The value to assign to the {#serial_number} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [Integer] :version_number The value to assign to the {#version_number} property
    # @option attributes [String] :version_name The value to assign to the {#version_name} property
    # @option attributes [String] :certificate_authority_name The value to assign to the {#certificate_authority_name} property
    # @option attributes [DateTime] :time_of_deletion The value to assign to the {#time_of_deletion} property
    # @option attributes [OCI::Certificates::Models::Validity] :validity The value to assign to the {#validity} property
    # @option attributes [Array<String>] :stages The value to assign to the {#stages} property
    # @option attributes [OCI::Certificates::Models::RevocationStatus] :revocation_status The value to assign to the {#revocation_status} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.certificate_authority_id = attributes[:'certificateAuthorityId'] if attributes[:'certificateAuthorityId']

      raise 'You cannot provide both :certificateAuthorityId and :certificate_authority_id' if attributes.key?(:'certificateAuthorityId') && attributes.key?(:'certificate_authority_id')

      self.certificate_authority_id = attributes[:'certificate_authority_id'] if attributes[:'certificate_authority_id']

      self.serial_number = attributes[:'serialNumber'] if attributes[:'serialNumber']

      raise 'You cannot provide both :serialNumber and :serial_number' if attributes.key?(:'serialNumber') && attributes.key?(:'serial_number')

      self.serial_number = attributes[:'serial_number'] if attributes[:'serial_number']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.version_number = attributes[:'versionNumber'] if attributes[:'versionNumber']

      raise 'You cannot provide both :versionNumber and :version_number' if attributes.key?(:'versionNumber') && attributes.key?(:'version_number')

      self.version_number = attributes[:'version_number'] if attributes[:'version_number']

      self.version_name = attributes[:'versionName'] if attributes[:'versionName']
      self.version_name = "null" if version_name.nil? && !attributes.key?(:'versionName') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :versionName and :version_name' if attributes.key?(:'versionName') && attributes.key?(:'version_name')

      self.version_name = attributes[:'version_name'] if attributes[:'version_name']
      self.version_name = "null" if version_name.nil? && !attributes.key?(:'versionName') && !attributes.key?(:'version_name') # rubocop:disable Style/StringLiterals

      self.certificate_authority_name = attributes[:'certificateAuthorityName'] if attributes[:'certificateAuthorityName']

      raise 'You cannot provide both :certificateAuthorityName and :certificate_authority_name' if attributes.key?(:'certificateAuthorityName') && attributes.key?(:'certificate_authority_name')

      self.certificate_authority_name = attributes[:'certificate_authority_name'] if attributes[:'certificate_authority_name']

      self.time_of_deletion = attributes[:'timeOfDeletion'] if attributes[:'timeOfDeletion']

      raise 'You cannot provide both :timeOfDeletion and :time_of_deletion' if attributes.key?(:'timeOfDeletion') && attributes.key?(:'time_of_deletion')

      self.time_of_deletion = attributes[:'time_of_deletion'] if attributes[:'time_of_deletion']

      self.validity = attributes[:'validity'] if attributes[:'validity']

      self.stages = attributes[:'stages'] if attributes[:'stages']

      self.revocation_status = attributes[:'revocationStatus'] if attributes[:'revocationStatus']

      raise 'You cannot provide both :revocationStatus and :revocation_status' if attributes.key?(:'revocationStatus') && attributes.key?(:'revocation_status')

      self.revocation_status = attributes[:'revocation_status'] if attributes[:'revocation_status']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] stages Object to be assigned
    def stages=(stages)
      # rubocop:disable Style/ConditionalAssignment
      if stages.nil?
        @stages = nil
      else
        @stages =
          stages.collect do |item|
            if STAGES_ENUM.include?(item)
              item
            else
              OCI.logger.debug("Unknown value for 'stages' [#{item}]. Mapping to 'STAGES_UNKNOWN_ENUM_VALUE'") if OCI.logger
              STAGES_UNKNOWN_ENUM_VALUE
            end
          end
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        certificate_authority_id == other.certificate_authority_id &&
        serial_number == other.serial_number &&
        time_created == other.time_created &&
        version_number == other.version_number &&
        version_name == other.version_name &&
        certificate_authority_name == other.certificate_authority_name &&
        time_of_deletion == other.time_of_deletion &&
        validity == other.validity &&
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
      [certificate_authority_id, serial_number, time_created, version_number, version_name, certificate_authority_name, time_of_deletion, validity, stages, revocation_status].hash
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
