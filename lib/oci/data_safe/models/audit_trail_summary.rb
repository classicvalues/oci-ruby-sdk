# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Summary of an audit trail.
  class DataSafe::Models::AuditTrailSummary
    STATUS_ENUM = [
      STATUS_STARTING = 'STARTING'.freeze,
      STATUS_COLLECTING = 'COLLECTING'.freeze,
      STATUS_RECOVERING = 'RECOVERING'.freeze,
      STATUS_IDLE = 'IDLE'.freeze,
      STATUS_STOPPING = 'STOPPING'.freeze,
      STATUS_STOPPED = 'STOPPED'.freeze,
      STATUS_RESUMING = 'RESUMING'.freeze,
      STATUS_RETRYING = 'RETRYING'.freeze,
      STATUS_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_INACTIVE = 'INACTIVE'.freeze,
      LIFECYCLE_STATE_UPDATING = 'UPDATING'.freeze,
      LIFECYCLE_STATE_ACTIVE = 'ACTIVE'.freeze,
      LIFECYCLE_STATE_DELETING = 'DELETING'.freeze,
      LIFECYCLE_STATE_FAILED = 'FAILED'.freeze,
      LIFECYCLE_STATE_NEEDS_ATTENTION = 'NEEDS_ATTENTION'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The OCID of the audit trail.
    # @return [String]
    attr_accessor :id

    # **[Required]** The OCID of the  parent audit.
    # @return [String]
    attr_accessor :audit_profile_id

    # **[Required]** The display name of the audit trail.
    # @return [String]
    attr_accessor :display_name

    # **[Required]** The date and time the audit trail was created, in the format defined by RFC3339.
    # @return [DateTime]
    attr_accessor :time_created

    # **[Required]** The date and time the audit trail was updated, in the format defined by RFC3339.
    # @return [DateTime]
    attr_accessor :time_updated

    # **[Required]** The current sub-state of the audit trail.
    # @return [String]
    attr_reader :status

    # The description of audit trail.
    # @return [String]
    attr_accessor :description

    # An audit trail location represents the source of audit records that provides documentary evidence of the sequence of activities in the target database.
    # @return [String]
    attr_accessor :trail_location

    # **[Required]** The OCID of the compartment that contains the audit.
    # @return [String]
    attr_accessor :compartment_id

    # **[Required]** The OCID of the Data Safe target for which the audit trail is created.
    # @return [String]
    attr_accessor :target_id

    # **[Required]** The current state of the audit trail.
    # @return [String]
    attr_reader :lifecycle_state

    # Details about the current state of the audit trail in Data Safe.
    # @return [String]
    attr_accessor :lifecycle_details

    # Indicates if auto purge is enabled on the target database, which helps delete audit data in the
    # target database every seven days so that the database's audit trail does not become too large.
    #
    # @return [BOOLEAN]
    attr_accessor :is_auto_purge_enabled

    # The date from which the audit trail must start collecting data, in the format defined by RFC3339.
    # @return [DateTime]
    attr_accessor :audit_collection_start_time

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
        'id': :'id',
        'audit_profile_id': :'auditProfileId',
        'display_name': :'displayName',
        'time_created': :'timeCreated',
        'time_updated': :'timeUpdated',
        'status': :'status',
        'description': :'description',
        'trail_location': :'trailLocation',
        'compartment_id': :'compartmentId',
        'target_id': :'targetId',
        'lifecycle_state': :'lifecycleState',
        'lifecycle_details': :'lifecycleDetails',
        'is_auto_purge_enabled': :'isAutoPurgeEnabled',
        'audit_collection_start_time': :'auditCollectionStartTime',
        'freeform_tags': :'freeformTags',
        'defined_tags': :'definedTags'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'String',
        'audit_profile_id': :'String',
        'display_name': :'String',
        'time_created': :'DateTime',
        'time_updated': :'DateTime',
        'status': :'String',
        'description': :'String',
        'trail_location': :'String',
        'compartment_id': :'String',
        'target_id': :'String',
        'lifecycle_state': :'String',
        'lifecycle_details': :'String',
        'is_auto_purge_enabled': :'BOOLEAN',
        'audit_collection_start_time': :'DateTime',
        'freeform_tags': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :audit_profile_id The value to assign to the {#audit_profile_id} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [DateTime] :time_updated The value to assign to the {#time_updated} property
    # @option attributes [String] :status The value to assign to the {#status} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [String] :trail_location The value to assign to the {#trail_location} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :target_id The value to assign to the {#target_id} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [String] :lifecycle_details The value to assign to the {#lifecycle_details} property
    # @option attributes [BOOLEAN] :is_auto_purge_enabled The value to assign to the {#is_auto_purge_enabled} property
    # @option attributes [DateTime] :audit_collection_start_time The value to assign to the {#audit_collection_start_time} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.id = attributes[:'id'] if attributes[:'id']

      self.audit_profile_id = attributes[:'auditProfileId'] if attributes[:'auditProfileId']

      raise 'You cannot provide both :auditProfileId and :audit_profile_id' if attributes.key?(:'auditProfileId') && attributes.key?(:'audit_profile_id')

      self.audit_profile_id = attributes[:'audit_profile_id'] if attributes[:'audit_profile_id']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.time_updated = attributes[:'timeUpdated'] if attributes[:'timeUpdated']

      raise 'You cannot provide both :timeUpdated and :time_updated' if attributes.key?(:'timeUpdated') && attributes.key?(:'time_updated')

      self.time_updated = attributes[:'time_updated'] if attributes[:'time_updated']

      self.status = attributes[:'status'] if attributes[:'status']

      self.description = attributes[:'description'] if attributes[:'description']

      self.trail_location = attributes[:'trailLocation'] if attributes[:'trailLocation']

      raise 'You cannot provide both :trailLocation and :trail_location' if attributes.key?(:'trailLocation') && attributes.key?(:'trail_location')

      self.trail_location = attributes[:'trail_location'] if attributes[:'trail_location']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.target_id = attributes[:'targetId'] if attributes[:'targetId']

      raise 'You cannot provide both :targetId and :target_id' if attributes.key?(:'targetId') && attributes.key?(:'target_id')

      self.target_id = attributes[:'target_id'] if attributes[:'target_id']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.lifecycle_details = attributes[:'lifecycleDetails'] if attributes[:'lifecycleDetails']

      raise 'You cannot provide both :lifecycleDetails and :lifecycle_details' if attributes.key?(:'lifecycleDetails') && attributes.key?(:'lifecycle_details')

      self.lifecycle_details = attributes[:'lifecycle_details'] if attributes[:'lifecycle_details']

      self.is_auto_purge_enabled = attributes[:'isAutoPurgeEnabled'] unless attributes[:'isAutoPurgeEnabled'].nil?
      self.is_auto_purge_enabled = false if is_auto_purge_enabled.nil? && !attributes.key?(:'isAutoPurgeEnabled') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isAutoPurgeEnabled and :is_auto_purge_enabled' if attributes.key?(:'isAutoPurgeEnabled') && attributes.key?(:'is_auto_purge_enabled')

      self.is_auto_purge_enabled = attributes[:'is_auto_purge_enabled'] unless attributes[:'is_auto_purge_enabled'].nil?
      self.is_auto_purge_enabled = false if is_auto_purge_enabled.nil? && !attributes.key?(:'isAutoPurgeEnabled') && !attributes.key?(:'is_auto_purge_enabled') # rubocop:disable Style/StringLiterals

      self.audit_collection_start_time = attributes[:'auditCollectionStartTime'] if attributes[:'auditCollectionStartTime']

      raise 'You cannot provide both :auditCollectionStartTime and :audit_collection_start_time' if attributes.key?(:'auditCollectionStartTime') && attributes.key?(:'audit_collection_start_time')

      self.audit_collection_start_time = attributes[:'audit_collection_start_time'] if attributes[:'audit_collection_start_time']

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      # rubocop:disable Style/ConditionalAssignment
      if status && !STATUS_ENUM.include?(status)
        OCI.logger.debug("Unknown value for 'status' [" + status + "]. Mapping to 'STATUS_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @status = STATUS_UNKNOWN_ENUM_VALUE
      else
        @status = status
      end
      # rubocop:enable Style/ConditionalAssignment
    end

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
        id == other.id &&
        audit_profile_id == other.audit_profile_id &&
        display_name == other.display_name &&
        time_created == other.time_created &&
        time_updated == other.time_updated &&
        status == other.status &&
        description == other.description &&
        trail_location == other.trail_location &&
        compartment_id == other.compartment_id &&
        target_id == other.target_id &&
        lifecycle_state == other.lifecycle_state &&
        lifecycle_details == other.lifecycle_details &&
        is_auto_purge_enabled == other.is_auto_purge_enabled &&
        audit_collection_start_time == other.audit_collection_start_time &&
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
      [id, audit_profile_id, display_name, time_created, time_updated, status, description, trail_location, compartment_id, target_id, lifecycle_state, lifecycle_details, is_auto_purge_enabled, audit_collection_start_time, freeform_tags, defined_tags].hash
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