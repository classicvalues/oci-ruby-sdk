# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Properties used in connection create operations.
  class DataCatalog::Models::CreateConnectionDetails
    # A description of the connection.
    # @return [String]
    attr_accessor :description

    # **[Required]** A user-friendly display name. Does not have to be unique, and it's changeable.
    # Avoid entering confidential information.
    #
    # @return [String]
    attr_accessor :display_name

    # **[Required]** The key of the object type. Type key's can be found via the '/types' endpoint.
    # @return [String]
    attr_accessor :type_key

    # The list of customized properties along with the values for this object
    # @return [Array<OCI::DataCatalog::Models::CustomPropertySetUsage>]
    attr_accessor :custom_property_members

    # **[Required]** A map of maps that contains the properties which are specific to the connection type. Each connection type
    # definition defines it's set of required and optional properties. The map keys are category names and the
    # values are maps of property name to property value. Every property is contained inside of a category. Most
    # connections have required properties within the \"default\" category. To determine the set of optional and
    # required properties for a connection type, a query can be done on '/types?type=connection' that returns a
    # collection of all connection types. The appropriate connection type, which will include definitions of all
    # of it's properties, can be identified from this collection.
    # Example: `{\"properties\": { \"default\": { \"username\": \"user1\"}}}`
    #
    # @return [Hash<String, Hash<String, String>>]
    attr_accessor :properties

    # A map of maps that contains the encrypted values for sensitive properties which are specific to the
    # connection type. Each connection type definition defines it's set of required and optional properties.
    # The map keys are category names and the values are maps of property name to property value. Every property is
    # contained inside of a category. Most connections have required properties within the \"default\" category.
    # To determine the set of optional and required properties for a connection type, a query can be done
    # on '/types?type=connection' that returns a collection of all connection types. The appropriate connection
    # type, which will include definitions of all of it's properties, can be identified from this collection.
    # Example: `{\"encProperties\": { \"default\": { \"password\": \"pwd\"}}}`
    #
    # @return [Hash<String, Hash<String, String>>]
    attr_accessor :enc_properties

    # Indicates whether this connection is the default connection. The first connection of a data asset defaults
    # to being the default, subsequent connections default to not being the default. If a default connection already
    # exists, then trying to create a connection as the default will fail. In this case the default connection would
    # need to be updated not to be the default and then the new connection can then be created as the default.
    #
    # @return [BOOLEAN]
    attr_accessor :is_default

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'description': :'description',
        'display_name': :'displayName',
        'type_key': :'typeKey',
        'custom_property_members': :'customPropertyMembers',
        'properties': :'properties',
        'enc_properties': :'encProperties',
        'is_default': :'isDefault'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'description': :'String',
        'display_name': :'String',
        'type_key': :'String',
        'custom_property_members': :'Array<OCI::DataCatalog::Models::CustomPropertySetUsage>',
        'properties': :'Hash<String, Hash<String, String>>',
        'enc_properties': :'Hash<String, Hash<String, String>>',
        'is_default': :'BOOLEAN'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :type_key The value to assign to the {#type_key} property
    # @option attributes [Array<OCI::DataCatalog::Models::CustomPropertySetUsage>] :custom_property_members The value to assign to the {#custom_property_members} property
    # @option attributes [Hash<String, Hash<String, String>>] :properties The value to assign to the {#properties} property
    # @option attributes [Hash<String, Hash<String, String>>] :enc_properties The value to assign to the {#enc_properties} property
    # @option attributes [BOOLEAN] :is_default The value to assign to the {#is_default} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.description = attributes[:'description'] if attributes[:'description']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.type_key = attributes[:'typeKey'] if attributes[:'typeKey']

      raise 'You cannot provide both :typeKey and :type_key' if attributes.key?(:'typeKey') && attributes.key?(:'type_key')

      self.type_key = attributes[:'type_key'] if attributes[:'type_key']

      self.custom_property_members = attributes[:'customPropertyMembers'] if attributes[:'customPropertyMembers']

      raise 'You cannot provide both :customPropertyMembers and :custom_property_members' if attributes.key?(:'customPropertyMembers') && attributes.key?(:'custom_property_members')

      self.custom_property_members = attributes[:'custom_property_members'] if attributes[:'custom_property_members']

      self.properties = attributes[:'properties'] if attributes[:'properties']

      self.enc_properties = attributes[:'encProperties'] if attributes[:'encProperties']

      raise 'You cannot provide both :encProperties and :enc_properties' if attributes.key?(:'encProperties') && attributes.key?(:'enc_properties')

      self.enc_properties = attributes[:'enc_properties'] if attributes[:'enc_properties']

      self.is_default = attributes[:'isDefault'] unless attributes[:'isDefault'].nil?

      raise 'You cannot provide both :isDefault and :is_default' if attributes.key?(:'isDefault') && attributes.key?(:'is_default')

      self.is_default = attributes[:'is_default'] unless attributes[:'is_default'].nil?
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        description == other.description &&
        display_name == other.display_name &&
        type_key == other.type_key &&
        custom_property_members == other.custom_property_members &&
        properties == other.properties &&
        enc_properties == other.enc_properties &&
        is_default == other.is_default
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
      [description, display_name, type_key, custom_property_members, properties, enc_properties, is_default].hash
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
