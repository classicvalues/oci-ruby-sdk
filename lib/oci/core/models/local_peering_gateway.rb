# Copyright (c) 2016, 2018, Oracle and/or its affiliates. All rights reserved.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective
module OCI
  # A local peering gateway (LPG) is an object on a VCN that lets that VCN peer
  # with another VCN in the same region. *Peering* means that the two VCNs can
  # communicate using private IP addresses, but without the traffic traversing the
  # internet or routing through your on-premises network. For more information,
  # see [VCN Peering](https://docs.us-phoenix-1.oraclecloud.com/Content/Network/Tasks/VCNpeering.htm).
  #
  # To use any of the API operations, you must be authorized in an IAM policy. If you're not authorized,
  # talk to an administrator. If you're an administrator who needs to write policies to give users access, see
  # [Getting Started with Policies](https://docs.us-phoenix-1.oraclecloud.com/Content/Identity/Concepts/policygetstarted.htm).
  #
  class Core::Models::LocalPeeringGateway # rubocop:disable Metrics/LineLength
    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_PROVISIONING = 'PROVISIONING'.freeze,
      LIFECYCLE_STATE_AVAILABLE = 'AVAILABLE'.freeze,
      LIFECYCLE_STATE_TERMINATING = 'TERMINATING'.freeze,
      LIFECYCLE_STATE_TERMINATED = 'TERMINATED'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    PEERING_STATUS_ENUM = [
      PEERING_STATUS_INVALID = 'INVALID'.freeze,
      PEERING_STATUS_NEW = 'NEW'.freeze,
      PEERING_STATUS_PEERED = 'PEERED'.freeze,
      PEERING_STATUS_PENDING = 'PENDING'.freeze,
      PEERING_STATUS_REVOKED = 'REVOKED'.freeze,
      PEERING_STATUS_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The OCID of the compartment containing the LPG.
    # @return [String]
    attr_accessor :compartment_id

    # **[Required]** A user-friendly name. Does not have to be unique, and it's changeable. Avoid
    # entering confidential information.
    #
    # @return [String]
    attr_accessor :display_name

    # **[Required]** The LPG's Oracle ID (OCID).
    # @return [String]
    attr_accessor :id

    # **[Required]** Whether the VCN at the other end of the peering is in a different tenancy.
    #
    # Example: `false`
    #
    # @return [BOOLEAN]
    attr_accessor :is_cross_tenancy_peering

    # **[Required]** The LPG's current lifecycle state.
    # @return [String]
    attr_reader :lifecycle_state

    # The range of IP addresses available on the VCN at the other
    # end of the peering from this LPG. The value is `null` if the LPG is not peered.
    # You can use this as the destination CIDR for a route rule to route a subnet's
    # traffic to this LPG.
    #
    # Example: `192.168.0.0/16`
    #
    # @return [String]
    attr_accessor :peer_advertised_cidr

    # **[Required]** Whether the LPG is peered with another LPG. `NEW` means the LPG has not yet been
    # peered. `PENDING` means the peering is being established. `REVOKED` means the
    # LPG at the other end of the peering has been deleted.
    #
    # @return [String]
    attr_reader :peering_status

    # Additional information regarding the peering status, if applicable.
    # @return [String]
    attr_accessor :peering_status_details

    # **[Required]** The date and time the LPG was created, in the format defined by RFC3339.
    #
    # Example: `2016-08-25T21:10:29.600Z`
    #
    # @return [DateTime]
    attr_accessor :time_created

    # **[Required]** The OCID of the VCN the LPG belongs to.
    # @return [String]
    attr_accessor :vcn_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'compartment_id': :'compartmentId',
        'display_name': :'displayName',
        'id': :'id',
        'is_cross_tenancy_peering': :'isCrossTenancyPeering',
        'lifecycle_state': :'lifecycleState',
        'peer_advertised_cidr': :'peerAdvertisedCidr',
        'peering_status': :'peeringStatus',
        'peering_status_details': :'peeringStatusDetails',
        'time_created': :'timeCreated',
        'vcn_id': :'vcnId'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'compartment_id': :'String',
        'display_name': :'String',
        'id': :'String',
        'is_cross_tenancy_peering': :'BOOLEAN',
        'lifecycle_state': :'String',
        'peer_advertised_cidr': :'String',
        'peering_status': :'String',
        'peering_status_details': :'String',
        'time_created': :'DateTime',
        'vcn_id': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/LineLength, Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [BOOLEAN] :is_cross_tenancy_peering The value to assign to the {#is_cross_tenancy_peering} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [String] :peer_advertised_cidr The value to assign to the {#peer_advertised_cidr} property
    # @option attributes [String] :peering_status The value to assign to the {#peering_status} property
    # @option attributes [String] :peering_status_details The value to assign to the {#peering_status_details} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [String] :vcn_id The value to assign to the {#vcn_id} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.id = attributes[:'id'] if attributes[:'id']

      self.is_cross_tenancy_peering = attributes[:'isCrossTenancyPeering'] unless attributes[:'isCrossTenancyPeering'].nil?

      raise 'You cannot provide both :isCrossTenancyPeering and :is_cross_tenancy_peering' if attributes.key?(:'isCrossTenancyPeering') && attributes.key?(:'is_cross_tenancy_peering')

      self.is_cross_tenancy_peering = attributes[:'is_cross_tenancy_peering'] unless attributes[:'is_cross_tenancy_peering'].nil?

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.peer_advertised_cidr = attributes[:'peerAdvertisedCidr'] if attributes[:'peerAdvertisedCidr']

      raise 'You cannot provide both :peerAdvertisedCidr and :peer_advertised_cidr' if attributes.key?(:'peerAdvertisedCidr') && attributes.key?(:'peer_advertised_cidr')

      self.peer_advertised_cidr = attributes[:'peer_advertised_cidr'] if attributes[:'peer_advertised_cidr']

      self.peering_status = attributes[:'peeringStatus'] if attributes[:'peeringStatus']

      raise 'You cannot provide both :peeringStatus and :peering_status' if attributes.key?(:'peeringStatus') && attributes.key?(:'peering_status')

      self.peering_status = attributes[:'peering_status'] if attributes[:'peering_status']

      self.peering_status_details = attributes[:'peeringStatusDetails'] if attributes[:'peeringStatusDetails']

      raise 'You cannot provide both :peeringStatusDetails and :peering_status_details' if attributes.key?(:'peeringStatusDetails') && attributes.key?(:'peering_status_details')

      self.peering_status_details = attributes[:'peering_status_details'] if attributes[:'peering_status_details']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.vcn_id = attributes[:'vcnId'] if attributes[:'vcnId']

      raise 'You cannot provide both :vcnId and :vcn_id' if attributes.key?(:'vcnId') && attributes.key?(:'vcn_id')

      self.vcn_id = attributes[:'vcn_id'] if attributes[:'vcn_id']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/LineLength, Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lifecycle_state Object to be assigned
    def lifecycle_state=(lifecycle_state)
      # rubocop:disable Style/ConditionalAssignment
      if lifecycle_state && !LIFECYCLE_STATE_ENUM.include?(lifecycle_state)
        # rubocop: disable Metrics/LineLength
        OCI.logger.debug("Unknown value for 'lifecycle_state' [" + lifecycle_state + "]. Mapping to 'LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        # rubocop: enable Metrics/LineLength
        @lifecycle_state = LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE
      else
        @lifecycle_state = lifecycle_state
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] peering_status Object to be assigned
    def peering_status=(peering_status)
      # rubocop:disable Style/ConditionalAssignment
      if peering_status && !PEERING_STATUS_ENUM.include?(peering_status)
        # rubocop: disable Metrics/LineLength
        OCI.logger.debug("Unknown value for 'peering_status' [" + peering_status + "]. Mapping to 'PEERING_STATUS_UNKNOWN_ENUM_VALUE'") if OCI.logger
        # rubocop: enable Metrics/LineLength
        @peering_status = PEERING_STATUS_UNKNOWN_ENUM_VALUE
      else
        @peering_status = peering_status
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)
      self.class == other.class &&
        compartment_id == other.compartment_id &&
        display_name == other.display_name &&
        id == other.id &&
        is_cross_tenancy_peering == other.is_cross_tenancy_peering &&
        lifecycle_state == other.lifecycle_state &&
        peer_advertised_cidr == other.peer_advertised_cidr &&
        peering_status == other.peering_status &&
        peering_status_details == other.peering_status_details &&
        time_created == other.time_created &&
        vcn_id == other.vcn_id
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines

    # @see the `==` method
    # @param [Object] other the other object to be compared
    def eql?(other)
      self == other
    end

    # rubocop:disable Metrics/AbcSize, Metrics/LineLength, Layout/EmptyLines


    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [compartment_id, display_name, id, is_cross_tenancy_peering, lifecycle_state, peer_advertised_cidr, peering_status, peering_status_details, time_created, vcn_id].hash
    end
    # rubocop:enable Metrics/AbcSize, Metrics/LineLength, Layout/EmptyLines

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
# rubocop:enable Lint/UnneededCopDisableDirective
