# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The details of a particular profile
  #
  class DataSafe::Models::ProfileDetails
    # The number of users using this profile.
    # @return [Integer]
    attr_accessor :num_users

    # The value of the CONNECT_TIME resource parameter.
    # @return [String]
    attr_accessor :connect_time

    # The value of the FAILED_LOGIN_ATTEMPTS password parameter.
    # @return [String]
    attr_accessor :failed_login_attempts

    # The value of the IDLE_TIME resource parameter.
    # @return [String]
    attr_accessor :idle_time

    # The value of the INACTIVE_ACCOUNT_TIME password parameter.
    # @return [String]
    attr_accessor :inactive_account_time

    # The value of the PASSWORD_GRACE_TIME password parameter.
    # @return [String]
    attr_accessor :password_grace_time

    # The value of the PASSWORD_LIFE_TIME password parameter.
    # @return [String]
    attr_accessor :password_life_time

    # The value of the PASSWORD_LOCK_TIME password parameter.
    # @return [String]
    attr_accessor :password_lock_time

    # The value of the PASSWORD_REUSE_TIME password parameter.
    # @return [String]
    attr_accessor :password_reuse_time

    # The value of the PASSWORD_REUSE_MAX resource parameter.
    # @return [String]
    attr_accessor :password_reuse_max

    # The value of the PASSWORD_VERIFY_FUNCTION resource.
    # @return [String]
    attr_accessor :password_verify_function

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'num_users': :'numUsers',
        'connect_time': :'connectTime',
        'failed_login_attempts': :'failedLoginAttempts',
        'idle_time': :'idleTime',
        'inactive_account_time': :'inactiveAccountTime',
        'password_grace_time': :'passwordGraceTime',
        'password_life_time': :'passwordLifeTime',
        'password_lock_time': :'passwordLockTime',
        'password_reuse_time': :'passwordReuseTime',
        'password_reuse_max': :'passwordReuseMax',
        'password_verify_function': :'passwordVerifyFunction'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'num_users': :'Integer',
        'connect_time': :'String',
        'failed_login_attempts': :'String',
        'idle_time': :'String',
        'inactive_account_time': :'String',
        'password_grace_time': :'String',
        'password_life_time': :'String',
        'password_lock_time': :'String',
        'password_reuse_time': :'String',
        'password_reuse_max': :'String',
        'password_verify_function': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [Integer] :num_users The value to assign to the {#num_users} property
    # @option attributes [String] :connect_time The value to assign to the {#connect_time} property
    # @option attributes [String] :failed_login_attempts The value to assign to the {#failed_login_attempts} property
    # @option attributes [String] :idle_time The value to assign to the {#idle_time} property
    # @option attributes [String] :inactive_account_time The value to assign to the {#inactive_account_time} property
    # @option attributes [String] :password_grace_time The value to assign to the {#password_grace_time} property
    # @option attributes [String] :password_life_time The value to assign to the {#password_life_time} property
    # @option attributes [String] :password_lock_time The value to assign to the {#password_lock_time} property
    # @option attributes [String] :password_reuse_time The value to assign to the {#password_reuse_time} property
    # @option attributes [String] :password_reuse_max The value to assign to the {#password_reuse_max} property
    # @option attributes [String] :password_verify_function The value to assign to the {#password_verify_function} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.num_users = attributes[:'numUsers'] if attributes[:'numUsers']

      raise 'You cannot provide both :numUsers and :num_users' if attributes.key?(:'numUsers') && attributes.key?(:'num_users')

      self.num_users = attributes[:'num_users'] if attributes[:'num_users']

      self.connect_time = attributes[:'connectTime'] if attributes[:'connectTime']

      raise 'You cannot provide both :connectTime and :connect_time' if attributes.key?(:'connectTime') && attributes.key?(:'connect_time')

      self.connect_time = attributes[:'connect_time'] if attributes[:'connect_time']

      self.failed_login_attempts = attributes[:'failedLoginAttempts'] if attributes[:'failedLoginAttempts']

      raise 'You cannot provide both :failedLoginAttempts and :failed_login_attempts' if attributes.key?(:'failedLoginAttempts') && attributes.key?(:'failed_login_attempts')

      self.failed_login_attempts = attributes[:'failed_login_attempts'] if attributes[:'failed_login_attempts']

      self.idle_time = attributes[:'idleTime'] if attributes[:'idleTime']

      raise 'You cannot provide both :idleTime and :idle_time' if attributes.key?(:'idleTime') && attributes.key?(:'idle_time')

      self.idle_time = attributes[:'idle_time'] if attributes[:'idle_time']

      self.inactive_account_time = attributes[:'inactiveAccountTime'] if attributes[:'inactiveAccountTime']

      raise 'You cannot provide both :inactiveAccountTime and :inactive_account_time' if attributes.key?(:'inactiveAccountTime') && attributes.key?(:'inactive_account_time')

      self.inactive_account_time = attributes[:'inactive_account_time'] if attributes[:'inactive_account_time']

      self.password_grace_time = attributes[:'passwordGraceTime'] if attributes[:'passwordGraceTime']

      raise 'You cannot provide both :passwordGraceTime and :password_grace_time' if attributes.key?(:'passwordGraceTime') && attributes.key?(:'password_grace_time')

      self.password_grace_time = attributes[:'password_grace_time'] if attributes[:'password_grace_time']

      self.password_life_time = attributes[:'passwordLifeTime'] if attributes[:'passwordLifeTime']

      raise 'You cannot provide both :passwordLifeTime and :password_life_time' if attributes.key?(:'passwordLifeTime') && attributes.key?(:'password_life_time')

      self.password_life_time = attributes[:'password_life_time'] if attributes[:'password_life_time']

      self.password_lock_time = attributes[:'passwordLockTime'] if attributes[:'passwordLockTime']

      raise 'You cannot provide both :passwordLockTime and :password_lock_time' if attributes.key?(:'passwordLockTime') && attributes.key?(:'password_lock_time')

      self.password_lock_time = attributes[:'password_lock_time'] if attributes[:'password_lock_time']

      self.password_reuse_time = attributes[:'passwordReuseTime'] if attributes[:'passwordReuseTime']

      raise 'You cannot provide both :passwordReuseTime and :password_reuse_time' if attributes.key?(:'passwordReuseTime') && attributes.key?(:'password_reuse_time')

      self.password_reuse_time = attributes[:'password_reuse_time'] if attributes[:'password_reuse_time']

      self.password_reuse_max = attributes[:'passwordReuseMax'] if attributes[:'passwordReuseMax']

      raise 'You cannot provide both :passwordReuseMax and :password_reuse_max' if attributes.key?(:'passwordReuseMax') && attributes.key?(:'password_reuse_max')

      self.password_reuse_max = attributes[:'password_reuse_max'] if attributes[:'password_reuse_max']

      self.password_verify_function = attributes[:'passwordVerifyFunction'] if attributes[:'passwordVerifyFunction']

      raise 'You cannot provide both :passwordVerifyFunction and :password_verify_function' if attributes.key?(:'passwordVerifyFunction') && attributes.key?(:'password_verify_function')

      self.password_verify_function = attributes[:'password_verify_function'] if attributes[:'password_verify_function']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        num_users == other.num_users &&
        connect_time == other.connect_time &&
        failed_login_attempts == other.failed_login_attempts &&
        idle_time == other.idle_time &&
        inactive_account_time == other.inactive_account_time &&
        password_grace_time == other.password_grace_time &&
        password_life_time == other.password_life_time &&
        password_lock_time == other.password_lock_time &&
        password_reuse_time == other.password_reuse_time &&
        password_reuse_max == other.password_reuse_max &&
        password_verify_function == other.password_verify_function
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
      [num_users, connect_time, failed_login_attempts, idle_time, inactive_account_time, password_grace_time, password_life_time, password_lock_time, password_reuse_time, password_reuse_max, password_verify_function].hash
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
