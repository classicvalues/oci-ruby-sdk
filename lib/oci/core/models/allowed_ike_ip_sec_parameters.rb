# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Allowed IKE IPSec Parameters
  class Core::Models::AllowedIkeIPSecParameters
    # This attribute is required.
    # @return [OCI::Core::Models::AllowedPhaseOneParameters]
    attr_accessor :allowed_phase_one_parameters

    # This attribute is required.
    # @return [OCI::Core::Models::AllowedPhaseTwoParameters]
    attr_accessor :allowed_phase_two_parameters

    # This attribute is required.
    # @return [OCI::Core::Models::DefaultPhaseOneParameters]
    attr_accessor :default_phase_one_parameters

    # This attribute is required.
    # @return [OCI::Core::Models::DefaultPhaseTwoParameters]
    attr_accessor :default_phase_two_parameters

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'allowed_phase_one_parameters': :'allowedPhaseOneParameters',
        'allowed_phase_two_parameters': :'allowedPhaseTwoParameters',
        'default_phase_one_parameters': :'defaultPhaseOneParameters',
        'default_phase_two_parameters': :'defaultPhaseTwoParameters'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'allowed_phase_one_parameters': :'OCI::Core::Models::AllowedPhaseOneParameters',
        'allowed_phase_two_parameters': :'OCI::Core::Models::AllowedPhaseTwoParameters',
        'default_phase_one_parameters': :'OCI::Core::Models::DefaultPhaseOneParameters',
        'default_phase_two_parameters': :'OCI::Core::Models::DefaultPhaseTwoParameters'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [OCI::Core::Models::AllowedPhaseOneParameters] :allowed_phase_one_parameters The value to assign to the {#allowed_phase_one_parameters} property
    # @option attributes [OCI::Core::Models::AllowedPhaseTwoParameters] :allowed_phase_two_parameters The value to assign to the {#allowed_phase_two_parameters} property
    # @option attributes [OCI::Core::Models::DefaultPhaseOneParameters] :default_phase_one_parameters The value to assign to the {#default_phase_one_parameters} property
    # @option attributes [OCI::Core::Models::DefaultPhaseTwoParameters] :default_phase_two_parameters The value to assign to the {#default_phase_two_parameters} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.allowed_phase_one_parameters = attributes[:'allowedPhaseOneParameters'] if attributes[:'allowedPhaseOneParameters']

      raise 'You cannot provide both :allowedPhaseOneParameters and :allowed_phase_one_parameters' if attributes.key?(:'allowedPhaseOneParameters') && attributes.key?(:'allowed_phase_one_parameters')

      self.allowed_phase_one_parameters = attributes[:'allowed_phase_one_parameters'] if attributes[:'allowed_phase_one_parameters']

      self.allowed_phase_two_parameters = attributes[:'allowedPhaseTwoParameters'] if attributes[:'allowedPhaseTwoParameters']

      raise 'You cannot provide both :allowedPhaseTwoParameters and :allowed_phase_two_parameters' if attributes.key?(:'allowedPhaseTwoParameters') && attributes.key?(:'allowed_phase_two_parameters')

      self.allowed_phase_two_parameters = attributes[:'allowed_phase_two_parameters'] if attributes[:'allowed_phase_two_parameters']

      self.default_phase_one_parameters = attributes[:'defaultPhaseOneParameters'] if attributes[:'defaultPhaseOneParameters']

      raise 'You cannot provide both :defaultPhaseOneParameters and :default_phase_one_parameters' if attributes.key?(:'defaultPhaseOneParameters') && attributes.key?(:'default_phase_one_parameters')

      self.default_phase_one_parameters = attributes[:'default_phase_one_parameters'] if attributes[:'default_phase_one_parameters']

      self.default_phase_two_parameters = attributes[:'defaultPhaseTwoParameters'] if attributes[:'defaultPhaseTwoParameters']

      raise 'You cannot provide both :defaultPhaseTwoParameters and :default_phase_two_parameters' if attributes.key?(:'defaultPhaseTwoParameters') && attributes.key?(:'default_phase_two_parameters')

      self.default_phase_two_parameters = attributes[:'default_phase_two_parameters'] if attributes[:'default_phase_two_parameters']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        allowed_phase_one_parameters == other.allowed_phase_one_parameters &&
        allowed_phase_two_parameters == other.allowed_phase_two_parameters &&
        default_phase_one_parameters == other.default_phase_one_parameters &&
        default_phase_two_parameters == other.default_phase_two_parameters
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
      [allowed_phase_one_parameters, allowed_phase_two_parameters, default_phase_one_parameters, default_phase_two_parameters].hash
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