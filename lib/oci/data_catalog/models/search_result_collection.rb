# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The list of search result items matching the criteria returned from the search operation. Search errors and
  # messages, if any , will be part of the standard error response.
  #
  class DataCatalog::Models::SearchResultCollection
    # Total number of items returned.
    # @return [Integer]
    attr_accessor :count

    # Search result set.
    # @return [Array<OCI::DataCatalog::Models::SearchResult>]
    attr_accessor :items

    # String that data objects are to be searched with.
    # @return [String]
    attr_accessor :query

    # Aggregations/facets on properties of data objects.
    # @return [Array<OCI::DataCatalog::Models::FacetedSearchAggregation>]
    attr_accessor :faceted_search_aggregation

    # A list of fields or properties used in the sorting of a search result.
    # @return [Array<String>]
    attr_accessor :sortable_fields

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'count': :'count',
        'items': :'items',
        'query': :'query',
        'faceted_search_aggregation': :'facetedSearchAggregation',
        'sortable_fields': :'sortableFields'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'count': :'Integer',
        'items': :'Array<OCI::DataCatalog::Models::SearchResult>',
        'query': :'String',
        'faceted_search_aggregation': :'Array<OCI::DataCatalog::Models::FacetedSearchAggregation>',
        'sortable_fields': :'Array<String>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [Integer] :count The value to assign to the {#count} property
    # @option attributes [Array<OCI::DataCatalog::Models::SearchResult>] :items The value to assign to the {#items} property
    # @option attributes [String] :query The value to assign to the {#query} property
    # @option attributes [Array<OCI::DataCatalog::Models::FacetedSearchAggregation>] :faceted_search_aggregation The value to assign to the {#faceted_search_aggregation} property
    # @option attributes [Array<String>] :sortable_fields The value to assign to the {#sortable_fields} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.count = attributes[:'count'] if attributes[:'count']

      self.items = attributes[:'items'] if attributes[:'items']

      self.query = attributes[:'query'] if attributes[:'query']

      self.faceted_search_aggregation = attributes[:'facetedSearchAggregation'] if attributes[:'facetedSearchAggregation']

      raise 'You cannot provide both :facetedSearchAggregation and :faceted_search_aggregation' if attributes.key?(:'facetedSearchAggregation') && attributes.key?(:'faceted_search_aggregation')

      self.faceted_search_aggregation = attributes[:'faceted_search_aggregation'] if attributes[:'faceted_search_aggregation']

      self.sortable_fields = attributes[:'sortableFields'] if attributes[:'sortableFields']

      raise 'You cannot provide both :sortableFields and :sortable_fields' if attributes.key?(:'sortableFields') && attributes.key?(:'sortable_fields')

      self.sortable_fields = attributes[:'sortable_fields'] if attributes[:'sortable_fields']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        count == other.count &&
        items == other.items &&
        query == other.query &&
        faceted_search_aggregation == other.faceted_search_aggregation &&
        sortable_fields == other.sortable_fields
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
      [count, items, query, faceted_search_aggregation, sortable_fields].hash
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