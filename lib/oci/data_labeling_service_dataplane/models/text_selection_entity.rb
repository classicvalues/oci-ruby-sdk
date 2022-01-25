# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require_relative 'entity'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # This lets the labeler highlight text, by specifying an offset and a length, and apply labels to it.
  class DataLabelingServiceDataplane::Models::TextSelectionEntity < DataLabelingServiceDataplane::Models::Entity
    # **[Required]** A collection of label entities.
    # @return [Array<OCI::DataLabelingServiceDataplane::Models::Label>]
    attr_accessor :labels

    # This attribute is required.
    # @return [OCI::DataLabelingServiceDataplane::Models::TextSpan]
    attr_accessor :text_span

    # A simple key-value pair that is applied without any predefined name, type, or scope. It exists for cross-compatibility only.
    # For example: `{\"bar-key\": \"value\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :extended_metadata

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'entity_type': :'entityType',
        'labels': :'labels',
        'text_span': :'textSpan',
        'extended_metadata': :'extendedMetadata'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'entity_type': :'String',
        'labels': :'Array<OCI::DataLabelingServiceDataplane::Models::Label>',
        'text_span': :'OCI::DataLabelingServiceDataplane::Models::TextSpan',
        'extended_metadata': :'Hash<String, String>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [Array<OCI::DataLabelingServiceDataplane::Models::Label>] :labels The value to assign to the {#labels} property
    # @option attributes [OCI::DataLabelingServiceDataplane::Models::TextSpan] :text_span The value to assign to the {#text_span} property
    # @option attributes [Hash<String, String>] :extended_metadata The value to assign to the {#extended_metadata} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes['entityType'] = 'TEXTSELECTION'

      super(attributes)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.labels = attributes[:'labels'] if attributes[:'labels']

      self.text_span = attributes[:'textSpan'] if attributes[:'textSpan']

      raise 'You cannot provide both :textSpan and :text_span' if attributes.key?(:'textSpan') && attributes.key?(:'text_span')

      self.text_span = attributes[:'text_span'] if attributes[:'text_span']

      self.extended_metadata = attributes[:'extendedMetadata'] if attributes[:'extendedMetadata']

      raise 'You cannot provide both :extendedMetadata and :extended_metadata' if attributes.key?(:'extendedMetadata') && attributes.key?(:'extended_metadata')

      self.extended_metadata = attributes[:'extended_metadata'] if attributes[:'extended_metadata']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        entity_type == other.entity_type &&
        labels == other.labels &&
        text_span == other.text_span &&
        extended_metadata == other.extended_metadata
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
      [entity_type, labels, text_span, extended_metadata].hash
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