# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Definition of a trace snapshot object.
  #
  class ApmTraces::Models::TraceSnapshot
    # **[Required]** Unique identifier (traceId) for the trace that represents the span set.  Note that this field is
    # defined as traceKey in the API and it maps to the traceId in the trace data in Application Performance
    # Monitoring.
    #
    # @return [String]
    attr_accessor :key

    # Start time of the trace.
    #
    # @return [DateTime]
    attr_accessor :time_started

    # End time of the trace.
    #
    # @return [DateTime]
    attr_accessor :time_ended

    # Trace snapshots properties.
    #
    # @return [Array<OCI::ApmTraces::Models::SnapshotDetail>]
    attr_accessor :trace_snapshot_details

    # **[Required]** List of spans.
    #
    # @return [Array<OCI::ApmTraces::Models::SpanSnapshot>]
    attr_accessor :span_snapshots

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'key',
        'time_started': :'timeStarted',
        'time_ended': :'timeEnded',
        'trace_snapshot_details': :'traceSnapshotDetails',
        'span_snapshots': :'spanSnapshots'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'String',
        'time_started': :'DateTime',
        'time_ended': :'DateTime',
        'trace_snapshot_details': :'Array<OCI::ApmTraces::Models::SnapshotDetail>',
        'span_snapshots': :'Array<OCI::ApmTraces::Models::SpanSnapshot>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :key The value to assign to the {#key} property
    # @option attributes [DateTime] :time_started The value to assign to the {#time_started} property
    # @option attributes [DateTime] :time_ended The value to assign to the {#time_ended} property
    # @option attributes [Array<OCI::ApmTraces::Models::SnapshotDetail>] :trace_snapshot_details The value to assign to the {#trace_snapshot_details} property
    # @option attributes [Array<OCI::ApmTraces::Models::SpanSnapshot>] :span_snapshots The value to assign to the {#span_snapshots} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.key = attributes[:'key'] if attributes[:'key']

      self.time_started = attributes[:'timeStarted'] if attributes[:'timeStarted']

      raise 'You cannot provide both :timeStarted and :time_started' if attributes.key?(:'timeStarted') && attributes.key?(:'time_started')

      self.time_started = attributes[:'time_started'] if attributes[:'time_started']

      self.time_ended = attributes[:'timeEnded'] if attributes[:'timeEnded']

      raise 'You cannot provide both :timeEnded and :time_ended' if attributes.key?(:'timeEnded') && attributes.key?(:'time_ended')

      self.time_ended = attributes[:'time_ended'] if attributes[:'time_ended']

      self.trace_snapshot_details = attributes[:'traceSnapshotDetails'] if attributes[:'traceSnapshotDetails']

      raise 'You cannot provide both :traceSnapshotDetails and :trace_snapshot_details' if attributes.key?(:'traceSnapshotDetails') && attributes.key?(:'trace_snapshot_details')

      self.trace_snapshot_details = attributes[:'trace_snapshot_details'] if attributes[:'trace_snapshot_details']

      self.span_snapshots = attributes[:'spanSnapshots'] if attributes[:'spanSnapshots']

      raise 'You cannot provide both :spanSnapshots and :span_snapshots' if attributes.key?(:'spanSnapshots') && attributes.key?(:'span_snapshots')

      self.span_snapshots = attributes[:'span_snapshots'] if attributes[:'span_snapshots']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        key == other.key &&
        time_started == other.time_started &&
        time_ended == other.time_ended &&
        trace_snapshot_details == other.trace_snapshot_details &&
        span_snapshots == other.span_snapshots
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
      [key, time_started, time_ended, trace_snapshot_details, span_snapshots].hash
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