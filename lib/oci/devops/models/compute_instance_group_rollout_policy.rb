# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Specifies the rollout policy for compute instance group stages.
  # This class has direct subclasses. If you are using this class as input to a service operations then you should favor using a subclass over the base class
  class Devops::Models::ComputeInstanceGroupRolloutPolicy
    POLICY_TYPE_ENUM = [
      POLICY_TYPE_COMPUTE_INSTANCE_GROUP_LINEAR_ROLLOUT_POLICY_BY_COUNT = 'COMPUTE_INSTANCE_GROUP_LINEAR_ROLLOUT_POLICY_BY_COUNT'.freeze,
      POLICY_TYPE_COMPUTE_INSTANCE_GROUP_LINEAR_ROLLOUT_POLICY_BY_PERCENTAGE = 'COMPUTE_INSTANCE_GROUP_LINEAR_ROLLOUT_POLICY_BY_PERCENTAGE'.freeze,
      POLICY_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The type of policy used for rolling out a deployment stage.
    # @return [String]
    attr_reader :policy_type

    # The duration of delay between batch rollout. The default delay is 1 minute.
    # @return [Integer]
    attr_accessor :batch_delay_in_seconds

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'policy_type': :'policyType',
        'batch_delay_in_seconds': :'batchDelayInSeconds'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'policy_type': :'String',
        'batch_delay_in_seconds': :'Integer'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Layout/EmptyLines, Metrics/PerceivedComplexity, Metrics/AbcSize


    # Given the hash representation of a subtype of this class,
    # use the info in the hash to return the class of the subtype.
    def self.get_subtype(object_hash)
      type = object_hash[:'policyType'] # rubocop:disable Style/SymbolLiteral

      return 'OCI::Devops::Models::ComputeInstanceGroupLinearRolloutPolicyByPercentage' if type == 'COMPUTE_INSTANCE_GROUP_LINEAR_ROLLOUT_POLICY_BY_PERCENTAGE'
      return 'OCI::Devops::Models::ComputeInstanceGroupLinearRolloutPolicyByCount' if type == 'COMPUTE_INSTANCE_GROUP_LINEAR_ROLLOUT_POLICY_BY_COUNT'

      # TODO: Log a warning when the subtype is not found.
      'OCI::Devops::Models::ComputeInstanceGroupRolloutPolicy'
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Layout/EmptyLines, Metrics/PerceivedComplexity, Metrics/AbcSize

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :policy_type The value to assign to the {#policy_type} property
    # @option attributes [Integer] :batch_delay_in_seconds The value to assign to the {#batch_delay_in_seconds} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.policy_type = attributes[:'policyType'] if attributes[:'policyType']

      raise 'You cannot provide both :policyType and :policy_type' if attributes.key?(:'policyType') && attributes.key?(:'policy_type')

      self.policy_type = attributes[:'policy_type'] if attributes[:'policy_type']

      self.batch_delay_in_seconds = attributes[:'batchDelayInSeconds'] if attributes[:'batchDelayInSeconds']
      self.batch_delay_in_seconds = 60 if batch_delay_in_seconds.nil? && !attributes.key?(:'batchDelayInSeconds') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :batchDelayInSeconds and :batch_delay_in_seconds' if attributes.key?(:'batchDelayInSeconds') && attributes.key?(:'batch_delay_in_seconds')

      self.batch_delay_in_seconds = attributes[:'batch_delay_in_seconds'] if attributes[:'batch_delay_in_seconds']
      self.batch_delay_in_seconds = 60 if batch_delay_in_seconds.nil? && !attributes.key?(:'batchDelayInSeconds') && !attributes.key?(:'batch_delay_in_seconds') # rubocop:disable Style/StringLiterals
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] policy_type Object to be assigned
    def policy_type=(policy_type)
      # rubocop:disable Style/ConditionalAssignment
      if policy_type && !POLICY_TYPE_ENUM.include?(policy_type)
        OCI.logger.debug("Unknown value for 'policy_type' [" + policy_type + "]. Mapping to 'POLICY_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @policy_type = POLICY_TYPE_UNKNOWN_ENUM_VALUE
      else
        @policy_type = policy_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        policy_type == other.policy_type &&
        batch_delay_in_seconds == other.batch_delay_in_seconds
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
      [policy_type, batch_delay_in_seconds].hash
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