# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The connection string profile to allow clients to group, filter and select connection string values based on structured metadata.
  #
  class Database::Models::DatabaseConnectionStringProfile
    CONSUMER_GROUP_ENUM = [
      CONSUMER_GROUP_HIGH = 'HIGH'.freeze,
      CONSUMER_GROUP_MEDIUM = 'MEDIUM'.freeze,
      CONSUMER_GROUP_LOW = 'LOW'.freeze,
      CONSUMER_GROUP_TP = 'TP'.freeze,
      CONSUMER_GROUP_TPURGENT = 'TPURGENT'.freeze,
      CONSUMER_GROUP_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    PROTOCOL_ENUM = [
      PROTOCOL_TCP = 'TCP'.freeze,
      PROTOCOL_TCPS = 'TCPS'.freeze,
      PROTOCOL_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    TLS_AUTHENTICATION_ENUM = [
      TLS_AUTHENTICATION_SERVER = 'SERVER'.freeze,
      TLS_AUTHENTICATION_MUTUAL = 'MUTUAL'.freeze,
      TLS_AUTHENTICATION_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    HOST_FORMAT_ENUM = [
      HOST_FORMAT_FQDN = 'FQDN'.freeze,
      HOST_FORMAT_IP = 'IP'.freeze,
      HOST_FORMAT_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    SESSION_MODE_ENUM = [
      SESSION_MODE_DIRECT = 'DIRECT'.freeze,
      SESSION_MODE_REDIRECT = 'REDIRECT'.freeze,
      SESSION_MODE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    SYNTAX_FORMAT_ENUM = [
      SYNTAX_FORMAT_LONG = 'LONG'.freeze,
      SYNTAX_FORMAT_EZCONNECT = 'EZCONNECT'.freeze,
      SYNTAX_FORMAT_EZCONNECTPLUS = 'EZCONNECTPLUS'.freeze,
      SYNTAX_FORMAT_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** A user-friendly name for the connection.
    # @return [String]
    attr_accessor :display_name

    # **[Required]** Connection string value.
    # @return [String]
    attr_accessor :value

    # Consumer group used by the connection.
    # @return [String]
    attr_reader :consumer_group

    # **[Required]** Protocol used by the connection.
    # @return [String]
    attr_reader :protocol

    # Specifies whether the TLS handshake is using one-way (`SERVER`) or mutual (`MUTUAL`) authentication.
    # @return [String]
    attr_reader :tls_authentication

    # **[Required]** Host format used in connection string.
    # @return [String]
    attr_reader :host_format

    # **[Required]** Specifies whether the listener performs a direct hand-off of the session, or redirects the session. In RAC deployments where SCAN is used, sessions are redirected to a Node VIP. Use `DIRECT` for direct hand-offs. Use `REDIRECT` to redirect the session.
    # @return [String]
    attr_reader :session_mode

    # **[Required]** Specifies whether the connection string is using the long (`LONG`), Easy Connect (`EZCONNECT`), or Easy Connect Plus (`EZCONNECTPLUS`) format.
    # Autonomous Databases on shared Exadata infrastructure always use the long format.
    #
    # @return [String]
    attr_reader :syntax_format

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'displayName',
        'value': :'value',
        'consumer_group': :'consumerGroup',
        'protocol': :'protocol',
        'tls_authentication': :'tlsAuthentication',
        'host_format': :'hostFormat',
        'session_mode': :'sessionMode',
        'syntax_format': :'syntaxFormat'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'String',
        'value': :'String',
        'consumer_group': :'String',
        'protocol': :'String',
        'tls_authentication': :'String',
        'host_format': :'String',
        'session_mode': :'String',
        'syntax_format': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :value The value to assign to the {#value} property
    # @option attributes [String] :consumer_group The value to assign to the {#consumer_group} property
    # @option attributes [String] :protocol The value to assign to the {#protocol} property
    # @option attributes [String] :tls_authentication The value to assign to the {#tls_authentication} property
    # @option attributes [String] :host_format The value to assign to the {#host_format} property
    # @option attributes [String] :session_mode The value to assign to the {#session_mode} property
    # @option attributes [String] :syntax_format The value to assign to the {#syntax_format} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.value = attributes[:'value'] if attributes[:'value']

      self.consumer_group = attributes[:'consumerGroup'] if attributes[:'consumerGroup']

      raise 'You cannot provide both :consumerGroup and :consumer_group' if attributes.key?(:'consumerGroup') && attributes.key?(:'consumer_group')

      self.consumer_group = attributes[:'consumer_group'] if attributes[:'consumer_group']

      self.protocol = attributes[:'protocol'] if attributes[:'protocol']

      self.tls_authentication = attributes[:'tlsAuthentication'] if attributes[:'tlsAuthentication']

      raise 'You cannot provide both :tlsAuthentication and :tls_authentication' if attributes.key?(:'tlsAuthentication') && attributes.key?(:'tls_authentication')

      self.tls_authentication = attributes[:'tls_authentication'] if attributes[:'tls_authentication']

      self.host_format = attributes[:'hostFormat'] if attributes[:'hostFormat']

      raise 'You cannot provide both :hostFormat and :host_format' if attributes.key?(:'hostFormat') && attributes.key?(:'host_format')

      self.host_format = attributes[:'host_format'] if attributes[:'host_format']

      self.session_mode = attributes[:'sessionMode'] if attributes[:'sessionMode']

      raise 'You cannot provide both :sessionMode and :session_mode' if attributes.key?(:'sessionMode') && attributes.key?(:'session_mode')

      self.session_mode = attributes[:'session_mode'] if attributes[:'session_mode']

      self.syntax_format = attributes[:'syntaxFormat'] if attributes[:'syntaxFormat']

      raise 'You cannot provide both :syntaxFormat and :syntax_format' if attributes.key?(:'syntaxFormat') && attributes.key?(:'syntax_format')

      self.syntax_format = attributes[:'syntax_format'] if attributes[:'syntax_format']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] consumer_group Object to be assigned
    def consumer_group=(consumer_group)
      # rubocop:disable Style/ConditionalAssignment
      if consumer_group && !CONSUMER_GROUP_ENUM.include?(consumer_group)
        OCI.logger.debug("Unknown value for 'consumer_group' [" + consumer_group + "]. Mapping to 'CONSUMER_GROUP_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @consumer_group = CONSUMER_GROUP_UNKNOWN_ENUM_VALUE
      else
        @consumer_group = consumer_group
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] protocol Object to be assigned
    def protocol=(protocol)
      # rubocop:disable Style/ConditionalAssignment
      if protocol && !PROTOCOL_ENUM.include?(protocol)
        OCI.logger.debug("Unknown value for 'protocol' [" + protocol + "]. Mapping to 'PROTOCOL_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @protocol = PROTOCOL_UNKNOWN_ENUM_VALUE
      else
        @protocol = protocol
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tls_authentication Object to be assigned
    def tls_authentication=(tls_authentication)
      # rubocop:disable Style/ConditionalAssignment
      if tls_authentication && !TLS_AUTHENTICATION_ENUM.include?(tls_authentication)
        OCI.logger.debug("Unknown value for 'tls_authentication' [" + tls_authentication + "]. Mapping to 'TLS_AUTHENTICATION_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @tls_authentication = TLS_AUTHENTICATION_UNKNOWN_ENUM_VALUE
      else
        @tls_authentication = tls_authentication
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] host_format Object to be assigned
    def host_format=(host_format)
      # rubocop:disable Style/ConditionalAssignment
      if host_format && !HOST_FORMAT_ENUM.include?(host_format)
        OCI.logger.debug("Unknown value for 'host_format' [" + host_format + "]. Mapping to 'HOST_FORMAT_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @host_format = HOST_FORMAT_UNKNOWN_ENUM_VALUE
      else
        @host_format = host_format
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] session_mode Object to be assigned
    def session_mode=(session_mode)
      # rubocop:disable Style/ConditionalAssignment
      if session_mode && !SESSION_MODE_ENUM.include?(session_mode)
        OCI.logger.debug("Unknown value for 'session_mode' [" + session_mode + "]. Mapping to 'SESSION_MODE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @session_mode = SESSION_MODE_UNKNOWN_ENUM_VALUE
      else
        @session_mode = session_mode
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] syntax_format Object to be assigned
    def syntax_format=(syntax_format)
      # rubocop:disable Style/ConditionalAssignment
      if syntax_format && !SYNTAX_FORMAT_ENUM.include?(syntax_format)
        OCI.logger.debug("Unknown value for 'syntax_format' [" + syntax_format + "]. Mapping to 'SYNTAX_FORMAT_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @syntax_format = SYNTAX_FORMAT_UNKNOWN_ENUM_VALUE
      else
        @syntax_format = syntax_format
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        display_name == other.display_name &&
        value == other.value &&
        consumer_group == other.consumer_group &&
        protocol == other.protocol &&
        tls_authentication == other.tls_authentication &&
        host_format == other.host_format &&
        session_mode == other.session_mode &&
        syntax_format == other.syntax_format
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
      [display_name, value, consumer_group, protocol, tls_authentication, host_format, session_mode, syntax_format].hash
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