# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # A particular functional endpoint for access to a DB System, and the properties that apply to it.
  #
  class Mysql::Models::DbSystemEndpoint
    MODES_ENUM = [
      MODES_READ = 'READ'.freeze,
      MODES_WRITE = 'WRITE'.freeze,
      MODES_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    STATUS_ENUM = [
      STATUS_ACTIVE = 'ACTIVE'.freeze,
      STATUS_INACTIVE = 'INACTIVE'.freeze,
      STATUS_UPDATING = 'UPDATING'.freeze,
      STATUS_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # The network address of the DB System.
    # @return [String]
    attr_accessor :hostname

    # **[Required]** The IP address the DB System is configured to listen on.
    # @return [String]
    attr_accessor :ip_address

    # **[Required]** The port the MySQL instance listens on.
    # @return [Integer]
    attr_accessor :port

    # **[Required]** The network port where to connect to use this endpoint using the X protocol.
    # @return [Integer]
    attr_accessor :port_x

    # The access modes from the client that this endpoint supports.
    # @return [Array<String>]
    attr_reader :modes

    # The state of the endpoints, as far as it can seen from the DB System.
    # There may be some inconsistency with the actual state of the MySQL service.
    #
    # @return [String]
    attr_reader :status

    # Additional information about the current endpoint status.
    # @return [String]
    attr_accessor :status_details

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'hostname': :'hostname',
        'ip_address': :'ipAddress',
        'port': :'port',
        'port_x': :'portX',
        'modes': :'modes',
        'status': :'status',
        'status_details': :'statusDetails'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'hostname': :'String',
        'ip_address': :'String',
        'port': :'Integer',
        'port_x': :'Integer',
        'modes': :'Array<String>',
        'status': :'String',
        'status_details': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :hostname The value to assign to the {#hostname} property
    # @option attributes [String] :ip_address The value to assign to the {#ip_address} property
    # @option attributes [Integer] :port The value to assign to the {#port} property
    # @option attributes [Integer] :port_x The value to assign to the {#port_x} property
    # @option attributes [Array<String>] :modes The value to assign to the {#modes} property
    # @option attributes [String] :status The value to assign to the {#status} property
    # @option attributes [String] :status_details The value to assign to the {#status_details} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.hostname = attributes[:'hostname'] if attributes[:'hostname']

      self.ip_address = attributes[:'ipAddress'] if attributes[:'ipAddress']

      raise 'You cannot provide both :ipAddress and :ip_address' if attributes.key?(:'ipAddress') && attributes.key?(:'ip_address')

      self.ip_address = attributes[:'ip_address'] if attributes[:'ip_address']

      self.port = attributes[:'port'] if attributes[:'port']

      self.port_x = attributes[:'portX'] if attributes[:'portX']

      raise 'You cannot provide both :portX and :port_x' if attributes.key?(:'portX') && attributes.key?(:'port_x')

      self.port_x = attributes[:'port_x'] if attributes[:'port_x']

      self.modes = attributes[:'modes'] if attributes[:'modes']

      self.status = attributes[:'status'] if attributes[:'status']

      self.status_details = attributes[:'statusDetails'] if attributes[:'statusDetails']

      raise 'You cannot provide both :statusDetails and :status_details' if attributes.key?(:'statusDetails') && attributes.key?(:'status_details')

      self.status_details = attributes[:'status_details'] if attributes[:'status_details']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] modes Object to be assigned
    def modes=(modes)
      # rubocop:disable Style/ConditionalAssignment
      if modes.nil?
        @modes = nil
      else
        @modes =
          modes.collect do |item|
            if MODES_ENUM.include?(item)
              item
            else
              OCI.logger.debug("Unknown value for 'modes' [#{item}]. Mapping to 'MODES_UNKNOWN_ENUM_VALUE'") if OCI.logger
              MODES_UNKNOWN_ENUM_VALUE
            end
          end
      end
      # rubocop:enable Style/ConditionalAssignment
    end

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

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        hostname == other.hostname &&
        ip_address == other.ip_address &&
        port == other.port &&
        port_x == other.port_x &&
        modes == other.modes &&
        status == other.status &&
        status_details == other.status_details
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
      [hostname, ip_address, port, port_x, modes, status, status_details].hash
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