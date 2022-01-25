# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Impacted Resource summary Definition.
  class CloudGuard::Models::ImpactedResourceSummary
    # **[Required]** Unique identifier for finding event
    # @return [String]
    attr_accessor :id

    # **[Required]** Unique id of the Impacted Resource
    # @return [String]
    attr_accessor :resource_id

    # **[Required]** Problem Id to which the Impacted Resource is associated
    # @return [String]
    attr_accessor :problem_id

    # **[Required]** Compartment Id where the resource is created
    # @return [String]
    attr_accessor :compartment_id

    # Identifier for the sighting type
    # @return [String]
    attr_accessor :sighting_type

    # Name of the sighting type
    # @return [String]
    attr_accessor :sighting_type_display_name

    # **[Required]** Name of the Impacted Resource
    # @return [String]
    attr_accessor :resource_name

    # **[Required]** Type of the Impacted Resource
    # @return [String]
    attr_accessor :resource_type

    # **[Required]** Region where the resource is created
    # @return [String]
    attr_accessor :region

    # **[Required]** Time when the problem was identified
    # @return [DateTime]
    attr_accessor :time_identified

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'id',
        'resource_id': :'resourceId',
        'problem_id': :'problemId',
        'compartment_id': :'compartmentId',
        'sighting_type': :'sightingType',
        'sighting_type_display_name': :'sightingTypeDisplayName',
        'resource_name': :'resourceName',
        'resource_type': :'resourceType',
        'region': :'region',
        'time_identified': :'timeIdentified'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'String',
        'resource_id': :'String',
        'problem_id': :'String',
        'compartment_id': :'String',
        'sighting_type': :'String',
        'sighting_type_display_name': :'String',
        'resource_name': :'String',
        'resource_type': :'String',
        'region': :'String',
        'time_identified': :'DateTime'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :resource_id The value to assign to the {#resource_id} property
    # @option attributes [String] :problem_id The value to assign to the {#problem_id} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :sighting_type The value to assign to the {#sighting_type} property
    # @option attributes [String] :sighting_type_display_name The value to assign to the {#sighting_type_display_name} property
    # @option attributes [String] :resource_name The value to assign to the {#resource_name} property
    # @option attributes [String] :resource_type The value to assign to the {#resource_type} property
    # @option attributes [String] :region The value to assign to the {#region} property
    # @option attributes [DateTime] :time_identified The value to assign to the {#time_identified} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.id = attributes[:'id'] if attributes[:'id']

      self.resource_id = attributes[:'resourceId'] if attributes[:'resourceId']

      raise 'You cannot provide both :resourceId and :resource_id' if attributes.key?(:'resourceId') && attributes.key?(:'resource_id')

      self.resource_id = attributes[:'resource_id'] if attributes[:'resource_id']

      self.problem_id = attributes[:'problemId'] if attributes[:'problemId']

      raise 'You cannot provide both :problemId and :problem_id' if attributes.key?(:'problemId') && attributes.key?(:'problem_id')

      self.problem_id = attributes[:'problem_id'] if attributes[:'problem_id']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.sighting_type = attributes[:'sightingType'] if attributes[:'sightingType']

      raise 'You cannot provide both :sightingType and :sighting_type' if attributes.key?(:'sightingType') && attributes.key?(:'sighting_type')

      self.sighting_type = attributes[:'sighting_type'] if attributes[:'sighting_type']

      self.sighting_type_display_name = attributes[:'sightingTypeDisplayName'] if attributes[:'sightingTypeDisplayName']

      raise 'You cannot provide both :sightingTypeDisplayName and :sighting_type_display_name' if attributes.key?(:'sightingTypeDisplayName') && attributes.key?(:'sighting_type_display_name')

      self.sighting_type_display_name = attributes[:'sighting_type_display_name'] if attributes[:'sighting_type_display_name']

      self.resource_name = attributes[:'resourceName'] if attributes[:'resourceName']

      raise 'You cannot provide both :resourceName and :resource_name' if attributes.key?(:'resourceName') && attributes.key?(:'resource_name')

      self.resource_name = attributes[:'resource_name'] if attributes[:'resource_name']

      self.resource_type = attributes[:'resourceType'] if attributes[:'resourceType']

      raise 'You cannot provide both :resourceType and :resource_type' if attributes.key?(:'resourceType') && attributes.key?(:'resource_type')

      self.resource_type = attributes[:'resource_type'] if attributes[:'resource_type']

      self.region = attributes[:'region'] if attributes[:'region']

      self.time_identified = attributes[:'timeIdentified'] if attributes[:'timeIdentified']

      raise 'You cannot provide both :timeIdentified and :time_identified' if attributes.key?(:'timeIdentified') && attributes.key?(:'time_identified')

      self.time_identified = attributes[:'time_identified'] if attributes[:'time_identified']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        id == other.id &&
        resource_id == other.resource_id &&
        problem_id == other.problem_id &&
        compartment_id == other.compartment_id &&
        sighting_type == other.sighting_type &&
        sighting_type_display_name == other.sighting_type_display_name &&
        resource_name == other.resource_name &&
        resource_type == other.resource_type &&
        region == other.region &&
        time_identified == other.time_identified
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
      [id, resource_id, problem_id, compartment_id, sighting_type, sighting_type_display_name, resource_name, resource_type, region, time_identified].hash
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
