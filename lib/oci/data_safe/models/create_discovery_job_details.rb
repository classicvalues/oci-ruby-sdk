# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Details to create a new data discovery job.
  class DataSafe::Models::CreateDiscoveryJobDetails
    # The type of the discovery job. It defines the job's scope.
    # NEW identifies new sensitive columns in the target database that are not in the sensitive data model.
    # DELETED identifies columns that are present in the sensitive data model but have been deleted from the target database.
    # MODIFIED identifies columns that are present in the target database as well as the sensitive data model but some of their attributes have been modified.
    # ALL covers all the above three scenarios and reports new, deleted and modified columns.
    #
    # @return [String]
    attr_accessor :discovery_type

    # **[Required]** The OCID of the sensitive data model.
    # @return [String]
    attr_accessor :sensitive_data_model_id

    # **[Required]** The OCID of the compartment where the discovery job resource should be created.
    # @return [String]
    attr_accessor :compartment_id

    # A user-friendly name for the discovery job. Does not have to be unique, and it is changeable. Avoid entering confidential information.
    # @return [String]
    attr_accessor :display_name

    # The schemas to be scanned by the discovery job. If not provided, the schemasForDiscovery attribute of the sensitive
    # data model is used to get the list of schemas.
    #
    # @return [Array<String>]
    attr_accessor :schemas_for_discovery

    # The OCIDs of the sensitive types to be used by the discovery job. If not provided, the sensitiveTypeIdsForDiscovery
    # attribute of the sensitive data model is used to get the list of sensitive types.
    #
    # @return [Array<String>]
    attr_accessor :sensitive_type_ids_for_discovery

    # Indicates if the discovery job should collect and store sample data values for the discovered columns. Sample data
    # helps review the discovered columns and ensure that they actually contain sensitive data. As it collects original
    # data from the target database, it's disabled by default and should be used only if it's acceptable to store sample
    # data in Data Safe's repository in Oracle Cloud. Note that sample data values are not collected for columns with the
    # following data types: LONG, LOB, RAW, XMLTYPE and BFILE.
    #
    # @return [BOOLEAN]
    attr_accessor :is_sample_data_collection_enabled

    # Indicates if the discovery job should identify potential application-level (non-dictionary) referential relationships
    # between columns. Note that data discovery automatically identifies and adds database-level (dictionary-defined)
    # relationships. This option helps identify application-level relationships that are not defined in the database
    # dictionary, which in turn, helps identify additional sensitive columns and preserve referential integrity during
    # data masking. It's disabled by default and should be used only if there is a need to identify application-level
    # relationships.
    #
    # @return [BOOLEAN]
    attr_accessor :is_app_defined_relation_discovery_enabled

    # Indicates if all the schemas should be scanned by the discovery job. If it's set to true, the schemasForDiscovery
    # attribute is ignored and all schemas are used for data discovery. If both attributes are not provided, the configuration
    # from the sensitive data model is used.
    #
    # @return [BOOLEAN]
    attr_accessor :is_include_all_schemas

    # Indicates if all the existing sensitive types should be used by the discovery job. If it's set to true, the
    # sensitiveTypeIdsForDiscovery attribute is ignored and all sensitive types are used for data discovery. If both
    # attributes are not provided, the configuration from the sensitive data model is used.
    #
    # @return [BOOLEAN]
    attr_accessor :is_include_all_sensitive_types

    # Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)
    #
    # Example: `{\"Department\": \"Finance\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)
    #
    # Example: `{\"Operations\": {\"CostCenter\": \"42\"}}`
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'discovery_type': :'discoveryType',
        'sensitive_data_model_id': :'sensitiveDataModelId',
        'compartment_id': :'compartmentId',
        'display_name': :'displayName',
        'schemas_for_discovery': :'schemasForDiscovery',
        'sensitive_type_ids_for_discovery': :'sensitiveTypeIdsForDiscovery',
        'is_sample_data_collection_enabled': :'isSampleDataCollectionEnabled',
        'is_app_defined_relation_discovery_enabled': :'isAppDefinedRelationDiscoveryEnabled',
        'is_include_all_schemas': :'isIncludeAllSchemas',
        'is_include_all_sensitive_types': :'isIncludeAllSensitiveTypes',
        'freeform_tags': :'freeformTags',
        'defined_tags': :'definedTags'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'discovery_type': :'String',
        'sensitive_data_model_id': :'String',
        'compartment_id': :'String',
        'display_name': :'String',
        'schemas_for_discovery': :'Array<String>',
        'sensitive_type_ids_for_discovery': :'Array<String>',
        'is_sample_data_collection_enabled': :'BOOLEAN',
        'is_app_defined_relation_discovery_enabled': :'BOOLEAN',
        'is_include_all_schemas': :'BOOLEAN',
        'is_include_all_sensitive_types': :'BOOLEAN',
        'freeform_tags': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :discovery_type The value to assign to the {#discovery_type} property
    # @option attributes [String] :sensitive_data_model_id The value to assign to the {#sensitive_data_model_id} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [Array<String>] :schemas_for_discovery The value to assign to the {#schemas_for_discovery} property
    # @option attributes [Array<String>] :sensitive_type_ids_for_discovery The value to assign to the {#sensitive_type_ids_for_discovery} property
    # @option attributes [BOOLEAN] :is_sample_data_collection_enabled The value to assign to the {#is_sample_data_collection_enabled} property
    # @option attributes [BOOLEAN] :is_app_defined_relation_discovery_enabled The value to assign to the {#is_app_defined_relation_discovery_enabled} property
    # @option attributes [BOOLEAN] :is_include_all_schemas The value to assign to the {#is_include_all_schemas} property
    # @option attributes [BOOLEAN] :is_include_all_sensitive_types The value to assign to the {#is_include_all_sensitive_types} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.discovery_type = attributes[:'discoveryType'] if attributes[:'discoveryType']
      self.discovery_type = "ALL" if discovery_type.nil? && !attributes.key?(:'discoveryType') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :discoveryType and :discovery_type' if attributes.key?(:'discoveryType') && attributes.key?(:'discovery_type')

      self.discovery_type = attributes[:'discovery_type'] if attributes[:'discovery_type']
      self.discovery_type = "ALL" if discovery_type.nil? && !attributes.key?(:'discoveryType') && !attributes.key?(:'discovery_type') # rubocop:disable Style/StringLiterals

      self.sensitive_data_model_id = attributes[:'sensitiveDataModelId'] if attributes[:'sensitiveDataModelId']

      raise 'You cannot provide both :sensitiveDataModelId and :sensitive_data_model_id' if attributes.key?(:'sensitiveDataModelId') && attributes.key?(:'sensitive_data_model_id')

      self.sensitive_data_model_id = attributes[:'sensitive_data_model_id'] if attributes[:'sensitive_data_model_id']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.schemas_for_discovery = attributes[:'schemasForDiscovery'] if attributes[:'schemasForDiscovery']

      raise 'You cannot provide both :schemasForDiscovery and :schemas_for_discovery' if attributes.key?(:'schemasForDiscovery') && attributes.key?(:'schemas_for_discovery')

      self.schemas_for_discovery = attributes[:'schemas_for_discovery'] if attributes[:'schemas_for_discovery']

      self.sensitive_type_ids_for_discovery = attributes[:'sensitiveTypeIdsForDiscovery'] if attributes[:'sensitiveTypeIdsForDiscovery']

      raise 'You cannot provide both :sensitiveTypeIdsForDiscovery and :sensitive_type_ids_for_discovery' if attributes.key?(:'sensitiveTypeIdsForDiscovery') && attributes.key?(:'sensitive_type_ids_for_discovery')

      self.sensitive_type_ids_for_discovery = attributes[:'sensitive_type_ids_for_discovery'] if attributes[:'sensitive_type_ids_for_discovery']

      self.is_sample_data_collection_enabled = attributes[:'isSampleDataCollectionEnabled'] unless attributes[:'isSampleDataCollectionEnabled'].nil?
      self.is_sample_data_collection_enabled = false if is_sample_data_collection_enabled.nil? && !attributes.key?(:'isSampleDataCollectionEnabled') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isSampleDataCollectionEnabled and :is_sample_data_collection_enabled' if attributes.key?(:'isSampleDataCollectionEnabled') && attributes.key?(:'is_sample_data_collection_enabled')

      self.is_sample_data_collection_enabled = attributes[:'is_sample_data_collection_enabled'] unless attributes[:'is_sample_data_collection_enabled'].nil?
      self.is_sample_data_collection_enabled = false if is_sample_data_collection_enabled.nil? && !attributes.key?(:'isSampleDataCollectionEnabled') && !attributes.key?(:'is_sample_data_collection_enabled') # rubocop:disable Style/StringLiterals

      self.is_app_defined_relation_discovery_enabled = attributes[:'isAppDefinedRelationDiscoveryEnabled'] unless attributes[:'isAppDefinedRelationDiscoveryEnabled'].nil?
      self.is_app_defined_relation_discovery_enabled = false if is_app_defined_relation_discovery_enabled.nil? && !attributes.key?(:'isAppDefinedRelationDiscoveryEnabled') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isAppDefinedRelationDiscoveryEnabled and :is_app_defined_relation_discovery_enabled' if attributes.key?(:'isAppDefinedRelationDiscoveryEnabled') && attributes.key?(:'is_app_defined_relation_discovery_enabled')

      self.is_app_defined_relation_discovery_enabled = attributes[:'is_app_defined_relation_discovery_enabled'] unless attributes[:'is_app_defined_relation_discovery_enabled'].nil?
      self.is_app_defined_relation_discovery_enabled = false if is_app_defined_relation_discovery_enabled.nil? && !attributes.key?(:'isAppDefinedRelationDiscoveryEnabled') && !attributes.key?(:'is_app_defined_relation_discovery_enabled') # rubocop:disable Style/StringLiterals

      self.is_include_all_schemas = attributes[:'isIncludeAllSchemas'] unless attributes[:'isIncludeAllSchemas'].nil?
      self.is_include_all_schemas = false if is_include_all_schemas.nil? && !attributes.key?(:'isIncludeAllSchemas') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isIncludeAllSchemas and :is_include_all_schemas' if attributes.key?(:'isIncludeAllSchemas') && attributes.key?(:'is_include_all_schemas')

      self.is_include_all_schemas = attributes[:'is_include_all_schemas'] unless attributes[:'is_include_all_schemas'].nil?
      self.is_include_all_schemas = false if is_include_all_schemas.nil? && !attributes.key?(:'isIncludeAllSchemas') && !attributes.key?(:'is_include_all_schemas') # rubocop:disable Style/StringLiterals

      self.is_include_all_sensitive_types = attributes[:'isIncludeAllSensitiveTypes'] unless attributes[:'isIncludeAllSensitiveTypes'].nil?
      self.is_include_all_sensitive_types = false if is_include_all_sensitive_types.nil? && !attributes.key?(:'isIncludeAllSensitiveTypes') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isIncludeAllSensitiveTypes and :is_include_all_sensitive_types' if attributes.key?(:'isIncludeAllSensitiveTypes') && attributes.key?(:'is_include_all_sensitive_types')

      self.is_include_all_sensitive_types = attributes[:'is_include_all_sensitive_types'] unless attributes[:'is_include_all_sensitive_types'].nil?
      self.is_include_all_sensitive_types = false if is_include_all_sensitive_types.nil? && !attributes.key?(:'isIncludeAllSensitiveTypes') && !attributes.key?(:'is_include_all_sensitive_types') # rubocop:disable Style/StringLiterals

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        discovery_type == other.discovery_type &&
        sensitive_data_model_id == other.sensitive_data_model_id &&
        compartment_id == other.compartment_id &&
        display_name == other.display_name &&
        schemas_for_discovery == other.schemas_for_discovery &&
        sensitive_type_ids_for_discovery == other.sensitive_type_ids_for_discovery &&
        is_sample_data_collection_enabled == other.is_sample_data_collection_enabled &&
        is_app_defined_relation_discovery_enabled == other.is_app_defined_relation_discovery_enabled &&
        is_include_all_schemas == other.is_include_all_schemas &&
        is_include_all_sensitive_types == other.is_include_all_sensitive_types &&
        freeform_tags == other.freeform_tags &&
        defined_tags == other.defined_tags
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
      [discovery_type, sensitive_data_model_id, compartment_id, display_name, schemas_for_discovery, sensitive_type_ids_for_discovery, is_sample_data_collection_enabled, is_app_defined_relation_discovery_enabled, is_include_all_schemas, is_include_all_sensitive_types, freeform_tags, defined_tags].hash
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
