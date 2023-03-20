# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # A format entry is part of a masking format and defines the logic to mask data. A format
  # entry can be a basic masking format such as Random Number, or it can be a library masking
  # format. If a masking format has more than one format entries, the combined output of all
  # the format entries is used for masking.
  #
  # This class has direct subclasses. If you are using this class as input to a service operations then you should favor using a subclass over the base class
  class DataSafe::Models::FormatEntry
    TYPE_ENUM = [
      TYPE_DELETE_ROWS = 'DELETE_ROWS'.freeze,
      TYPE_DETERMINISTIC_SUBSTITUTION = 'DETERMINISTIC_SUBSTITUTION'.freeze,
      TYPE_DETERMINISTIC_ENCRYPTION = 'DETERMINISTIC_ENCRYPTION'.freeze,
      TYPE_DETERMINISTIC_ENCRYPTION_DATE = 'DETERMINISTIC_ENCRYPTION_DATE'.freeze,
      TYPE_FIXED_NUMBER = 'FIXED_NUMBER'.freeze,
      TYPE_FIXED_STRING = 'FIXED_STRING'.freeze,
      TYPE_LIBRARY_MASKING_FORMAT = 'LIBRARY_MASKING_FORMAT'.freeze,
      TYPE_NULL_VALUE = 'NULL_VALUE'.freeze,
      TYPE_POST_PROCESSING_FUNCTION = 'POST_PROCESSING_FUNCTION'.freeze,
      TYPE_PRESERVE_ORIGINAL_DATA = 'PRESERVE_ORIGINAL_DATA'.freeze,
      TYPE_RANDOM_DATE = 'RANDOM_DATE'.freeze,
      TYPE_RANDOM_DECIMAL_NUMBER = 'RANDOM_DECIMAL_NUMBER'.freeze,
      TYPE_RANDOM_DIGITS = 'RANDOM_DIGITS'.freeze,
      TYPE_RANDOM_LIST = 'RANDOM_LIST'.freeze,
      TYPE_RANDOM_NUMBER = 'RANDOM_NUMBER'.freeze,
      TYPE_RANDOM_STRING = 'RANDOM_STRING'.freeze,
      TYPE_RANDOM_SUBSTITUTION = 'RANDOM_SUBSTITUTION'.freeze,
      TYPE_REGULAR_EXPRESSION = 'REGULAR_EXPRESSION'.freeze,
      TYPE_SHUFFLE = 'SHUFFLE'.freeze,
      TYPE_SQL_EXPRESSION = 'SQL_EXPRESSION'.freeze,
      TYPE_SUBSTRING = 'SUBSTRING'.freeze,
      TYPE_TRUNCATE_TABLE = 'TRUNCATE_TABLE'.freeze,
      TYPE_USER_DEFINED_FUNCTION = 'USER_DEFINED_FUNCTION'.freeze,
      TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The type of the format entry.
    # @return [String]
    attr_reader :type

    # The description of the format entry.
    # @return [String]
    attr_accessor :description

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'type': :'type',
        'description': :'description'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'type': :'String',
        'description': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Layout/EmptyLines, Metrics/PerceivedComplexity, Metrics/AbcSize


    # Given the hash representation of a subtype of this class,
    # use the info in the hash to return the class of the subtype.
    def self.get_subtype(object_hash)
      type = object_hash[:'type'] # rubocop:disable Style/SymbolLiteral

      return 'OCI::DataSafe::Models::RandomStringFormatEntry' if type == 'RANDOM_STRING'
      return 'OCI::DataSafe::Models::DeterministicSubstitutionFormatEntry' if type == 'DETERMINISTIC_SUBSTITUTION'
      return 'OCI::DataSafe::Models::DeterministicEncryptionFormatEntry' if type == 'DETERMINISTIC_ENCRYPTION'
      return 'OCI::DataSafe::Models::RandomDecimalNumberFormatEntry' if type == 'RANDOM_DECIMAL_NUMBER'
      return 'OCI::DataSafe::Models::RandomSubstitutionFormatEntry' if type == 'RANDOM_SUBSTITUTION'
      return 'OCI::DataSafe::Models::PPFFormatEntry' if type == 'POST_PROCESSING_FUNCTION'
      return 'OCI::DataSafe::Models::NullValueFormatEntry' if type == 'NULL_VALUE'
      return 'OCI::DataSafe::Models::FixedNumberFormatEntry' if type == 'FIXED_NUMBER'
      return 'OCI::DataSafe::Models::RegularExpressionFormatEntry' if type == 'REGULAR_EXPRESSION'
      return 'OCI::DataSafe::Models::UDFFormatEntry' if type == 'USER_DEFINED_FUNCTION'
      return 'OCI::DataSafe::Models::ShuffleFormatEntry' if type == 'SHUFFLE'
      return 'OCI::DataSafe::Models::FixedStringFormatEntry' if type == 'FIXED_STRING'
      return 'OCI::DataSafe::Models::TruncateTableFormatEntry' if type == 'TRUNCATE_TABLE'
      return 'OCI::DataSafe::Models::LibraryMaskingFormatEntry' if type == 'LIBRARY_MASKING_FORMAT'
      return 'OCI::DataSafe::Models::SQLExpressionFormatEntry' if type == 'SQL_EXPRESSION'
      return 'OCI::DataSafe::Models::DeterministicEncryptionDateFormatEntry' if type == 'DETERMINISTIC_ENCRYPTION_DATE'
      return 'OCI::DataSafe::Models::RandomDigitsFormatEntry' if type == 'RANDOM_DIGITS'
      return 'OCI::DataSafe::Models::DeleteRowsFormatEntry' if type == 'DELETE_ROWS'
      return 'OCI::DataSafe::Models::SubstringFormatEntry' if type == 'SUBSTRING'
      return 'OCI::DataSafe::Models::RandomNumberFormatEntry' if type == 'RANDOM_NUMBER'
      return 'OCI::DataSafe::Models::PreserveOriginalDataFormatEntry' if type == 'PRESERVE_ORIGINAL_DATA'
      return 'OCI::DataSafe::Models::RandomDateFormatEntry' if type == 'RANDOM_DATE'
      return 'OCI::DataSafe::Models::RandomListFormatEntry' if type == 'RANDOM_LIST'

      # TODO: Log a warning when the subtype is not found.
      'OCI::DataSafe::Models::FormatEntry'
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Layout/EmptyLines, Metrics/PerceivedComplexity, Metrics/AbcSize

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :type The value to assign to the {#type} property
    # @option attributes [String] :description The value to assign to the {#description} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.type = attributes[:'type'] if attributes[:'type']

      self.description = attributes[:'description'] if attributes[:'description']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      # rubocop:disable Style/ConditionalAssignment
      if type && !TYPE_ENUM.include?(type)
        OCI.logger.debug("Unknown value for 'type' [" + type + "]. Mapping to 'TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @type = TYPE_UNKNOWN_ENUM_VALUE
      else
        @type = type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        type == other.type &&
        description == other.description
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
      [type, description].hash
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