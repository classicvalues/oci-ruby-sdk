# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require_relative 'host_configuration_summary'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Configuration Summary of a Macs Managed External host.
  class Opsi::Models::MacsManagedExternalHostConfigurationSummary < Opsi::Models::HostConfigurationSummary
    # **[Required]** The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the Management Agent
    # @return [String]
    attr_accessor :management_agent_id

    # The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of External Database Connector
    # @return [String]
    attr_accessor :connector_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'host_insight_id': :'hostInsightId',
        'entity_source': :'entitySource',
        'compartment_id': :'compartmentId',
        'host_name': :'hostName',
        'platform_type': :'platformType',
        'platform_version': :'platformVersion',
        'platform_vendor': :'platformVendor',
        'total_cpus': :'totalCpus',
        'total_memory_in_gbs': :'totalMemoryInGBs',
        'cpu_architecture': :'cpuArchitecture',
        'cpu_cache_in_mbs': :'cpuCacheInMBs',
        'cpu_vendor': :'cpuVendor',
        'cpu_frequency_in_mhz': :'cpuFrequencyInMhz',
        'cpu_implementation': :'cpuImplementation',
        'cores_per_socket': :'coresPerSocket',
        'total_sockets': :'totalSockets',
        'threads_per_socket': :'threadsPerSocket',
        'is_hyper_threading_enabled': :'isHyperThreadingEnabled',
        'defined_tags': :'definedTags',
        'freeform_tags': :'freeformTags',
        'management_agent_id': :'managementAgentId',
        'connector_id': :'connectorId'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'host_insight_id': :'String',
        'entity_source': :'String',
        'compartment_id': :'String',
        'host_name': :'String',
        'platform_type': :'String',
        'platform_version': :'String',
        'platform_vendor': :'String',
        'total_cpus': :'Integer',
        'total_memory_in_gbs': :'Float',
        'cpu_architecture': :'String',
        'cpu_cache_in_mbs': :'Float',
        'cpu_vendor': :'String',
        'cpu_frequency_in_mhz': :'Float',
        'cpu_implementation': :'String',
        'cores_per_socket': :'Integer',
        'total_sockets': :'Integer',
        'threads_per_socket': :'Integer',
        'is_hyper_threading_enabled': :'BOOLEAN',
        'defined_tags': :'Hash<String, Hash<String, Object>>',
        'freeform_tags': :'Hash<String, String>',
        'management_agent_id': :'String',
        'connector_id': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :host_insight_id The value to assign to the {OCI::Opsi::Models::HostConfigurationSummary#host_insight_id #host_insight_id} proprety
    # @option attributes [String] :compartment_id The value to assign to the {OCI::Opsi::Models::HostConfigurationSummary#compartment_id #compartment_id} proprety
    # @option attributes [String] :host_name The value to assign to the {OCI::Opsi::Models::HostConfigurationSummary#host_name #host_name} proprety
    # @option attributes [String] :platform_type The value to assign to the {OCI::Opsi::Models::HostConfigurationSummary#platform_type #platform_type} proprety
    # @option attributes [String] :platform_version The value to assign to the {OCI::Opsi::Models::HostConfigurationSummary#platform_version #platform_version} proprety
    # @option attributes [String] :platform_vendor The value to assign to the {OCI::Opsi::Models::HostConfigurationSummary#platform_vendor #platform_vendor} proprety
    # @option attributes [Integer] :total_cpus The value to assign to the {OCI::Opsi::Models::HostConfigurationSummary#total_cpus #total_cpus} proprety
    # @option attributes [Float] :total_memory_in_gbs The value to assign to the {OCI::Opsi::Models::HostConfigurationSummary#total_memory_in_gbs #total_memory_in_gbs} proprety
    # @option attributes [String] :cpu_architecture The value to assign to the {OCI::Opsi::Models::HostConfigurationSummary#cpu_architecture #cpu_architecture} proprety
    # @option attributes [Float] :cpu_cache_in_mbs The value to assign to the {OCI::Opsi::Models::HostConfigurationSummary#cpu_cache_in_mbs #cpu_cache_in_mbs} proprety
    # @option attributes [String] :cpu_vendor The value to assign to the {OCI::Opsi::Models::HostConfigurationSummary#cpu_vendor #cpu_vendor} proprety
    # @option attributes [Float] :cpu_frequency_in_mhz The value to assign to the {OCI::Opsi::Models::HostConfigurationSummary#cpu_frequency_in_mhz #cpu_frequency_in_mhz} proprety
    # @option attributes [String] :cpu_implementation The value to assign to the {OCI::Opsi::Models::HostConfigurationSummary#cpu_implementation #cpu_implementation} proprety
    # @option attributes [Integer] :cores_per_socket The value to assign to the {OCI::Opsi::Models::HostConfigurationSummary#cores_per_socket #cores_per_socket} proprety
    # @option attributes [Integer] :total_sockets The value to assign to the {OCI::Opsi::Models::HostConfigurationSummary#total_sockets #total_sockets} proprety
    # @option attributes [Integer] :threads_per_socket The value to assign to the {OCI::Opsi::Models::HostConfigurationSummary#threads_per_socket #threads_per_socket} proprety
    # @option attributes [BOOLEAN] :is_hyper_threading_enabled The value to assign to the {OCI::Opsi::Models::HostConfigurationSummary#is_hyper_threading_enabled #is_hyper_threading_enabled} proprety
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {OCI::Opsi::Models::HostConfigurationSummary#defined_tags #defined_tags} proprety
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {OCI::Opsi::Models::HostConfigurationSummary#freeform_tags #freeform_tags} proprety
    # @option attributes [String] :management_agent_id The value to assign to the {#management_agent_id} property
    # @option attributes [String] :connector_id The value to assign to the {#connector_id} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes['entitySource'] = 'MACS_MANAGED_EXTERNAL_HOST'

      super(attributes)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.management_agent_id = attributes[:'managementAgentId'] if attributes[:'managementAgentId']

      raise 'You cannot provide both :managementAgentId and :management_agent_id' if attributes.key?(:'managementAgentId') && attributes.key?(:'management_agent_id')

      self.management_agent_id = attributes[:'management_agent_id'] if attributes[:'management_agent_id']

      self.connector_id = attributes[:'connectorId'] if attributes[:'connectorId']

      raise 'You cannot provide both :connectorId and :connector_id' if attributes.key?(:'connectorId') && attributes.key?(:'connector_id')

      self.connector_id = attributes[:'connector_id'] if attributes[:'connector_id']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        host_insight_id == other.host_insight_id &&
        entity_source == other.entity_source &&
        compartment_id == other.compartment_id &&
        host_name == other.host_name &&
        platform_type == other.platform_type &&
        platform_version == other.platform_version &&
        platform_vendor == other.platform_vendor &&
        total_cpus == other.total_cpus &&
        total_memory_in_gbs == other.total_memory_in_gbs &&
        cpu_architecture == other.cpu_architecture &&
        cpu_cache_in_mbs == other.cpu_cache_in_mbs &&
        cpu_vendor == other.cpu_vendor &&
        cpu_frequency_in_mhz == other.cpu_frequency_in_mhz &&
        cpu_implementation == other.cpu_implementation &&
        cores_per_socket == other.cores_per_socket &&
        total_sockets == other.total_sockets &&
        threads_per_socket == other.threads_per_socket &&
        is_hyper_threading_enabled == other.is_hyper_threading_enabled &&
        defined_tags == other.defined_tags &&
        freeform_tags == other.freeform_tags &&
        management_agent_id == other.management_agent_id &&
        connector_id == other.connector_id
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
      [host_insight_id, entity_source, compartment_id, host_name, platform_type, platform_version, platform_vendor, total_cpus, total_memory_in_gbs, cpu_architecture, cpu_cache_in_mbs, cpu_vendor, cpu_frequency_in_mhz, cpu_implementation, cores_per_socket, total_sockets, threads_per_socket, is_hyper_threading_enabled, defined_tags, freeform_tags, management_agent_id, connector_id].hash
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