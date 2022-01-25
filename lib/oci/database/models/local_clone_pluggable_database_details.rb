# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Parameters for cloning a pluggable database (PDB) within the same database (CDB).
  #
  # **Warning:** Oracle recommends that you avoid using any confidential information when you supply string values using the API.
  #
  class Database::Models::LocalClonePluggableDatabaseDetails
    # **[Required]** The name for the pluggable database (PDB). The name is unique in the context of a {Database}. The name must begin with an alphabetic character and can contain a maximum of thirty alphanumeric characters. Special characters are not permitted. The pluggable database name should not be same as the container database name.
    # @return [String]
    attr_accessor :cloned_pdb_name

    # A strong password for PDB Admin of the newly cloned PDB. The password must be at least nine characters and contain at least two uppercase, two lowercase, two numbers, and two special characters. The special characters must be _, \\#, or -.
    # @return [String]
    attr_accessor :pdb_admin_password

    # The existing TDE wallet password of the target CDB.
    # @return [String]
    attr_accessor :target_tde_wallet_password

    # The locked mode of the pluggable database admin account. If false, the user needs to provide the PDB Admin Password to connect to it.
    # If true, the pluggable database will be locked and user cannot login to it.
    #
    # @return [BOOLEAN]
    attr_accessor :should_pdb_admin_account_be_locked

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'cloned_pdb_name': :'clonedPdbName',
        'pdb_admin_password': :'pdbAdminPassword',
        'target_tde_wallet_password': :'targetTdeWalletPassword',
        'should_pdb_admin_account_be_locked': :'shouldPdbAdminAccountBeLocked'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'cloned_pdb_name': :'String',
        'pdb_admin_password': :'String',
        'target_tde_wallet_password': :'String',
        'should_pdb_admin_account_be_locked': :'BOOLEAN'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :cloned_pdb_name The value to assign to the {#cloned_pdb_name} property
    # @option attributes [String] :pdb_admin_password The value to assign to the {#pdb_admin_password} property
    # @option attributes [String] :target_tde_wallet_password The value to assign to the {#target_tde_wallet_password} property
    # @option attributes [BOOLEAN] :should_pdb_admin_account_be_locked The value to assign to the {#should_pdb_admin_account_be_locked} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.cloned_pdb_name = attributes[:'clonedPdbName'] if attributes[:'clonedPdbName']

      raise 'You cannot provide both :clonedPdbName and :cloned_pdb_name' if attributes.key?(:'clonedPdbName') && attributes.key?(:'cloned_pdb_name')

      self.cloned_pdb_name = attributes[:'cloned_pdb_name'] if attributes[:'cloned_pdb_name']

      self.pdb_admin_password = attributes[:'pdbAdminPassword'] if attributes[:'pdbAdminPassword']

      raise 'You cannot provide both :pdbAdminPassword and :pdb_admin_password' if attributes.key?(:'pdbAdminPassword') && attributes.key?(:'pdb_admin_password')

      self.pdb_admin_password = attributes[:'pdb_admin_password'] if attributes[:'pdb_admin_password']

      self.target_tde_wallet_password = attributes[:'targetTdeWalletPassword'] if attributes[:'targetTdeWalletPassword']

      raise 'You cannot provide both :targetTdeWalletPassword and :target_tde_wallet_password' if attributes.key?(:'targetTdeWalletPassword') && attributes.key?(:'target_tde_wallet_password')

      self.target_tde_wallet_password = attributes[:'target_tde_wallet_password'] if attributes[:'target_tde_wallet_password']

      self.should_pdb_admin_account_be_locked = attributes[:'shouldPdbAdminAccountBeLocked'] unless attributes[:'shouldPdbAdminAccountBeLocked'].nil?
      self.should_pdb_admin_account_be_locked = false if should_pdb_admin_account_be_locked.nil? && !attributes.key?(:'shouldPdbAdminAccountBeLocked') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :shouldPdbAdminAccountBeLocked and :should_pdb_admin_account_be_locked' if attributes.key?(:'shouldPdbAdminAccountBeLocked') && attributes.key?(:'should_pdb_admin_account_be_locked')

      self.should_pdb_admin_account_be_locked = attributes[:'should_pdb_admin_account_be_locked'] unless attributes[:'should_pdb_admin_account_be_locked'].nil?
      self.should_pdb_admin_account_be_locked = false if should_pdb_admin_account_be_locked.nil? && !attributes.key?(:'shouldPdbAdminAccountBeLocked') && !attributes.key?(:'should_pdb_admin_account_be_locked') # rubocop:disable Style/StringLiterals
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        cloned_pdb_name == other.cloned_pdb_name &&
        pdb_admin_password == other.pdb_admin_password &&
        target_tde_wallet_password == other.target_tde_wallet_password &&
        should_pdb_admin_account_be_locked == other.should_pdb_admin_account_be_locked
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
      [cloned_pdb_name, pdb_admin_password, target_tde_wallet_password, should_pdb_admin_account_be_locked].hash
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
