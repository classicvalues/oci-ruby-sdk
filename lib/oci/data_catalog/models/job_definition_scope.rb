# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Defines the rules or criteria based on which the scope for job definition is circumscribed.
  class DataCatalog::Models::JobDefinitionScope
    # Name of the folder or schema for this metadata harvest.
    # @return [String]
    attr_accessor :folder_name

    # Name of the entity for this metadata harvest.
    # @return [String]
    attr_accessor :entity_name

    # Filter rules with regular expression to specify folder names for this metadata harvest.
    # @return [String]
    attr_accessor :folder_name_filter

    # Filter rules with regular expression to specify entity names for this metadata harvest.
    # @return [String]
    attr_accessor :entity_name_filter

    # Specify if sample data to be extracted as part of this harvest.
    # @return [BOOLEAN]
    attr_accessor :is_sample_data_extracted

    # Specify the sample data size in MB, specified as number of rows, for this metadata harvest.
    # @return [Integer]
    attr_accessor :sample_data_size_in_mbs

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'folder_name': :'folderName',
        'entity_name': :'entityName',
        'folder_name_filter': :'folderNameFilter',
        'entity_name_filter': :'entityNameFilter',
        'is_sample_data_extracted': :'isSampleDataExtracted',
        'sample_data_size_in_mbs': :'sampleDataSizeInMBs'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'folder_name': :'String',
        'entity_name': :'String',
        'folder_name_filter': :'String',
        'entity_name_filter': :'String',
        'is_sample_data_extracted': :'BOOLEAN',
        'sample_data_size_in_mbs': :'Integer'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :folder_name The value to assign to the {#folder_name} property
    # @option attributes [String] :entity_name The value to assign to the {#entity_name} property
    # @option attributes [String] :folder_name_filter The value to assign to the {#folder_name_filter} property
    # @option attributes [String] :entity_name_filter The value to assign to the {#entity_name_filter} property
    # @option attributes [BOOLEAN] :is_sample_data_extracted The value to assign to the {#is_sample_data_extracted} property
    # @option attributes [Integer] :sample_data_size_in_mbs The value to assign to the {#sample_data_size_in_mbs} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.folder_name = attributes[:'folderName'] if attributes[:'folderName']
      self.folder_name = "*" if folder_name.nil? && !attributes.key?(:'folderName') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :folderName and :folder_name' if attributes.key?(:'folderName') && attributes.key?(:'folder_name')

      self.folder_name = attributes[:'folder_name'] if attributes[:'folder_name']
      self.folder_name = "*" if folder_name.nil? && !attributes.key?(:'folderName') && !attributes.key?(:'folder_name') # rubocop:disable Style/StringLiterals

      self.entity_name = attributes[:'entityName'] if attributes[:'entityName']
      self.entity_name = "*" if entity_name.nil? && !attributes.key?(:'entityName') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :entityName and :entity_name' if attributes.key?(:'entityName') && attributes.key?(:'entity_name')

      self.entity_name = attributes[:'entity_name'] if attributes[:'entity_name']
      self.entity_name = "*" if entity_name.nil? && !attributes.key?(:'entityName') && !attributes.key?(:'entity_name') # rubocop:disable Style/StringLiterals

      self.folder_name_filter = attributes[:'folderNameFilter'] if attributes[:'folderNameFilter']

      raise 'You cannot provide both :folderNameFilter and :folder_name_filter' if attributes.key?(:'folderNameFilter') && attributes.key?(:'folder_name_filter')

      self.folder_name_filter = attributes[:'folder_name_filter'] if attributes[:'folder_name_filter']

      self.entity_name_filter = attributes[:'entityNameFilter'] if attributes[:'entityNameFilter']

      raise 'You cannot provide both :entityNameFilter and :entity_name_filter' if attributes.key?(:'entityNameFilter') && attributes.key?(:'entity_name_filter')

      self.entity_name_filter = attributes[:'entity_name_filter'] if attributes[:'entity_name_filter']

      self.is_sample_data_extracted = attributes[:'isSampleDataExtracted'] unless attributes[:'isSampleDataExtracted'].nil?
      self.is_sample_data_extracted = true if is_sample_data_extracted.nil? && !attributes.key?(:'isSampleDataExtracted') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isSampleDataExtracted and :is_sample_data_extracted' if attributes.key?(:'isSampleDataExtracted') && attributes.key?(:'is_sample_data_extracted')

      self.is_sample_data_extracted = attributes[:'is_sample_data_extracted'] unless attributes[:'is_sample_data_extracted'].nil?
      self.is_sample_data_extracted = true if is_sample_data_extracted.nil? && !attributes.key?(:'isSampleDataExtracted') && !attributes.key?(:'is_sample_data_extracted') # rubocop:disable Style/StringLiterals

      self.sample_data_size_in_mbs = attributes[:'sampleDataSizeInMBs'] if attributes[:'sampleDataSizeInMBs']

      raise 'You cannot provide both :sampleDataSizeInMBs and :sample_data_size_in_mbs' if attributes.key?(:'sampleDataSizeInMBs') && attributes.key?(:'sample_data_size_in_mbs')

      self.sample_data_size_in_mbs = attributes[:'sample_data_size_in_mbs'] if attributes[:'sample_data_size_in_mbs']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        folder_name == other.folder_name &&
        entity_name == other.entity_name &&
        folder_name_filter == other.folder_name_filter &&
        entity_name_filter == other.entity_name_filter &&
        is_sample_data_extracted == other.is_sample_data_extracted &&
        sample_data_size_in_mbs == other.sample_data_size_in_mbs
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
      [folder_name, entity_name, folder_name_filter, entity_name_filter, is_sample_data_extracted, sample_data_size_in_mbs].hash
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
