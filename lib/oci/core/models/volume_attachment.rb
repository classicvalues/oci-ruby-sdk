# Copyright (c) 2016, 2018, Oracle and/or its affiliates. All rights reserved.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective
module OCI
  # A base object for all types of attachments between a storage volume and an instance.
  # For specific details about iSCSI attachments, see
  # {IScsiVolumeAttachment}.
  #
  # For general information about volume attachments, see
  # [Overview of Block Volume Storage](https://docs.us-phoenix-1.oraclecloud.com/Content/Block/Concepts/overview.htm).
  #
  # This class has direct subclasses. If you are using this class as input to a service operations then you should favor using a subclass over the base class
  class Core::Models::VolumeAttachment # rubocop:disable Metrics/LineLength
    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_ATTACHING = 'ATTACHING'.freeze,
      LIFECYCLE_STATE_ATTACHED = 'ATTACHED'.freeze,
      LIFECYCLE_STATE_DETACHING = 'DETACHING'.freeze,
      LIFECYCLE_STATE_DETACHED = 'DETACHED'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The type of volume attachment.
    # @return [String]
    attr_accessor :attachment_type

    # **[Required]** The Availability Domain of an instance.
    #
    # Example: `Uocm:PHX-AD-1`
    #
    # @return [String]
    attr_accessor :availability_domain

    # **[Required]** The OCID of the compartment.
    # @return [String]
    attr_accessor :compartment_id

    # A user-friendly name. Does not have to be unique, and it cannot be changed.
    # Avoid entering confidential information.
    #
    # Example: `My volume attachment`
    #
    # @return [String]
    attr_accessor :display_name

    # **[Required]** The OCID of the volume attachment.
    # @return [String]
    attr_accessor :id

    # **[Required]** The OCID of the instance the volume is attached to.
    # @return [String]
    attr_accessor :instance_id

    # Whether the attachment was created in read-only mode.
    # @return [BOOLEAN]
    attr_accessor :is_read_only

    # **[Required]** The current state of the volume attachment.
    # @return [String]
    attr_reader :lifecycle_state

    # **[Required]** The date and time the volume was created, in the format defined by RFC3339.
    #
    # Example: `2016-08-25T21:10:29.600Z`
    #
    # @return [DateTime]
    attr_accessor :time_created

    # **[Required]** The OCID of the volume.
    # @return [String]
    attr_accessor :volume_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'attachment_type': :'attachmentType',
        'availability_domain': :'availabilityDomain',
        'compartment_id': :'compartmentId',
        'display_name': :'displayName',
        'id': :'id',
        'instance_id': :'instanceId',
        'is_read_only': :'isReadOnly',
        'lifecycle_state': :'lifecycleState',
        'time_created': :'timeCreated',
        'volume_id': :'volumeId'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'attachment_type': :'String',
        'availability_domain': :'String',
        'compartment_id': :'String',
        'display_name': :'String',
        'id': :'String',
        'instance_id': :'String',
        'is_read_only': :'BOOLEAN',
        'lifecycle_state': :'String',
        'time_created': :'DateTime',
        'volume_id': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Given the hash representation of a subtype of this class,
    # use the info in the hash to return the class of the subtype.
    def self.get_subtype(object_hash)
      type = object_hash[:'attachmentType'] # rubocop:disable Style/SymbolLiteral

      return 'OCI::Core::Models::IScsiVolumeAttachment' if type == 'iscsi'
      return 'OCI::Core::Models::ParavirtualizedVolumeAttachment' if type == 'paravirtualized'

      # TODO: Log a warning when the subtype is not found.
      'OCI::Core::Models::VolumeAttachment'
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/LineLength, Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :attachment_type The value to assign to the {#attachment_type} property
    # @option attributes [String] :availability_domain The value to assign to the {#availability_domain} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :instance_id The value to assign to the {#instance_id} property
    # @option attributes [BOOLEAN] :is_read_only The value to assign to the {#is_read_only} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [String] :volume_id The value to assign to the {#volume_id} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.attachment_type = attributes[:'attachmentType'] if attributes[:'attachmentType']

      raise 'You cannot provide both :attachmentType and :attachment_type' if attributes.key?(:'attachmentType') && attributes.key?(:'attachment_type')

      self.attachment_type = attributes[:'attachment_type'] if attributes[:'attachment_type']

      self.availability_domain = attributes[:'availabilityDomain'] if attributes[:'availabilityDomain']

      raise 'You cannot provide both :availabilityDomain and :availability_domain' if attributes.key?(:'availabilityDomain') && attributes.key?(:'availability_domain')

      self.availability_domain = attributes[:'availability_domain'] if attributes[:'availability_domain']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.id = attributes[:'id'] if attributes[:'id']

      self.instance_id = attributes[:'instanceId'] if attributes[:'instanceId']

      raise 'You cannot provide both :instanceId and :instance_id' if attributes.key?(:'instanceId') && attributes.key?(:'instance_id')

      self.instance_id = attributes[:'instance_id'] if attributes[:'instance_id']

      self.is_read_only = attributes[:'isReadOnly'] unless attributes[:'isReadOnly'].nil?

      raise 'You cannot provide both :isReadOnly and :is_read_only' if attributes.key?(:'isReadOnly') && attributes.key?(:'is_read_only')

      self.is_read_only = attributes[:'is_read_only'] unless attributes[:'is_read_only'].nil?

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.volume_id = attributes[:'volumeId'] if attributes[:'volumeId']

      raise 'You cannot provide both :volumeId and :volume_id' if attributes.key?(:'volumeId') && attributes.key?(:'volume_id')

      self.volume_id = attributes[:'volume_id'] if attributes[:'volume_id']
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

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)
      self.class == other.class &&
        attachment_type == other.attachment_type &&
        availability_domain == other.availability_domain &&
        compartment_id == other.compartment_id &&
        display_name == other.display_name &&
        id == other.id &&
        instance_id == other.instance_id &&
        is_read_only == other.is_read_only &&
        lifecycle_state == other.lifecycle_state &&
        time_created == other.time_created &&
        volume_id == other.volume_id
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
      [attachment_type, availability_domain, compartment_id, display_name, id, instance_id, is_read_only, lifecycle_state, time_created, volume_id].hash
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
