# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The search result object is the definition of an element that is returned as part of search. It contains basic
  # information about the object such as key, name and description. The search result also contains the list of tags
  # for each object along with other contextual information like the data asset root, folder, or entity parents.
  #
  class DataCatalog::Models::SearchResult
    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_CREATING = 'CREATING'.freeze,
      LIFECYCLE_STATE_ACTIVE = 'ACTIVE'.freeze,
      LIFECYCLE_STATE_INACTIVE = 'INACTIVE'.freeze,
      LIFECYCLE_STATE_UPDATING = 'UPDATING'.freeze,
      LIFECYCLE_STATE_DELETING = 'DELETING'.freeze,
      LIFECYCLE_STATE_DELETED = 'DELETED'.freeze,
      LIFECYCLE_STATE_FAILED = 'FAILED'.freeze,
      LIFECYCLE_STATE_MOVING = 'MOVING'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # Unique key of the object returned as part of the search result.
    # @return [String]
    attr_accessor :key

    # Name of the object.
    # @return [String]
    attr_accessor :name

    # Detailed description of the object.
    # @return [String]
    attr_accessor :description

    # The date and time the result object was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).
    # Example: `2019-03-25T21:10:29.600Z`
    #
    # @return [DateTime]
    attr_accessor :time_created

    # The date and time the result object was updated, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).
    # Example: `2019-03-25T21:10:29.600Z`
    #
    # @return [DateTime]
    attr_accessor :time_updated

    # Array of the tags associated with this object.
    # @return [Array<OCI::DataCatalog::Models::SearchTagSummary>]
    attr_accessor :tag_summary

    # Array of the terms associated with this object.
    # @return [Array<OCI::DataCatalog::Models::SearchTermSummary>]
    attr_accessor :term_summary

    # Name of the object type.
    # @return [String]
    attr_accessor :type_name

    # Name of the external object type in the host data asset. For example, column, field, table, view, or file.
    # @return [String]
    attr_accessor :external_type_name

    # Data type of the object if the object is an attribute. Null otherwise.
    # @return [String]
    attr_accessor :external_data_type

    # Unique key of the data asset that is the root parent of this object.
    # @return [String]
    attr_accessor :data_asset_key

    # Type name of the data asset. For example, Oracle, MySQL or Oracle Object Storage.
    # @return [String]
    attr_accessor :data_asset_type

    # Name of the data asset that is the root parent of this object.
    # @return [String]
    attr_accessor :data_asset_name

    # Unique key of the folder object if this object is a sub folder, entity, or attribute.
    # @return [String]
    attr_accessor :folder_key

    # Type name of the folder. For example, schema, directory, or topic.
    # @return [String]
    attr_accessor :folder_type

    # Name of the parent folder object if this object is a sub folder, entity, or attribute.
    # @return [String]
    attr_accessor :folder_name

    # Unique key of the entity object if this object is an attribute.
    # @return [String]
    attr_accessor :entitykey

    # Type name of the entity. For example, table, view, external table, file, or object.
    # @return [String]
    attr_accessor :entity_type

    # Name of the parent entity object if this object is an attribute.
    # @return [String]
    attr_accessor :entity_name

    # Unique id of the parent glossary.
    # @return [String]
    attr_accessor :glossary_key

    # Name of the parent glossary if this object is a term.
    # @return [String]
    attr_accessor :glossary_name

    # This terms parent term key. Will be null if the term has no parent term.
    # @return [String]
    attr_accessor :parent_term_key

    # Name of the parent term. Will be null if the term has no parent term.
    # @return [String]
    attr_accessor :parent_term_name

    # OCID of the user who created the resource.
    # @return [String]
    attr_accessor :created_by_id

    # OCID of the user who updated the resource.
    # @return [String]
    attr_accessor :updated_by_id

    # Absolute path of this resource, which could be a term, folder, entity etc, usually resolvable to this resource through a namespace hierarchy.
    # @return [String]
    attr_accessor :path

    # Optional user friendly business name of the data object. If set, this supplements the harvested display name of the object.
    # @return [String]
    attr_accessor :business_name

    # The current state of the data object.
    # @return [String]
    attr_reader :lifecycle_state

    # Type name of the attribute. For example - complex, primitive, or array.
    # @return [String]
    attr_accessor :attribute_type

    # Expression for logical entities against which names of dataObjects will be matched.
    # @return [String]
    attr_accessor :expression

    # Custom properties defined by users.
    # @return [Array<OCI::DataCatalog::Models::FacetedSearchCustomProperty>]
    attr_accessor :custom_properties

    # A map of maps that contains the properties which are specific to the element type in the search result.
    # The map keys are category names and the values are maps of property name to property value. Every property
    # is contained inside of a category. Most element types have required properties within the \"default\" category.
    # Example: `{\"properties\": { \"default\": { \"key1\": \"value1\"}}}`
    #
    # @return [Hash<String, Hash<String, String>>]
    attr_accessor :properties

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'key',
        'name': :'name',
        'description': :'description',
        'time_created': :'timeCreated',
        'time_updated': :'timeUpdated',
        'tag_summary': :'tagSummary',
        'term_summary': :'termSummary',
        'type_name': :'typeName',
        'external_type_name': :'externalTypeName',
        'external_data_type': :'externalDataType',
        'data_asset_key': :'dataAssetKey',
        'data_asset_type': :'dataAssetType',
        'data_asset_name': :'dataAssetName',
        'folder_key': :'folderKey',
        'folder_type': :'folderType',
        'folder_name': :'folderName',
        'entitykey': :'entitykey',
        'entity_type': :'entityType',
        'entity_name': :'entityName',
        'glossary_key': :'glossaryKey',
        'glossary_name': :'glossaryName',
        'parent_term_key': :'parentTermKey',
        'parent_term_name': :'parentTermName',
        'created_by_id': :'createdById',
        'updated_by_id': :'updatedById',
        'path': :'path',
        'business_name': :'businessName',
        'lifecycle_state': :'lifecycleState',
        'attribute_type': :'attributeType',
        'expression': :'expression',
        'custom_properties': :'customProperties',
        'properties': :'properties'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'String',
        'name': :'String',
        'description': :'String',
        'time_created': :'DateTime',
        'time_updated': :'DateTime',
        'tag_summary': :'Array<OCI::DataCatalog::Models::SearchTagSummary>',
        'term_summary': :'Array<OCI::DataCatalog::Models::SearchTermSummary>',
        'type_name': :'String',
        'external_type_name': :'String',
        'external_data_type': :'String',
        'data_asset_key': :'String',
        'data_asset_type': :'String',
        'data_asset_name': :'String',
        'folder_key': :'String',
        'folder_type': :'String',
        'folder_name': :'String',
        'entitykey': :'String',
        'entity_type': :'String',
        'entity_name': :'String',
        'glossary_key': :'String',
        'glossary_name': :'String',
        'parent_term_key': :'String',
        'parent_term_name': :'String',
        'created_by_id': :'String',
        'updated_by_id': :'String',
        'path': :'String',
        'business_name': :'String',
        'lifecycle_state': :'String',
        'attribute_type': :'String',
        'expression': :'String',
        'custom_properties': :'Array<OCI::DataCatalog::Models::FacetedSearchCustomProperty>',
        'properties': :'Hash<String, Hash<String, String>>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :key The value to assign to the {#key} property
    # @option attributes [String] :name The value to assign to the {#name} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [DateTime] :time_updated The value to assign to the {#time_updated} property
    # @option attributes [Array<OCI::DataCatalog::Models::SearchTagSummary>] :tag_summary The value to assign to the {#tag_summary} property
    # @option attributes [Array<OCI::DataCatalog::Models::SearchTermSummary>] :term_summary The value to assign to the {#term_summary} property
    # @option attributes [String] :type_name The value to assign to the {#type_name} property
    # @option attributes [String] :external_type_name The value to assign to the {#external_type_name} property
    # @option attributes [String] :external_data_type The value to assign to the {#external_data_type} property
    # @option attributes [String] :data_asset_key The value to assign to the {#data_asset_key} property
    # @option attributes [String] :data_asset_type The value to assign to the {#data_asset_type} property
    # @option attributes [String] :data_asset_name The value to assign to the {#data_asset_name} property
    # @option attributes [String] :folder_key The value to assign to the {#folder_key} property
    # @option attributes [String] :folder_type The value to assign to the {#folder_type} property
    # @option attributes [String] :folder_name The value to assign to the {#folder_name} property
    # @option attributes [String] :entitykey The value to assign to the {#entitykey} property
    # @option attributes [String] :entity_type The value to assign to the {#entity_type} property
    # @option attributes [String] :entity_name The value to assign to the {#entity_name} property
    # @option attributes [String] :glossary_key The value to assign to the {#glossary_key} property
    # @option attributes [String] :glossary_name The value to assign to the {#glossary_name} property
    # @option attributes [String] :parent_term_key The value to assign to the {#parent_term_key} property
    # @option attributes [String] :parent_term_name The value to assign to the {#parent_term_name} property
    # @option attributes [String] :created_by_id The value to assign to the {#created_by_id} property
    # @option attributes [String] :updated_by_id The value to assign to the {#updated_by_id} property
    # @option attributes [String] :path The value to assign to the {#path} property
    # @option attributes [String] :business_name The value to assign to the {#business_name} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [String] :attribute_type The value to assign to the {#attribute_type} property
    # @option attributes [String] :expression The value to assign to the {#expression} property
    # @option attributes [Array<OCI::DataCatalog::Models::FacetedSearchCustomProperty>] :custom_properties The value to assign to the {#custom_properties} property
    # @option attributes [Hash<String, Hash<String, String>>] :properties The value to assign to the {#properties} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.key = attributes[:'key'] if attributes[:'key']

      self.name = attributes[:'name'] if attributes[:'name']

      self.description = attributes[:'description'] if attributes[:'description']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.time_updated = attributes[:'timeUpdated'] if attributes[:'timeUpdated']

      raise 'You cannot provide both :timeUpdated and :time_updated' if attributes.key?(:'timeUpdated') && attributes.key?(:'time_updated')

      self.time_updated = attributes[:'time_updated'] if attributes[:'time_updated']

      self.tag_summary = attributes[:'tagSummary'] if attributes[:'tagSummary']

      raise 'You cannot provide both :tagSummary and :tag_summary' if attributes.key?(:'tagSummary') && attributes.key?(:'tag_summary')

      self.tag_summary = attributes[:'tag_summary'] if attributes[:'tag_summary']

      self.term_summary = attributes[:'termSummary'] if attributes[:'termSummary']

      raise 'You cannot provide both :termSummary and :term_summary' if attributes.key?(:'termSummary') && attributes.key?(:'term_summary')

      self.term_summary = attributes[:'term_summary'] if attributes[:'term_summary']

      self.type_name = attributes[:'typeName'] if attributes[:'typeName']

      raise 'You cannot provide both :typeName and :type_name' if attributes.key?(:'typeName') && attributes.key?(:'type_name')

      self.type_name = attributes[:'type_name'] if attributes[:'type_name']

      self.external_type_name = attributes[:'externalTypeName'] if attributes[:'externalTypeName']

      raise 'You cannot provide both :externalTypeName and :external_type_name' if attributes.key?(:'externalTypeName') && attributes.key?(:'external_type_name')

      self.external_type_name = attributes[:'external_type_name'] if attributes[:'external_type_name']

      self.external_data_type = attributes[:'externalDataType'] if attributes[:'externalDataType']

      raise 'You cannot provide both :externalDataType and :external_data_type' if attributes.key?(:'externalDataType') && attributes.key?(:'external_data_type')

      self.external_data_type = attributes[:'external_data_type'] if attributes[:'external_data_type']

      self.data_asset_key = attributes[:'dataAssetKey'] if attributes[:'dataAssetKey']

      raise 'You cannot provide both :dataAssetKey and :data_asset_key' if attributes.key?(:'dataAssetKey') && attributes.key?(:'data_asset_key')

      self.data_asset_key = attributes[:'data_asset_key'] if attributes[:'data_asset_key']

      self.data_asset_type = attributes[:'dataAssetType'] if attributes[:'dataAssetType']

      raise 'You cannot provide both :dataAssetType and :data_asset_type' if attributes.key?(:'dataAssetType') && attributes.key?(:'data_asset_type')

      self.data_asset_type = attributes[:'data_asset_type'] if attributes[:'data_asset_type']

      self.data_asset_name = attributes[:'dataAssetName'] if attributes[:'dataAssetName']

      raise 'You cannot provide both :dataAssetName and :data_asset_name' if attributes.key?(:'dataAssetName') && attributes.key?(:'data_asset_name')

      self.data_asset_name = attributes[:'data_asset_name'] if attributes[:'data_asset_name']

      self.folder_key = attributes[:'folderKey'] if attributes[:'folderKey']

      raise 'You cannot provide both :folderKey and :folder_key' if attributes.key?(:'folderKey') && attributes.key?(:'folder_key')

      self.folder_key = attributes[:'folder_key'] if attributes[:'folder_key']

      self.folder_type = attributes[:'folderType'] if attributes[:'folderType']

      raise 'You cannot provide both :folderType and :folder_type' if attributes.key?(:'folderType') && attributes.key?(:'folder_type')

      self.folder_type = attributes[:'folder_type'] if attributes[:'folder_type']

      self.folder_name = attributes[:'folderName'] if attributes[:'folderName']

      raise 'You cannot provide both :folderName and :folder_name' if attributes.key?(:'folderName') && attributes.key?(:'folder_name')

      self.folder_name = attributes[:'folder_name'] if attributes[:'folder_name']

      self.entitykey = attributes[:'entitykey'] if attributes[:'entitykey']

      self.entity_type = attributes[:'entityType'] if attributes[:'entityType']

      raise 'You cannot provide both :entityType and :entity_type' if attributes.key?(:'entityType') && attributes.key?(:'entity_type')

      self.entity_type = attributes[:'entity_type'] if attributes[:'entity_type']

      self.entity_name = attributes[:'entityName'] if attributes[:'entityName']

      raise 'You cannot provide both :entityName and :entity_name' if attributes.key?(:'entityName') && attributes.key?(:'entity_name')

      self.entity_name = attributes[:'entity_name'] if attributes[:'entity_name']

      self.glossary_key = attributes[:'glossaryKey'] if attributes[:'glossaryKey']

      raise 'You cannot provide both :glossaryKey and :glossary_key' if attributes.key?(:'glossaryKey') && attributes.key?(:'glossary_key')

      self.glossary_key = attributes[:'glossary_key'] if attributes[:'glossary_key']

      self.glossary_name = attributes[:'glossaryName'] if attributes[:'glossaryName']

      raise 'You cannot provide both :glossaryName and :glossary_name' if attributes.key?(:'glossaryName') && attributes.key?(:'glossary_name')

      self.glossary_name = attributes[:'glossary_name'] if attributes[:'glossary_name']

      self.parent_term_key = attributes[:'parentTermKey'] if attributes[:'parentTermKey']

      raise 'You cannot provide both :parentTermKey and :parent_term_key' if attributes.key?(:'parentTermKey') && attributes.key?(:'parent_term_key')

      self.parent_term_key = attributes[:'parent_term_key'] if attributes[:'parent_term_key']

      self.parent_term_name = attributes[:'parentTermName'] if attributes[:'parentTermName']

      raise 'You cannot provide both :parentTermName and :parent_term_name' if attributes.key?(:'parentTermName') && attributes.key?(:'parent_term_name')

      self.parent_term_name = attributes[:'parent_term_name'] if attributes[:'parent_term_name']

      self.created_by_id = attributes[:'createdById'] if attributes[:'createdById']

      raise 'You cannot provide both :createdById and :created_by_id' if attributes.key?(:'createdById') && attributes.key?(:'created_by_id')

      self.created_by_id = attributes[:'created_by_id'] if attributes[:'created_by_id']

      self.updated_by_id = attributes[:'updatedById'] if attributes[:'updatedById']

      raise 'You cannot provide both :updatedById and :updated_by_id' if attributes.key?(:'updatedById') && attributes.key?(:'updated_by_id')

      self.updated_by_id = attributes[:'updated_by_id'] if attributes[:'updated_by_id']

      self.path = attributes[:'path'] if attributes[:'path']

      self.business_name = attributes[:'businessName'] if attributes[:'businessName']

      raise 'You cannot provide both :businessName and :business_name' if attributes.key?(:'businessName') && attributes.key?(:'business_name')

      self.business_name = attributes[:'business_name'] if attributes[:'business_name']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.attribute_type = attributes[:'attributeType'] if attributes[:'attributeType']

      raise 'You cannot provide both :attributeType and :attribute_type' if attributes.key?(:'attributeType') && attributes.key?(:'attribute_type')

      self.attribute_type = attributes[:'attribute_type'] if attributes[:'attribute_type']

      self.expression = attributes[:'expression'] if attributes[:'expression']

      self.custom_properties = attributes[:'customProperties'] if attributes[:'customProperties']

      raise 'You cannot provide both :customProperties and :custom_properties' if attributes.key?(:'customProperties') && attributes.key?(:'custom_properties')

      self.custom_properties = attributes[:'custom_properties'] if attributes[:'custom_properties']

      self.properties = attributes[:'properties'] if attributes[:'properties']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lifecycle_state Object to be assigned
    def lifecycle_state=(lifecycle_state)
      # rubocop:disable Style/ConditionalAssignment
      if lifecycle_state && !LIFECYCLE_STATE_ENUM.include?(lifecycle_state)
        OCI.logger.debug("Unknown value for 'lifecycle_state' [" + lifecycle_state + "]. Mapping to 'LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @lifecycle_state = LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE
      else
        @lifecycle_state = lifecycle_state
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        key == other.key &&
        name == other.name &&
        description == other.description &&
        time_created == other.time_created &&
        time_updated == other.time_updated &&
        tag_summary == other.tag_summary &&
        term_summary == other.term_summary &&
        type_name == other.type_name &&
        external_type_name == other.external_type_name &&
        external_data_type == other.external_data_type &&
        data_asset_key == other.data_asset_key &&
        data_asset_type == other.data_asset_type &&
        data_asset_name == other.data_asset_name &&
        folder_key == other.folder_key &&
        folder_type == other.folder_type &&
        folder_name == other.folder_name &&
        entitykey == other.entitykey &&
        entity_type == other.entity_type &&
        entity_name == other.entity_name &&
        glossary_key == other.glossary_key &&
        glossary_name == other.glossary_name &&
        parent_term_key == other.parent_term_key &&
        parent_term_name == other.parent_term_name &&
        created_by_id == other.created_by_id &&
        updated_by_id == other.updated_by_id &&
        path == other.path &&
        business_name == other.business_name &&
        lifecycle_state == other.lifecycle_state &&
        attribute_type == other.attribute_type &&
        expression == other.expression &&
        custom_properties == other.custom_properties &&
        properties == other.properties
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
      [key, name, description, time_created, time_updated, tag_summary, term_summary, type_name, external_type_name, external_data_type, data_asset_key, data_asset_type, data_asset_name, folder_key, folder_type, folder_name, entitykey, entity_type, entity_name, glossary_key, glossary_name, parent_term_key, parent_term_name, created_by_id, updated_by_id, path, business_name, lifecycle_state, attribute_type, expression, custom_properties, properties].hash
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
