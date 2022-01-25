# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Describes an event configuration, for a given object type and property. Primarily, whether a property change will result in an event being emitted.
  class DataCatalog::Models::EventConfig
    EVENT_CONFIG_STATUS_ENUM = [
      EVENT_CONFIG_STATUS_ENABLED = 'ENABLED'.freeze,
      EVENT_CONFIG_STATUS_DISABLED = 'DISABLED'.freeze,
      EVENT_CONFIG_STATUS_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # Unique type key identifier.
    # @return [String]
    attr_accessor :type_id

    # Name of the type.
    # @return [String]
    attr_accessor :type_name

    # Unique property key identifier.
    # @return [String]
    attr_accessor :property_id

    # Name of the property.
    # @return [String]
    attr_accessor :property_name

    # Status of the configuration.
    # @return [String]
    attr_reader :event_config_status

    # The date and time the event was configured, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).
    # Example: `2019-03-25T21:10:29.600Z`
    #
    # @return [DateTime]
    attr_accessor :time_created

    # The last time that any change was made to the configuration. An [RFC3339](https://tools.ietf.org/html/rfc3339) formatted datetime string.
    #
    # @return [DateTime]
    attr_accessor :time_updated

    # OCID of the user who created the configuration.
    # @return [String]
    attr_accessor :created_by_id

    # OCID of the user who last modified the configuration.
    # @return [String]
    attr_accessor :updated_by_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'type_id': :'typeId',
        'type_name': :'typeName',
        'property_id': :'propertyId',
        'property_name': :'propertyName',
        'event_config_status': :'eventConfigStatus',
        'time_created': :'timeCreated',
        'time_updated': :'timeUpdated',
        'created_by_id': :'createdById',
        'updated_by_id': :'updatedById'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'type_id': :'String',
        'type_name': :'String',
        'property_id': :'String',
        'property_name': :'String',
        'event_config_status': :'String',
        'time_created': :'DateTime',
        'time_updated': :'DateTime',
        'created_by_id': :'String',
        'updated_by_id': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :type_id The value to assign to the {#type_id} property
    # @option attributes [String] :type_name The value to assign to the {#type_name} property
    # @option attributes [String] :property_id The value to assign to the {#property_id} property
    # @option attributes [String] :property_name The value to assign to the {#property_name} property
    # @option attributes [String] :event_config_status The value to assign to the {#event_config_status} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [DateTime] :time_updated The value to assign to the {#time_updated} property
    # @option attributes [String] :created_by_id The value to assign to the {#created_by_id} property
    # @option attributes [String] :updated_by_id The value to assign to the {#updated_by_id} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.type_id = attributes[:'typeId'] if attributes[:'typeId']

      raise 'You cannot provide both :typeId and :type_id' if attributes.key?(:'typeId') && attributes.key?(:'type_id')

      self.type_id = attributes[:'type_id'] if attributes[:'type_id']

      self.type_name = attributes[:'typeName'] if attributes[:'typeName']

      raise 'You cannot provide both :typeName and :type_name' if attributes.key?(:'typeName') && attributes.key?(:'type_name')

      self.type_name = attributes[:'type_name'] if attributes[:'type_name']

      self.property_id = attributes[:'propertyId'] if attributes[:'propertyId']

      raise 'You cannot provide both :propertyId and :property_id' if attributes.key?(:'propertyId') && attributes.key?(:'property_id')

      self.property_id = attributes[:'property_id'] if attributes[:'property_id']

      self.property_name = attributes[:'propertyName'] if attributes[:'propertyName']

      raise 'You cannot provide both :propertyName and :property_name' if attributes.key?(:'propertyName') && attributes.key?(:'property_name')

      self.property_name = attributes[:'property_name'] if attributes[:'property_name']

      self.event_config_status = attributes[:'eventConfigStatus'] if attributes[:'eventConfigStatus']

      raise 'You cannot provide both :eventConfigStatus and :event_config_status' if attributes.key?(:'eventConfigStatus') && attributes.key?(:'event_config_status')

      self.event_config_status = attributes[:'event_config_status'] if attributes[:'event_config_status']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.time_updated = attributes[:'timeUpdated'] if attributes[:'timeUpdated']

      raise 'You cannot provide both :timeUpdated and :time_updated' if attributes.key?(:'timeUpdated') && attributes.key?(:'time_updated')

      self.time_updated = attributes[:'time_updated'] if attributes[:'time_updated']

      self.created_by_id = attributes[:'createdById'] if attributes[:'createdById']

      raise 'You cannot provide both :createdById and :created_by_id' if attributes.key?(:'createdById') && attributes.key?(:'created_by_id')

      self.created_by_id = attributes[:'created_by_id'] if attributes[:'created_by_id']

      self.updated_by_id = attributes[:'updatedById'] if attributes[:'updatedById']

      raise 'You cannot provide both :updatedById and :updated_by_id' if attributes.key?(:'updatedById') && attributes.key?(:'updated_by_id')

      self.updated_by_id = attributes[:'updated_by_id'] if attributes[:'updated_by_id']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] event_config_status Object to be assigned
    def event_config_status=(event_config_status)
      # rubocop:disable Style/ConditionalAssignment
      if event_config_status && !EVENT_CONFIG_STATUS_ENUM.include?(event_config_status)
        OCI.logger.debug("Unknown value for 'event_config_status' [" + event_config_status + "]. Mapping to 'EVENT_CONFIG_STATUS_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @event_config_status = EVENT_CONFIG_STATUS_UNKNOWN_ENUM_VALUE
      else
        @event_config_status = event_config_status
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        type_id == other.type_id &&
        type_name == other.type_name &&
        property_id == other.property_id &&
        property_name == other.property_name &&
        event_config_status == other.event_config_status &&
        time_created == other.time_created &&
        time_updated == other.time_updated &&
        created_by_id == other.created_by_id &&
        updated_by_id == other.updated_by_id
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
      [type_id, type_name, property_id, property_name, event_config_status, time_created, time_updated, created_by_id, updated_by_id].hash
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