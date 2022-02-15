# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Represents an audit policy relevant for the target database.The audit policy could be in any one of the following 3 states in the target database
  # 1) Created and enabled
  # 2) Created but not enabled
  # 3) Not created
  # For more details on relevant audit policies for the target database, refer to [documentation](https://docs.oracle.com/en/cloud/paas/data-safe/udscs/audit-policies.html#GUID-361A9A9A-7C21-4F5A-8945-9B3A0C472827).
  #
  class DataSafe::Models::AuditSpecification
    AUDIT_POLICY_CATEGORY_ENUM = [
      AUDIT_POLICY_CATEGORY_BASIC_ACTIVITY = 'BASIC_ACTIVITY'.freeze,
      AUDIT_POLICY_CATEGORY_ADMIN_USER_ACTIVITY = 'ADMIN_USER_ACTIVITY'.freeze,
      AUDIT_POLICY_CATEGORY_USER_ACTIVITY = 'USER_ACTIVITY'.freeze,
      AUDIT_POLICY_CATEGORY_ORACLE_PREDEFINED = 'ORACLE_PREDEFINED'.freeze,
      AUDIT_POLICY_CATEGORY_COMPLIANCE_STANDARD = 'COMPLIANCE_STANDARD'.freeze,
      AUDIT_POLICY_CATEGORY_CUSTOM = 'CUSTOM'.freeze,
      AUDIT_POLICY_CATEGORY_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    ENABLE_STATUS_ENUM = [
      ENABLE_STATUS_ENABLED = 'ENABLED'.freeze,
      ENABLE_STATUS_DISABLED = 'DISABLED'.freeze,
      ENABLE_STATUS_PARTIALLY_ENABLED = 'PARTIALLY_ENABLED'.freeze,
      ENABLE_STATUS_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    ENABLED_ENTITIES_ENUM = [
      ENABLED_ENTITIES_ALL_USERS = 'ALL_USERS'.freeze,
      ENABLED_ENTITIES_INCLUDE_USERS = 'INCLUDE_USERS'.freeze,
      ENABLED_ENTITIES_INCLUDE_ROLES = 'INCLUDE_ROLES'.freeze,
      ENABLED_ENTITIES_EXCLUDE_USERS = 'EXCLUDE_USERS'.freeze,
      ENABLED_ENTITIES_INCLUDE_USERS_ROLES = 'INCLUDE_USERS_ROLES'.freeze,
      ENABLED_ENTITIES_DISABLED = 'DISABLED'.freeze,
      ENABLED_ENTITIES_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** Indicates the audit policy name. Refer to the [documentation](https://docs.oracle.com/en/cloud/paas/data-safe/udscs/audit-policies.html#GUID-361A9A9A-7C21-4F5A-8945-9B3A0C472827) for seeded audit policy names. For custom policies, refer to the user-defined policy name created in the target database.
    #
    # @return [String]
    attr_accessor :audit_policy_name

    # **[Required]** Indicates the names of corresponding database policy ( or policies) in the target database.
    # @return [Array<String>]
    attr_accessor :database_policy_names

    # **[Required]** The category to which the audit policy belongs.
    # @return [String]
    attr_reader :audit_policy_category

    # **[Required]** Indicates whether the policy has been enabled, disabled or partially enabled in the target database. The status is PARTIALLY_ENABLED if any of the constituent database audit policies is not enabled.
    # @return [String]
    attr_reader :enable_status

    # Provides information about the policy that has been only partially enabled.
    # @return [String]
    attr_accessor :partially_enabled_msg

    # **[Required]** Indicates whether the policy by default is enabled for all users with no flexibility to alter the enablement conditions.
    # @return [BOOLEAN]
    attr_accessor :is_enabled_for_all_users

    # **[Required]** Indicates whether the audit policy is available for provisioning/ de-provisioning from Oracle Data Safe, or is only available for displaying the current provisioning status from the target.
    # @return [BOOLEAN]
    attr_accessor :is_view_only

    # **[Required]** Indicates whether the audit policy is one of the predefined policies provided by Oracle Database.
    # @return [BOOLEAN]
    attr_accessor :is_seeded_in_target

    # **[Required]** Indicates whether the audit policy is one of the seeded policies provided by Oracle Data Safe.
    # @return [BOOLEAN]
    attr_accessor :is_seeded_in_data_safe

    # **[Required]** Indicates whether the policy is already created on the target database.
    # @return [BOOLEAN]
    attr_accessor :is_created

    # **[Required]** Indicates on whom the audit policy is enabled.
    # @return [String]
    attr_reader :enabled_entities

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'audit_policy_name': :'auditPolicyName',
        'database_policy_names': :'databasePolicyNames',
        'audit_policy_category': :'auditPolicyCategory',
        'enable_status': :'enableStatus',
        'partially_enabled_msg': :'partiallyEnabledMsg',
        'is_enabled_for_all_users': :'isEnabledForAllUsers',
        'is_view_only': :'isViewOnly',
        'is_seeded_in_target': :'isSeededInTarget',
        'is_seeded_in_data_safe': :'isSeededInDataSafe',
        'is_created': :'isCreated',
        'enabled_entities': :'enabledEntities'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'audit_policy_name': :'String',
        'database_policy_names': :'Array<String>',
        'audit_policy_category': :'String',
        'enable_status': :'String',
        'partially_enabled_msg': :'String',
        'is_enabled_for_all_users': :'BOOLEAN',
        'is_view_only': :'BOOLEAN',
        'is_seeded_in_target': :'BOOLEAN',
        'is_seeded_in_data_safe': :'BOOLEAN',
        'is_created': :'BOOLEAN',
        'enabled_entities': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :audit_policy_name The value to assign to the {#audit_policy_name} property
    # @option attributes [Array<String>] :database_policy_names The value to assign to the {#database_policy_names} property
    # @option attributes [String] :audit_policy_category The value to assign to the {#audit_policy_category} property
    # @option attributes [String] :enable_status The value to assign to the {#enable_status} property
    # @option attributes [String] :partially_enabled_msg The value to assign to the {#partially_enabled_msg} property
    # @option attributes [BOOLEAN] :is_enabled_for_all_users The value to assign to the {#is_enabled_for_all_users} property
    # @option attributes [BOOLEAN] :is_view_only The value to assign to the {#is_view_only} property
    # @option attributes [BOOLEAN] :is_seeded_in_target The value to assign to the {#is_seeded_in_target} property
    # @option attributes [BOOLEAN] :is_seeded_in_data_safe The value to assign to the {#is_seeded_in_data_safe} property
    # @option attributes [BOOLEAN] :is_created The value to assign to the {#is_created} property
    # @option attributes [String] :enabled_entities The value to assign to the {#enabled_entities} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.audit_policy_name = attributes[:'auditPolicyName'] if attributes[:'auditPolicyName']

      raise 'You cannot provide both :auditPolicyName and :audit_policy_name' if attributes.key?(:'auditPolicyName') && attributes.key?(:'audit_policy_name')

      self.audit_policy_name = attributes[:'audit_policy_name'] if attributes[:'audit_policy_name']

      self.database_policy_names = attributes[:'databasePolicyNames'] if attributes[:'databasePolicyNames']

      raise 'You cannot provide both :databasePolicyNames and :database_policy_names' if attributes.key?(:'databasePolicyNames') && attributes.key?(:'database_policy_names')

      self.database_policy_names = attributes[:'database_policy_names'] if attributes[:'database_policy_names']

      self.audit_policy_category = attributes[:'auditPolicyCategory'] if attributes[:'auditPolicyCategory']

      raise 'You cannot provide both :auditPolicyCategory and :audit_policy_category' if attributes.key?(:'auditPolicyCategory') && attributes.key?(:'audit_policy_category')

      self.audit_policy_category = attributes[:'audit_policy_category'] if attributes[:'audit_policy_category']

      self.enable_status = attributes[:'enableStatus'] if attributes[:'enableStatus']

      raise 'You cannot provide both :enableStatus and :enable_status' if attributes.key?(:'enableStatus') && attributes.key?(:'enable_status')

      self.enable_status = attributes[:'enable_status'] if attributes[:'enable_status']

      self.partially_enabled_msg = attributes[:'partiallyEnabledMsg'] if attributes[:'partiallyEnabledMsg']

      raise 'You cannot provide both :partiallyEnabledMsg and :partially_enabled_msg' if attributes.key?(:'partiallyEnabledMsg') && attributes.key?(:'partially_enabled_msg')

      self.partially_enabled_msg = attributes[:'partially_enabled_msg'] if attributes[:'partially_enabled_msg']

      self.is_enabled_for_all_users = attributes[:'isEnabledForAllUsers'] unless attributes[:'isEnabledForAllUsers'].nil?

      raise 'You cannot provide both :isEnabledForAllUsers and :is_enabled_for_all_users' if attributes.key?(:'isEnabledForAllUsers') && attributes.key?(:'is_enabled_for_all_users')

      self.is_enabled_for_all_users = attributes[:'is_enabled_for_all_users'] unless attributes[:'is_enabled_for_all_users'].nil?

      self.is_view_only = attributes[:'isViewOnly'] unless attributes[:'isViewOnly'].nil?

      raise 'You cannot provide both :isViewOnly and :is_view_only' if attributes.key?(:'isViewOnly') && attributes.key?(:'is_view_only')

      self.is_view_only = attributes[:'is_view_only'] unless attributes[:'is_view_only'].nil?

      self.is_seeded_in_target = attributes[:'isSeededInTarget'] unless attributes[:'isSeededInTarget'].nil?

      raise 'You cannot provide both :isSeededInTarget and :is_seeded_in_target' if attributes.key?(:'isSeededInTarget') && attributes.key?(:'is_seeded_in_target')

      self.is_seeded_in_target = attributes[:'is_seeded_in_target'] unless attributes[:'is_seeded_in_target'].nil?

      self.is_seeded_in_data_safe = attributes[:'isSeededInDataSafe'] unless attributes[:'isSeededInDataSafe'].nil?

      raise 'You cannot provide both :isSeededInDataSafe and :is_seeded_in_data_safe' if attributes.key?(:'isSeededInDataSafe') && attributes.key?(:'is_seeded_in_data_safe')

      self.is_seeded_in_data_safe = attributes[:'is_seeded_in_data_safe'] unless attributes[:'is_seeded_in_data_safe'].nil?

      self.is_created = attributes[:'isCreated'] unless attributes[:'isCreated'].nil?

      raise 'You cannot provide both :isCreated and :is_created' if attributes.key?(:'isCreated') && attributes.key?(:'is_created')

      self.is_created = attributes[:'is_created'] unless attributes[:'is_created'].nil?

      self.enabled_entities = attributes[:'enabledEntities'] if attributes[:'enabledEntities']

      raise 'You cannot provide both :enabledEntities and :enabled_entities' if attributes.key?(:'enabledEntities') && attributes.key?(:'enabled_entities')

      self.enabled_entities = attributes[:'enabled_entities'] if attributes[:'enabled_entities']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] audit_policy_category Object to be assigned
    def audit_policy_category=(audit_policy_category)
      # rubocop:disable Style/ConditionalAssignment
      if audit_policy_category && !AUDIT_POLICY_CATEGORY_ENUM.include?(audit_policy_category)
        OCI.logger.debug("Unknown value for 'audit_policy_category' [" + audit_policy_category + "]. Mapping to 'AUDIT_POLICY_CATEGORY_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @audit_policy_category = AUDIT_POLICY_CATEGORY_UNKNOWN_ENUM_VALUE
      else
        @audit_policy_category = audit_policy_category
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enable_status Object to be assigned
    def enable_status=(enable_status)
      # rubocop:disable Style/ConditionalAssignment
      if enable_status && !ENABLE_STATUS_ENUM.include?(enable_status)
        OCI.logger.debug("Unknown value for 'enable_status' [" + enable_status + "]. Mapping to 'ENABLE_STATUS_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @enable_status = ENABLE_STATUS_UNKNOWN_ENUM_VALUE
      else
        @enable_status = enable_status
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enabled_entities Object to be assigned
    def enabled_entities=(enabled_entities)
      # rubocop:disable Style/ConditionalAssignment
      if enabled_entities && !ENABLED_ENTITIES_ENUM.include?(enabled_entities)
        OCI.logger.debug("Unknown value for 'enabled_entities' [" + enabled_entities + "]. Mapping to 'ENABLED_ENTITIES_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @enabled_entities = ENABLED_ENTITIES_UNKNOWN_ENUM_VALUE
      else
        @enabled_entities = enabled_entities
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        audit_policy_name == other.audit_policy_name &&
        database_policy_names == other.database_policy_names &&
        audit_policy_category == other.audit_policy_category &&
        enable_status == other.enable_status &&
        partially_enabled_msg == other.partially_enabled_msg &&
        is_enabled_for_all_users == other.is_enabled_for_all_users &&
        is_view_only == other.is_view_only &&
        is_seeded_in_target == other.is_seeded_in_target &&
        is_seeded_in_data_safe == other.is_seeded_in_data_safe &&
        is_created == other.is_created &&
        enabled_entities == other.enabled_entities
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
      [audit_policy_name, database_policy_names, audit_policy_category, enable_status, partially_enabled_msg, is_enabled_for_all_users, is_view_only, is_seeded_in_target, is_seeded_in_data_safe, is_created, enabled_entities].hash
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
