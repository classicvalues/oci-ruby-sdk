# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Filters that are applied to the data at the column level.
  class DataSafe::Models::ColumnFilter
    OPERATOR_ENUM = [
      OPERATOR_IN = 'IN'.freeze,
      OPERATOR_EQ = 'EQ'.freeze,
      OPERATOR_GT = 'GT'.freeze,
      OPERATOR_GE = 'GE'.freeze,
      OPERATOR_LT = 'LT'.freeze,
      OPERATOR_LE = 'LE'.freeze,
      OPERATOR_AND = 'AND'.freeze,
      OPERATOR_OR = 'OR'.freeze,
      OPERATOR_NE = 'NE'.freeze,
      OPERATOR_CO = 'CO'.freeze,
      OPERATOR_NOT = 'NOT'.freeze,
      OPERATOR_NOT_IN = 'NOT_IN'.freeze,
      OPERATOR_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** Name of the column on which the filter must be applied.
    # @return [String]
    attr_accessor :field_name

    # **[Required]** Specifies the type of operator that must be applied for example in, eq etc.
    # @return [String]
    attr_reader :operator

    # **[Required]** An array of expressions based on the operator type. A filter may have one or more expressions.
    # @return [Array<String>]
    attr_accessor :expressions

    # **[Required]** Indicates if the filter is enabled. Values can either be 'true' or 'false'.
    # @return [BOOLEAN]
    attr_accessor :is_enabled

    # **[Required]** Indicates if the filter is hidden. Values can either be 'true' or 'false'.
    # @return [BOOLEAN]
    attr_accessor :is_hidden

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'field_name': :'fieldName',
        'operator': :'operator',
        'expressions': :'expressions',
        'is_enabled': :'isEnabled',
        'is_hidden': :'isHidden'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'field_name': :'String',
        'operator': :'String',
        'expressions': :'Array<String>',
        'is_enabled': :'BOOLEAN',
        'is_hidden': :'BOOLEAN'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :field_name The value to assign to the {#field_name} property
    # @option attributes [String] :operator The value to assign to the {#operator} property
    # @option attributes [Array<String>] :expressions The value to assign to the {#expressions} property
    # @option attributes [BOOLEAN] :is_enabled The value to assign to the {#is_enabled} property
    # @option attributes [BOOLEAN] :is_hidden The value to assign to the {#is_hidden} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.field_name = attributes[:'fieldName'] if attributes[:'fieldName']

      raise 'You cannot provide both :fieldName and :field_name' if attributes.key?(:'fieldName') && attributes.key?(:'field_name')

      self.field_name = attributes[:'field_name'] if attributes[:'field_name']

      self.operator = attributes[:'operator'] if attributes[:'operator']

      self.expressions = attributes[:'expressions'] if attributes[:'expressions']

      self.is_enabled = attributes[:'isEnabled'] unless attributes[:'isEnabled'].nil?

      raise 'You cannot provide both :isEnabled and :is_enabled' if attributes.key?(:'isEnabled') && attributes.key?(:'is_enabled')

      self.is_enabled = attributes[:'is_enabled'] unless attributes[:'is_enabled'].nil?

      self.is_hidden = attributes[:'isHidden'] unless attributes[:'isHidden'].nil?
      self.is_hidden = true if is_hidden.nil? && !attributes.key?(:'isHidden') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isHidden and :is_hidden' if attributes.key?(:'isHidden') && attributes.key?(:'is_hidden')

      self.is_hidden = attributes[:'is_hidden'] unless attributes[:'is_hidden'].nil?
      self.is_hidden = true if is_hidden.nil? && !attributes.key?(:'isHidden') && !attributes.key?(:'is_hidden') # rubocop:disable Style/StringLiterals
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] operator Object to be assigned
    def operator=(operator)
      # rubocop:disable Style/ConditionalAssignment
      if operator && !OPERATOR_ENUM.include?(operator)
        OCI.logger.debug("Unknown value for 'operator' [" + operator + "]. Mapping to 'OPERATOR_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @operator = OPERATOR_UNKNOWN_ENUM_VALUE
      else
        @operator = operator
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        field_name == other.field_name &&
        operator == other.operator &&
        expressions == other.expressions &&
        is_enabled == other.is_enabled &&
        is_hidden == other.is_hidden
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
      [field_name, operator, expressions, is_enabled, is_hidden].hash
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
