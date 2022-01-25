# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The REST API configuration for execution.
  class DataIntegration::Models::ExecuteRestCallConfig
    METHOD_TYPE_ENUM = [
      METHOD_TYPE_GET = 'GET'.freeze,
      METHOD_TYPE_POST = 'POST'.freeze,
      METHOD_TYPE_PATCH = 'PATCH'.freeze,
      METHOD_TYPE_DELETE = 'DELETE'.freeze,
      METHOD_TYPE_PUT = 'PUT'.freeze,
      METHOD_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # The REST method to use.
    # @return [String]
    attr_reader :method_type

    # The headers for the REST call.
    # @return [Hash<String, String>]
    attr_accessor :request_headers

    # @return [OCI::DataIntegration::Models::ConfigValues]
    attr_accessor :config_values

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'method_type': :'methodType',
        'request_headers': :'requestHeaders',
        'config_values': :'configValues'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'method_type': :'String',
        'request_headers': :'Hash<String, String>',
        'config_values': :'OCI::DataIntegration::Models::ConfigValues'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :method_type The value to assign to the {#method_type} property
    # @option attributes [Hash<String, String>] :request_headers The value to assign to the {#request_headers} property
    # @option attributes [OCI::DataIntegration::Models::ConfigValues] :config_values The value to assign to the {#config_values} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      self.method_type = attributes[:'methodType'] if attributes[:'methodType']

      raise 'You cannot provide both :methodType and :method_type' if attributes.key?(:'methodType') && attributes.key?(:'method_type')

      self.method_type = attributes[:'method_type'] if attributes[:'method_type']

      self.request_headers = attributes[:'requestHeaders'] if attributes[:'requestHeaders']

      raise 'You cannot provide both :requestHeaders and :request_headers' if attributes.key?(:'requestHeaders') && attributes.key?(:'request_headers')

      self.request_headers = attributes[:'request_headers'] if attributes[:'request_headers']

      self.config_values = attributes[:'configValues'] if attributes[:'configValues']

      raise 'You cannot provide both :configValues and :config_values' if attributes.key?(:'configValues') && attributes.key?(:'config_values')

      self.config_values = attributes[:'config_values'] if attributes[:'config_values']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] method_type Object to be assigned
    def method_type=(method_type)
      # rubocop:disable Style/ConditionalAssignment
      if method_type && !METHOD_TYPE_ENUM.include?(method_type)
        OCI.logger.debug("Unknown value for 'method_type' [" + method_type + "]. Mapping to 'METHOD_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @method_type = METHOD_TYPE_UNKNOWN_ENUM_VALUE
      else
        @method_type = method_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        method_type == other.method_type &&
        request_headers == other.request_headers &&
        config_values == other.config_values
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
      [method_type, request_headers, config_values].hash
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