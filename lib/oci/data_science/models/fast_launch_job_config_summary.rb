# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The shape config to launch a fast launch capable job instance
  class DataScience::Models::FastLaunchJobConfigSummary
    SHAPE_SERIES_ENUM = [
      SHAPE_SERIES_AMD_ROME = 'AMD_ROME'.freeze,
      SHAPE_SERIES_INTEL_SKYLAKE = 'INTEL_SKYLAKE'.freeze,
      SHAPE_SERIES_NVIDIA_GPU = 'NVIDIA_GPU'.freeze,
      SHAPE_SERIES_LEGACY = 'LEGACY'.freeze,
      SHAPE_SERIES_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    MANAGED_EGRESS_SUPPORT_ENUM = [
      MANAGED_EGRESS_SUPPORT_REQUIRED = 'REQUIRED'.freeze,
      MANAGED_EGRESS_SUPPORT_SUPPORTED = 'SUPPORTED'.freeze,
      MANAGED_EGRESS_SUPPORT_UNSUPPORTED = 'UNSUPPORTED'.freeze,
      MANAGED_EGRESS_SUPPORT_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The name of the fast launch job config
    #
    # @return [String]
    attr_accessor :name

    # **[Required]** The name of the fast launch job shape.
    #
    # @return [String]
    attr_accessor :shape_name

    # **[Required]** The number of cores associated with this fast launch job shape.
    #
    # @return [Integer]
    attr_accessor :core_count

    # **[Required]** The number of cores associated with this fast launch job shape.
    #
    # @return [Integer]
    attr_accessor :memory_in_gbs

    # **[Required]** The family that the compute shape belongs to.
    #
    # @return [String]
    attr_reader :shape_series

    # **[Required]** The managed egress support
    #
    # @return [String]
    attr_reader :managed_egress_support

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'name': :'name',
        'shape_name': :'shapeName',
        'core_count': :'coreCount',
        'memory_in_gbs': :'memoryInGBs',
        'shape_series': :'shapeSeries',
        'managed_egress_support': :'managedEgressSupport'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'name': :'String',
        'shape_name': :'String',
        'core_count': :'Integer',
        'memory_in_gbs': :'Integer',
        'shape_series': :'String',
        'managed_egress_support': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :name The value to assign to the {#name} property
    # @option attributes [String] :shape_name The value to assign to the {#shape_name} property
    # @option attributes [Integer] :core_count The value to assign to the {#core_count} property
    # @option attributes [Integer] :memory_in_gbs The value to assign to the {#memory_in_gbs} property
    # @option attributes [String] :shape_series The value to assign to the {#shape_series} property
    # @option attributes [String] :managed_egress_support The value to assign to the {#managed_egress_support} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.name = attributes[:'name'] if attributes[:'name']

      self.shape_name = attributes[:'shapeName'] if attributes[:'shapeName']

      raise 'You cannot provide both :shapeName and :shape_name' if attributes.key?(:'shapeName') && attributes.key?(:'shape_name')

      self.shape_name = attributes[:'shape_name'] if attributes[:'shape_name']

      self.core_count = attributes[:'coreCount'] if attributes[:'coreCount']

      raise 'You cannot provide both :coreCount and :core_count' if attributes.key?(:'coreCount') && attributes.key?(:'core_count')

      self.core_count = attributes[:'core_count'] if attributes[:'core_count']

      self.memory_in_gbs = attributes[:'memoryInGBs'] if attributes[:'memoryInGBs']

      raise 'You cannot provide both :memoryInGBs and :memory_in_gbs' if attributes.key?(:'memoryInGBs') && attributes.key?(:'memory_in_gbs')

      self.memory_in_gbs = attributes[:'memory_in_gbs'] if attributes[:'memory_in_gbs']

      self.shape_series = attributes[:'shapeSeries'] if attributes[:'shapeSeries']
      self.shape_series = "INTEL_SKYLAKE" if shape_series.nil? && !attributes.key?(:'shapeSeries') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :shapeSeries and :shape_series' if attributes.key?(:'shapeSeries') && attributes.key?(:'shape_series')

      self.shape_series = attributes[:'shape_series'] if attributes[:'shape_series']
      self.shape_series = "INTEL_SKYLAKE" if shape_series.nil? && !attributes.key?(:'shapeSeries') && !attributes.key?(:'shape_series') # rubocop:disable Style/StringLiterals

      self.managed_egress_support = attributes[:'managedEgressSupport'] if attributes[:'managedEgressSupport']
      self.managed_egress_support = "SUPPORTED" if managed_egress_support.nil? && !attributes.key?(:'managedEgressSupport') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :managedEgressSupport and :managed_egress_support' if attributes.key?(:'managedEgressSupport') && attributes.key?(:'managed_egress_support')

      self.managed_egress_support = attributes[:'managed_egress_support'] if attributes[:'managed_egress_support']
      self.managed_egress_support = "SUPPORTED" if managed_egress_support.nil? && !attributes.key?(:'managedEgressSupport') && !attributes.key?(:'managed_egress_support') # rubocop:disable Style/StringLiterals
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shape_series Object to be assigned
    def shape_series=(shape_series)
      # rubocop:disable Style/ConditionalAssignment
      if shape_series && !SHAPE_SERIES_ENUM.include?(shape_series)
        OCI.logger.debug("Unknown value for 'shape_series' [" + shape_series + "]. Mapping to 'SHAPE_SERIES_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @shape_series = SHAPE_SERIES_UNKNOWN_ENUM_VALUE
      else
        @shape_series = shape_series
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] managed_egress_support Object to be assigned
    def managed_egress_support=(managed_egress_support)
      # rubocop:disable Style/ConditionalAssignment
      if managed_egress_support && !MANAGED_EGRESS_SUPPORT_ENUM.include?(managed_egress_support)
        OCI.logger.debug("Unknown value for 'managed_egress_support' [" + managed_egress_support + "]. Mapping to 'MANAGED_EGRESS_SUPPORT_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @managed_egress_support = MANAGED_EGRESS_SUPPORT_UNKNOWN_ENUM_VALUE
      else
        @managed_egress_support = managed_egress_support
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        name == other.name &&
        shape_name == other.shape_name &&
        core_count == other.core_count &&
        memory_in_gbs == other.memory_in_gbs &&
        shape_series == other.shape_series &&
        managed_egress_support == other.managed_egress_support
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
      [name, shape_name, core_count, memory_in_gbs, shape_series, managed_egress_support].hash
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