# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The summary of information about the database user. It includes details such as user type, account status,
  # last login time, user creation time, authentication type, user profile, and time and date of the last password change.
  # It also contains the user category derived from these user details, as well as granted privileges.
  #
  class DataSafe::Models::UserSummary
    USER_CATEGORY_ENUM = [
      USER_CATEGORY_CRITICAL = 'CRITICAL'.freeze,
      USER_CATEGORY_HIGH = 'HIGH'.freeze,
      USER_CATEGORY_MEDIUM = 'MEDIUM'.freeze,
      USER_CATEGORY_LOW = 'LOW'.freeze,
      USER_CATEGORY_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    ACCOUNT_STATUS_ENUM = [
      ACCOUNT_STATUS_OPEN = 'OPEN'.freeze,
      ACCOUNT_STATUS_LOCKED = 'LOCKED'.freeze,
      ACCOUNT_STATUS_EXPIRED = 'EXPIRED'.freeze,
      ACCOUNT_STATUS_EXPIRED_AND_LOCKED = 'EXPIRED_AND_LOCKED'.freeze,
      ACCOUNT_STATUS_NONE = 'NONE'.freeze,
      ACCOUNT_STATUS_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    AUTHENTICATION_TYPE_ENUM = [
      AUTHENTICATION_TYPE_PASSWORD = 'PASSWORD'.freeze,
      AUTHENTICATION_TYPE_NONE = 'NONE'.freeze,
      AUTHENTICATION_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    USER_TYPES_ENUM = [
      USER_TYPES_ADMIN_PRIVILEGED = 'ADMIN_PRIVILEGED'.freeze,
      USER_TYPES_APPLICATION = 'APPLICATION'.freeze,
      USER_TYPES_PRIVILEGED = 'PRIVILEGED'.freeze,
      USER_TYPES_SCHEMA = 'SCHEMA'.freeze,
      USER_TYPES_NON_PRIVILEGED = 'NON_PRIVILEGED'.freeze,
      USER_TYPES_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    ADMIN_ROLES_ENUM = [
      ADMIN_ROLES_PDB_DBA = 'PDB_DBA'.freeze,
      ADMIN_ROLES_DBA = 'DBA'.freeze,
      ADMIN_ROLES_DV_ADMIN = 'DV_ADMIN'.freeze,
      ADMIN_ROLES_AUDIT_ADMIN = 'AUDIT_ADMIN'.freeze,
      ADMIN_ROLES_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The unique user key. This is a system-generated identifier. Use ListUsers to get the user key for a user.
    # @return [String]
    attr_accessor :key

    # **[Required]** The database user name.
    # @return [String]
    attr_accessor :user_name

    # The user category based on the privileges and other details of the user.
    # @return [String]
    attr_reader :user_category

    # The user account status.
    # @return [String]
    attr_reader :account_status

    # **[Required]** The OCID of the target database.
    # @return [String]
    attr_accessor :target_id

    # The date and time when the user last logged in, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).
    # @return [DateTime]
    attr_accessor :time_last_login

    # The date and time when the user was created in the database, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).
    # @return [DateTime]
    attr_accessor :time_user_created

    # The user authentication method.
    # @return [String]
    attr_reader :authentication_type

    # The user profile name.
    # @return [String]
    attr_accessor :user_profile

    # The date and time when the user password was last changed, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).
    # @return [DateTime]
    attr_accessor :time_password_changed

    # The user type, which can be a combination of the following:
    #
    # 'Admin Privileged': The user has administrative privileges.
    # 'Application': The user is an Oracle E-Business Suite Applications (EBS) or Fusion Applications (FA) user.
    # 'Privileged': The user is a privileged user.
    # 'Schema': The user is EXPIRED & LOCKED / EXPIRED / LOCKED, or a schema-only account (authentication type is NONE).
    # 'Non-privileged': The user is a non-privileged user.
    #
    # @return [Array<String>]
    attr_reader :user_types

    # The admin roles granted to the user.
    # @return [Array<String>]
    attr_reader :admin_roles

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'key',
        'user_name': :'userName',
        'user_category': :'userCategory',
        'account_status': :'accountStatus',
        'target_id': :'targetId',
        'time_last_login': :'timeLastLogin',
        'time_user_created': :'timeUserCreated',
        'authentication_type': :'authenticationType',
        'user_profile': :'userProfile',
        'time_password_changed': :'timePasswordChanged',
        'user_types': :'userTypes',
        'admin_roles': :'adminRoles'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'String',
        'user_name': :'String',
        'user_category': :'String',
        'account_status': :'String',
        'target_id': :'String',
        'time_last_login': :'DateTime',
        'time_user_created': :'DateTime',
        'authentication_type': :'String',
        'user_profile': :'String',
        'time_password_changed': :'DateTime',
        'user_types': :'Array<String>',
        'admin_roles': :'Array<String>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :key The value to assign to the {#key} property
    # @option attributes [String] :user_name The value to assign to the {#user_name} property
    # @option attributes [String] :user_category The value to assign to the {#user_category} property
    # @option attributes [String] :account_status The value to assign to the {#account_status} property
    # @option attributes [String] :target_id The value to assign to the {#target_id} property
    # @option attributes [DateTime] :time_last_login The value to assign to the {#time_last_login} property
    # @option attributes [DateTime] :time_user_created The value to assign to the {#time_user_created} property
    # @option attributes [String] :authentication_type The value to assign to the {#authentication_type} property
    # @option attributes [String] :user_profile The value to assign to the {#user_profile} property
    # @option attributes [DateTime] :time_password_changed The value to assign to the {#time_password_changed} property
    # @option attributes [Array<String>] :user_types The value to assign to the {#user_types} property
    # @option attributes [Array<String>] :admin_roles The value to assign to the {#admin_roles} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.key = attributes[:'key'] if attributes[:'key']

      self.user_name = attributes[:'userName'] if attributes[:'userName']

      raise 'You cannot provide both :userName and :user_name' if attributes.key?(:'userName') && attributes.key?(:'user_name')

      self.user_name = attributes[:'user_name'] if attributes[:'user_name']

      self.user_category = attributes[:'userCategory'] if attributes[:'userCategory']

      raise 'You cannot provide both :userCategory and :user_category' if attributes.key?(:'userCategory') && attributes.key?(:'user_category')

      self.user_category = attributes[:'user_category'] if attributes[:'user_category']

      self.account_status = attributes[:'accountStatus'] if attributes[:'accountStatus']

      raise 'You cannot provide both :accountStatus and :account_status' if attributes.key?(:'accountStatus') && attributes.key?(:'account_status')

      self.account_status = attributes[:'account_status'] if attributes[:'account_status']

      self.target_id = attributes[:'targetId'] if attributes[:'targetId']

      raise 'You cannot provide both :targetId and :target_id' if attributes.key?(:'targetId') && attributes.key?(:'target_id')

      self.target_id = attributes[:'target_id'] if attributes[:'target_id']

      self.time_last_login = attributes[:'timeLastLogin'] if attributes[:'timeLastLogin']

      raise 'You cannot provide both :timeLastLogin and :time_last_login' if attributes.key?(:'timeLastLogin') && attributes.key?(:'time_last_login')

      self.time_last_login = attributes[:'time_last_login'] if attributes[:'time_last_login']

      self.time_user_created = attributes[:'timeUserCreated'] if attributes[:'timeUserCreated']

      raise 'You cannot provide both :timeUserCreated and :time_user_created' if attributes.key?(:'timeUserCreated') && attributes.key?(:'time_user_created')

      self.time_user_created = attributes[:'time_user_created'] if attributes[:'time_user_created']

      self.authentication_type = attributes[:'authenticationType'] if attributes[:'authenticationType']

      raise 'You cannot provide both :authenticationType and :authentication_type' if attributes.key?(:'authenticationType') && attributes.key?(:'authentication_type')

      self.authentication_type = attributes[:'authentication_type'] if attributes[:'authentication_type']

      self.user_profile = attributes[:'userProfile'] if attributes[:'userProfile']

      raise 'You cannot provide both :userProfile and :user_profile' if attributes.key?(:'userProfile') && attributes.key?(:'user_profile')

      self.user_profile = attributes[:'user_profile'] if attributes[:'user_profile']

      self.time_password_changed = attributes[:'timePasswordChanged'] if attributes[:'timePasswordChanged']

      raise 'You cannot provide both :timePasswordChanged and :time_password_changed' if attributes.key?(:'timePasswordChanged') && attributes.key?(:'time_password_changed')

      self.time_password_changed = attributes[:'time_password_changed'] if attributes[:'time_password_changed']

      self.user_types = attributes[:'userTypes'] if attributes[:'userTypes']

      raise 'You cannot provide both :userTypes and :user_types' if attributes.key?(:'userTypes') && attributes.key?(:'user_types')

      self.user_types = attributes[:'user_types'] if attributes[:'user_types']

      self.admin_roles = attributes[:'adminRoles'] if attributes[:'adminRoles']

      raise 'You cannot provide both :adminRoles and :admin_roles' if attributes.key?(:'adminRoles') && attributes.key?(:'admin_roles')

      self.admin_roles = attributes[:'admin_roles'] if attributes[:'admin_roles']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_category Object to be assigned
    def user_category=(user_category)
      # rubocop:disable Style/ConditionalAssignment
      if user_category && !USER_CATEGORY_ENUM.include?(user_category)
        OCI.logger.debug("Unknown value for 'user_category' [" + user_category + "]. Mapping to 'USER_CATEGORY_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @user_category = USER_CATEGORY_UNKNOWN_ENUM_VALUE
      else
        @user_category = user_category
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_status Object to be assigned
    def account_status=(account_status)
      # rubocop:disable Style/ConditionalAssignment
      if account_status && !ACCOUNT_STATUS_ENUM.include?(account_status)
        OCI.logger.debug("Unknown value for 'account_status' [" + account_status + "]. Mapping to 'ACCOUNT_STATUS_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @account_status = ACCOUNT_STATUS_UNKNOWN_ENUM_VALUE
      else
        @account_status = account_status
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] authentication_type Object to be assigned
    def authentication_type=(authentication_type)
      # rubocop:disable Style/ConditionalAssignment
      if authentication_type && !AUTHENTICATION_TYPE_ENUM.include?(authentication_type)
        OCI.logger.debug("Unknown value for 'authentication_type' [" + authentication_type + "]. Mapping to 'AUTHENTICATION_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @authentication_type = AUTHENTICATION_TYPE_UNKNOWN_ENUM_VALUE
      else
        @authentication_type = authentication_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_types Object to be assigned
    def user_types=(user_types)
      # rubocop:disable Style/ConditionalAssignment
      if user_types.nil?
        @user_types = nil
      else
        @user_types =
          user_types.collect do |item|
            if USER_TYPES_ENUM.include?(item)
              item
            else
              OCI.logger.debug("Unknown value for 'user_types' [#{item}]. Mapping to 'USER_TYPES_UNKNOWN_ENUM_VALUE'") if OCI.logger
              USER_TYPES_UNKNOWN_ENUM_VALUE
            end
          end
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] admin_roles Object to be assigned
    def admin_roles=(admin_roles)
      # rubocop:disable Style/ConditionalAssignment
      if admin_roles.nil?
        @admin_roles = nil
      else
        @admin_roles =
          admin_roles.collect do |item|
            if ADMIN_ROLES_ENUM.include?(item)
              item
            else
              OCI.logger.debug("Unknown value for 'admin_roles' [#{item}]. Mapping to 'ADMIN_ROLES_UNKNOWN_ENUM_VALUE'") if OCI.logger
              ADMIN_ROLES_UNKNOWN_ENUM_VALUE
            end
          end
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
        user_name == other.user_name &&
        user_category == other.user_category &&
        account_status == other.account_status &&
        target_id == other.target_id &&
        time_last_login == other.time_last_login &&
        time_user_created == other.time_user_created &&
        authentication_type == other.authentication_type &&
        user_profile == other.user_profile &&
        time_password_changed == other.time_password_changed &&
        user_types == other.user_types &&
        admin_roles == other.admin_roles
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
      [key, user_name, user_category, account_status, target_id, time_last_login, time_user_created, authentication_type, user_profile, time_password_changed, user_types, admin_roles].hash
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