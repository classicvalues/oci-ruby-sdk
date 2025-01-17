# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Details of the cloud Exadata infrastructure resource. Applies to Exadata Cloud Service instances only.
  #
  class Database::Models::CloudExadataInfrastructure
    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_PROVISIONING = 'PROVISIONING'.freeze,
      LIFECYCLE_STATE_AVAILABLE = 'AVAILABLE'.freeze,
      LIFECYCLE_STATE_UPDATING = 'UPDATING'.freeze,
      LIFECYCLE_STATE_TERMINATING = 'TERMINATING'.freeze,
      LIFECYCLE_STATE_TERMINATED = 'TERMINATED'.freeze,
      LIFECYCLE_STATE_FAILED = 'FAILED'.freeze,
      LIFECYCLE_STATE_MAINTENANCE_IN_PROGRESS = 'MAINTENANCE_IN_PROGRESS'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the cloud Exadata infrastructure resource.
    # @return [String]
    attr_accessor :id

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the compartment.
    # @return [String]
    attr_accessor :compartment_id

    # **[Required]** The current lifecycle state of the cloud Exadata infrastructure resource.
    # @return [String]
    attr_reader :lifecycle_state

    # **[Required]** The user-friendly name for the cloud Exadata infrastructure resource. The name does not need to be unique.
    # @return [String]
    attr_accessor :display_name

    # **[Required]** The model name of the cloud Exadata infrastructure resource.
    #
    # @return [String]
    attr_accessor :shape

    # **[Required]** The name of the availability domain that the cloud Exadata infrastructure resource is located in.
    # @return [String]
    attr_accessor :availability_domain

    # The number of compute servers for the cloud Exadata infrastructure.
    # @return [Integer]
    attr_accessor :compute_count

    # The number of storage servers for the cloud Exadata infrastructure.
    # @return [Integer]
    attr_accessor :storage_count

    # The total storage allocated to the cloud Exadata infrastructure resource, in gigabytes (GB).
    # @return [Integer]
    attr_accessor :total_storage_size_in_gbs

    # The available storage can be allocated to the cloud Exadata infrastructure resource, in gigabytes (GB).
    # @return [Integer]
    attr_accessor :available_storage_size_in_gbs

    # The date and time the cloud Exadata infrastructure resource was created.
    # @return [DateTime]
    attr_accessor :time_created

    # Additional information about the current lifecycle state.
    # @return [String]
    attr_accessor :lifecycle_details

    # @return [OCI::Database::Models::MaintenanceWindow]
    attr_accessor :maintenance_window

    # The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the last maintenance run.
    # @return [String]
    attr_accessor :last_maintenance_run_id

    # The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the next maintenance run.
    # @return [String]
    attr_accessor :next_maintenance_run_id

    # Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace.
    # For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm).
    #
    # Example: `{\"Department\": \"Finance\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # Defined tags for this resource. Each key is predefined and scoped to a namespace.
    # For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm).
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # The list of customer email addresses that receive information from Oracle about the specified OCI Database service resource.
    # Oracle uses these email addresses to send notifications about planned and unplanned software maintenance updates, information about system hardware, and other information needed by administrators.
    # Up to 10 email addresses can be added to the customer contacts for a cloud Exadata infrastructure instance.
    #
    # @return [Array<OCI::Database::Models::CustomerContact>]
    attr_accessor :customer_contacts

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'id',
        'compartment_id': :'compartmentId',
        'lifecycle_state': :'lifecycleState',
        'display_name': :'displayName',
        'shape': :'shape',
        'availability_domain': :'availabilityDomain',
        'compute_count': :'computeCount',
        'storage_count': :'storageCount',
        'total_storage_size_in_gbs': :'totalStorageSizeInGBs',
        'available_storage_size_in_gbs': :'availableStorageSizeInGBs',
        'time_created': :'timeCreated',
        'lifecycle_details': :'lifecycleDetails',
        'maintenance_window': :'maintenanceWindow',
        'last_maintenance_run_id': :'lastMaintenanceRunId',
        'next_maintenance_run_id': :'nextMaintenanceRunId',
        'freeform_tags': :'freeformTags',
        'defined_tags': :'definedTags',
        'customer_contacts': :'customerContacts'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'String',
        'compartment_id': :'String',
        'lifecycle_state': :'String',
        'display_name': :'String',
        'shape': :'String',
        'availability_domain': :'String',
        'compute_count': :'Integer',
        'storage_count': :'Integer',
        'total_storage_size_in_gbs': :'Integer',
        'available_storage_size_in_gbs': :'Integer',
        'time_created': :'DateTime',
        'lifecycle_details': :'String',
        'maintenance_window': :'OCI::Database::Models::MaintenanceWindow',
        'last_maintenance_run_id': :'String',
        'next_maintenance_run_id': :'String',
        'freeform_tags': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>',
        'customer_contacts': :'Array<OCI::Database::Models::CustomerContact>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :shape The value to assign to the {#shape} property
    # @option attributes [String] :availability_domain The value to assign to the {#availability_domain} property
    # @option attributes [Integer] :compute_count The value to assign to the {#compute_count} property
    # @option attributes [Integer] :storage_count The value to assign to the {#storage_count} property
    # @option attributes [Integer] :total_storage_size_in_gbs The value to assign to the {#total_storage_size_in_gbs} property
    # @option attributes [Integer] :available_storage_size_in_gbs The value to assign to the {#available_storage_size_in_gbs} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [String] :lifecycle_details The value to assign to the {#lifecycle_details} property
    # @option attributes [OCI::Database::Models::MaintenanceWindow] :maintenance_window The value to assign to the {#maintenance_window} property
    # @option attributes [String] :last_maintenance_run_id The value to assign to the {#last_maintenance_run_id} property
    # @option attributes [String] :next_maintenance_run_id The value to assign to the {#next_maintenance_run_id} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    # @option attributes [Array<OCI::Database::Models::CustomerContact>] :customer_contacts The value to assign to the {#customer_contacts} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      self.id = attributes[:'id'] if attributes[:'id']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.shape = attributes[:'shape'] if attributes[:'shape']

      self.availability_domain = attributes[:'availabilityDomain'] if attributes[:'availabilityDomain']

      raise 'You cannot provide both :availabilityDomain and :availability_domain' if attributes.key?(:'availabilityDomain') && attributes.key?(:'availability_domain')

      self.availability_domain = attributes[:'availability_domain'] if attributes[:'availability_domain']

      self.compute_count = attributes[:'computeCount'] if attributes[:'computeCount']

      raise 'You cannot provide both :computeCount and :compute_count' if attributes.key?(:'computeCount') && attributes.key?(:'compute_count')

      self.compute_count = attributes[:'compute_count'] if attributes[:'compute_count']

      self.storage_count = attributes[:'storageCount'] if attributes[:'storageCount']

      raise 'You cannot provide both :storageCount and :storage_count' if attributes.key?(:'storageCount') && attributes.key?(:'storage_count')

      self.storage_count = attributes[:'storage_count'] if attributes[:'storage_count']

      self.total_storage_size_in_gbs = attributes[:'totalStorageSizeInGBs'] if attributes[:'totalStorageSizeInGBs']

      raise 'You cannot provide both :totalStorageSizeInGBs and :total_storage_size_in_gbs' if attributes.key?(:'totalStorageSizeInGBs') && attributes.key?(:'total_storage_size_in_gbs')

      self.total_storage_size_in_gbs = attributes[:'total_storage_size_in_gbs'] if attributes[:'total_storage_size_in_gbs']

      self.available_storage_size_in_gbs = attributes[:'availableStorageSizeInGBs'] if attributes[:'availableStorageSizeInGBs']

      raise 'You cannot provide both :availableStorageSizeInGBs and :available_storage_size_in_gbs' if attributes.key?(:'availableStorageSizeInGBs') && attributes.key?(:'available_storage_size_in_gbs')

      self.available_storage_size_in_gbs = attributes[:'available_storage_size_in_gbs'] if attributes[:'available_storage_size_in_gbs']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.lifecycle_details = attributes[:'lifecycleDetails'] if attributes[:'lifecycleDetails']

      raise 'You cannot provide both :lifecycleDetails and :lifecycle_details' if attributes.key?(:'lifecycleDetails') && attributes.key?(:'lifecycle_details')

      self.lifecycle_details = attributes[:'lifecycle_details'] if attributes[:'lifecycle_details']

      self.maintenance_window = attributes[:'maintenanceWindow'] if attributes[:'maintenanceWindow']

      raise 'You cannot provide both :maintenanceWindow and :maintenance_window' if attributes.key?(:'maintenanceWindow') && attributes.key?(:'maintenance_window')

      self.maintenance_window = attributes[:'maintenance_window'] if attributes[:'maintenance_window']

      self.last_maintenance_run_id = attributes[:'lastMaintenanceRunId'] if attributes[:'lastMaintenanceRunId']

      raise 'You cannot provide both :lastMaintenanceRunId and :last_maintenance_run_id' if attributes.key?(:'lastMaintenanceRunId') && attributes.key?(:'last_maintenance_run_id')

      self.last_maintenance_run_id = attributes[:'last_maintenance_run_id'] if attributes[:'last_maintenance_run_id']

      self.next_maintenance_run_id = attributes[:'nextMaintenanceRunId'] if attributes[:'nextMaintenanceRunId']

      raise 'You cannot provide both :nextMaintenanceRunId and :next_maintenance_run_id' if attributes.key?(:'nextMaintenanceRunId') && attributes.key?(:'next_maintenance_run_id')

      self.next_maintenance_run_id = attributes[:'next_maintenance_run_id'] if attributes[:'next_maintenance_run_id']

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']

      self.customer_contacts = attributes[:'customerContacts'] if attributes[:'customerContacts']

      raise 'You cannot provide both :customerContacts and :customer_contacts' if attributes.key?(:'customerContacts') && attributes.key?(:'customer_contacts')

      self.customer_contacts = attributes[:'customer_contacts'] if attributes[:'customer_contacts']
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
        id == other.id &&
        compartment_id == other.compartment_id &&
        lifecycle_state == other.lifecycle_state &&
        display_name == other.display_name &&
        shape == other.shape &&
        availability_domain == other.availability_domain &&
        compute_count == other.compute_count &&
        storage_count == other.storage_count &&
        total_storage_size_in_gbs == other.total_storage_size_in_gbs &&
        available_storage_size_in_gbs == other.available_storage_size_in_gbs &&
        time_created == other.time_created &&
        lifecycle_details == other.lifecycle_details &&
        maintenance_window == other.maintenance_window &&
        last_maintenance_run_id == other.last_maintenance_run_id &&
        next_maintenance_run_id == other.next_maintenance_run_id &&
        freeform_tags == other.freeform_tags &&
        defined_tags == other.defined_tags &&
        customer_contacts == other.customer_contacts
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
      [id, compartment_id, lifecycle_state, display_name, shape, availability_domain, compute_count, storage_count, total_storage_size_in_gbs, available_storage_size_in_gbs, time_created, lifecycle_details, maintenance_window, last_maintenance_run_id, next_maintenance_run_id, freeform_tags, defined_tags, customer_contacts].hash
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
