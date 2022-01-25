# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require_relative 'create_db_home_base'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Note that a valid `vmClusterId` value must be supplied for the `CreateDbHomeWithVmClusterId` API operation to successfully complete.
  #
  class Database::Models::CreateDbHomeWithVmClusterIdDetails < Database::Models::CreateDbHomeBase
    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the VM cluster.
    # @return [String]
    attr_accessor :vm_cluster_id

    # A valid Oracle Database version. To get a list of supported versions, use the {#list_db_versions list_db_versions} operation.
    # @return [String]
    attr_accessor :db_version

    # @return [OCI::Database::Models::CreateDatabaseDetails]
    attr_accessor :database

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'displayName',
        'kms_key_id': :'kmsKeyId',
        'kms_key_version_id': :'kmsKeyVersionId',
        'database_software_image_id': :'databaseSoftwareImageId',
        'freeform_tags': :'freeformTags',
        'defined_tags': :'definedTags',
        'source': :'source',
        'is_desupported_version': :'isDesupportedVersion',
        'vm_cluster_id': :'vmClusterId',
        'db_version': :'dbVersion',
        'database': :'database'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'String',
        'kms_key_id': :'String',
        'kms_key_version_id': :'String',
        'database_software_image_id': :'String',
        'freeform_tags': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>',
        'source': :'String',
        'is_desupported_version': :'BOOLEAN',
        'vm_cluster_id': :'String',
        'db_version': :'String',
        'database': :'OCI::Database::Models::CreateDatabaseDetails'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :display_name The value to assign to the {OCI::Database::Models::CreateDbHomeBase#display_name #display_name} proprety
    # @option attributes [String] :kms_key_id The value to assign to the {OCI::Database::Models::CreateDbHomeBase#kms_key_id #kms_key_id} proprety
    # @option attributes [String] :kms_key_version_id The value to assign to the {OCI::Database::Models::CreateDbHomeBase#kms_key_version_id #kms_key_version_id} proprety
    # @option attributes [String] :database_software_image_id The value to assign to the {OCI::Database::Models::CreateDbHomeBase#database_software_image_id #database_software_image_id} proprety
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {OCI::Database::Models::CreateDbHomeBase#freeform_tags #freeform_tags} proprety
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {OCI::Database::Models::CreateDbHomeBase#defined_tags #defined_tags} proprety
    # @option attributes [BOOLEAN] :is_desupported_version The value to assign to the {OCI::Database::Models::CreateDbHomeBase#is_desupported_version #is_desupported_version} proprety
    # @option attributes [String] :vm_cluster_id The value to assign to the {#vm_cluster_id} property
    # @option attributes [String] :db_version The value to assign to the {#db_version} property
    # @option attributes [OCI::Database::Models::CreateDatabaseDetails] :database The value to assign to the {#database} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes['source'] = 'VM_CLUSTER_NEW'

      super(attributes)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.vm_cluster_id = attributes[:'vmClusterId'] if attributes[:'vmClusterId']

      raise 'You cannot provide both :vmClusterId and :vm_cluster_id' if attributes.key?(:'vmClusterId') && attributes.key?(:'vm_cluster_id')

      self.vm_cluster_id = attributes[:'vm_cluster_id'] if attributes[:'vm_cluster_id']

      self.db_version = attributes[:'dbVersion'] if attributes[:'dbVersion']

      raise 'You cannot provide both :dbVersion and :db_version' if attributes.key?(:'dbVersion') && attributes.key?(:'db_version')

      self.db_version = attributes[:'db_version'] if attributes[:'db_version']

      self.database = attributes[:'database'] if attributes[:'database']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        display_name == other.display_name &&
        kms_key_id == other.kms_key_id &&
        kms_key_version_id == other.kms_key_version_id &&
        database_software_image_id == other.database_software_image_id &&
        freeform_tags == other.freeform_tags &&
        defined_tags == other.defined_tags &&
        source == other.source &&
        is_desupported_version == other.is_desupported_version &&
        vm_cluster_id == other.vm_cluster_id &&
        db_version == other.db_version &&
        database == other.database
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
      [display_name, kms_key_id, kms_key_version_id, database_software_image_id, freeform_tags, defined_tags, source, is_desupported_version, vm_cluster_id, db_version, database].hash
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
