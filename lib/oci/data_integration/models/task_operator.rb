# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'
require_relative 'operator'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # An operator for task
  class DataIntegration::Models::TaskOperator < DataIntegration::Models::Operator
    RETRY_DELAY_UNIT_ENUM = [
      RETRY_DELAY_UNIT_SECONDS = 'SECONDS'.freeze,
      RETRY_DELAY_UNIT_MINUTES = 'MINUTES'.freeze,
      RETRY_DELAY_UNIT_HOURS = 'HOURS'.freeze,
      RETRY_DELAY_UNIT_DAYS = 'DAYS'.freeze,
      RETRY_DELAY_UNIT_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    EXPECTED_DURATION_UNIT_ENUM = [
      EXPECTED_DURATION_UNIT_SECONDS = 'SECONDS'.freeze,
      EXPECTED_DURATION_UNIT_MINUTES = 'MINUTES'.freeze,
      EXPECTED_DURATION_UNIT_HOURS = 'HOURS'.freeze,
      EXPECTED_DURATION_UNIT_DAYS = 'DAYS'.freeze,
      EXPECTED_DURATION_UNIT_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    TASK_TYPE_ENUM = [
      TASK_TYPE_PIPELINE_TASK = 'PIPELINE_TASK'.freeze,
      TASK_TYPE_INTEGRATION_TASK = 'INTEGRATION_TASK'.freeze,
      TASK_TYPE_DATA_LOADER_TASK = 'DATA_LOADER_TASK'.freeze,
      TASK_TYPE_SQL_TASK = 'SQL_TASK'.freeze,
      TASK_TYPE_OCI_DATAFLOW_TASK = 'OCI_DATAFLOW_TASK'.freeze,
      TASK_TYPE_REST_TASK = 'REST_TASK'.freeze,
      TASK_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    TRIGGER_RULE_ENUM = [
      TRIGGER_RULE_ALL_SUCCESS = 'ALL_SUCCESS'.freeze,
      TRIGGER_RULE_ALL_FAILED = 'ALL_FAILED'.freeze,
      TRIGGER_RULE_ALL_COMPLETE = 'ALL_COMPLETE'.freeze,
      TRIGGER_RULE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # The number of retry attempts.
    # @return [Integer]
    attr_accessor :retry_attempts

    # The unit for the retry delay.
    # @return [String]
    attr_reader :retry_delay_unit

    # The retry delay, the unit for measurement is in the property retry delay unit.
    # @return [Float]
    attr_accessor :retry_delay

    # The expected duration for the task run.
    # @return [Float]
    attr_accessor :expected_duration

    # The expected duration unit of measure.
    # @return [String]
    attr_reader :expected_duration_unit

    # The type of the task referenced in the task property.
    # @return [String]
    attr_reader :task_type

    # @return [OCI::DataIntegration::Models::Task]
    attr_accessor :task

    # The merge condition. The conditions are
    # ALL_SUCCESS - All the preceeding operators need to be successful.
    # ALL_FAILED - All the preceeding operators should have failed.
    # ALL_COMPLETE - All the preceeding operators should have completed. It could have executed successfully or failed.
    #
    # @return [String]
    attr_reader :trigger_rule

    # @return [OCI::DataIntegration::Models::ConfigProvider]
    attr_accessor :config_provider_delegate

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'model_type': :'modelType',
        'key': :'key',
        'model_version': :'modelVersion',
        'parent_ref': :'parentRef',
        'name': :'name',
        'description': :'description',
        'object_version': :'objectVersion',
        'input_ports': :'inputPorts',
        'output_ports': :'outputPorts',
        'object_status': :'objectStatus',
        'identifier': :'identifier',
        'parameters': :'parameters',
        'op_config_values': :'opConfigValues',
        'retry_attempts': :'retryAttempts',
        'retry_delay_unit': :'retryDelayUnit',
        'retry_delay': :'retryDelay',
        'expected_duration': :'expectedDuration',
        'expected_duration_unit': :'expectedDurationUnit',
        'task_type': :'taskType',
        'task': :'task',
        'trigger_rule': :'triggerRule',
        'config_provider_delegate': :'configProviderDelegate'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'model_type': :'String',
        'key': :'String',
        'model_version': :'String',
        'parent_ref': :'OCI::DataIntegration::Models::ParentReference',
        'name': :'String',
        'description': :'String',
        'object_version': :'Integer',
        'input_ports': :'Array<OCI::DataIntegration::Models::InputPort>',
        'output_ports': :'Array<OCI::DataIntegration::Models::OutputPort>',
        'object_status': :'Integer',
        'identifier': :'String',
        'parameters': :'Array<OCI::DataIntegration::Models::Parameter>',
        'op_config_values': :'OCI::DataIntegration::Models::ConfigValues',
        'retry_attempts': :'Integer',
        'retry_delay_unit': :'String',
        'retry_delay': :'Float',
        'expected_duration': :'Float',
        'expected_duration_unit': :'String',
        'task_type': :'String',
        'task': :'OCI::DataIntegration::Models::Task',
        'trigger_rule': :'String',
        'config_provider_delegate': :'OCI::DataIntegration::Models::ConfigProvider'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :key The value to assign to the {OCI::DataIntegration::Models::Operator#key #key} proprety
    # @option attributes [String] :model_version The value to assign to the {OCI::DataIntegration::Models::Operator#model_version #model_version} proprety
    # @option attributes [OCI::DataIntegration::Models::ParentReference] :parent_ref The value to assign to the {OCI::DataIntegration::Models::Operator#parent_ref #parent_ref} proprety
    # @option attributes [String] :name The value to assign to the {OCI::DataIntegration::Models::Operator#name #name} proprety
    # @option attributes [String] :description The value to assign to the {OCI::DataIntegration::Models::Operator#description #description} proprety
    # @option attributes [Integer] :object_version The value to assign to the {OCI::DataIntegration::Models::Operator#object_version #object_version} proprety
    # @option attributes [Array<OCI::DataIntegration::Models::InputPort>] :input_ports The value to assign to the {OCI::DataIntegration::Models::Operator#input_ports #input_ports} proprety
    # @option attributes [Array<OCI::DataIntegration::Models::OutputPort>] :output_ports The value to assign to the {OCI::DataIntegration::Models::Operator#output_ports #output_ports} proprety
    # @option attributes [Integer] :object_status The value to assign to the {OCI::DataIntegration::Models::Operator#object_status #object_status} proprety
    # @option attributes [String] :identifier The value to assign to the {OCI::DataIntegration::Models::Operator#identifier #identifier} proprety
    # @option attributes [Array<OCI::DataIntegration::Models::Parameter>] :parameters The value to assign to the {OCI::DataIntegration::Models::Operator#parameters #parameters} proprety
    # @option attributes [OCI::DataIntegration::Models::ConfigValues] :op_config_values The value to assign to the {OCI::DataIntegration::Models::Operator#op_config_values #op_config_values} proprety
    # @option attributes [Integer] :retry_attempts The value to assign to the {#retry_attempts} property
    # @option attributes [String] :retry_delay_unit The value to assign to the {#retry_delay_unit} property
    # @option attributes [Float] :retry_delay The value to assign to the {#retry_delay} property
    # @option attributes [Float] :expected_duration The value to assign to the {#expected_duration} property
    # @option attributes [String] :expected_duration_unit The value to assign to the {#expected_duration_unit} property
    # @option attributes [String] :task_type The value to assign to the {#task_type} property
    # @option attributes [OCI::DataIntegration::Models::Task] :task The value to assign to the {#task} property
    # @option attributes [String] :trigger_rule The value to assign to the {#trigger_rule} property
    # @option attributes [OCI::DataIntegration::Models::ConfigProvider] :config_provider_delegate The value to assign to the {#config_provider_delegate} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes['modelType'] = 'TASK_OPERATOR'

      super(attributes)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.retry_attempts = attributes[:'retryAttempts'] if attributes[:'retryAttempts']

      raise 'You cannot provide both :retryAttempts and :retry_attempts' if attributes.key?(:'retryAttempts') && attributes.key?(:'retry_attempts')

      self.retry_attempts = attributes[:'retry_attempts'] if attributes[:'retry_attempts']

      self.retry_delay_unit = attributes[:'retryDelayUnit'] if attributes[:'retryDelayUnit']

      raise 'You cannot provide both :retryDelayUnit and :retry_delay_unit' if attributes.key?(:'retryDelayUnit') && attributes.key?(:'retry_delay_unit')

      self.retry_delay_unit = attributes[:'retry_delay_unit'] if attributes[:'retry_delay_unit']

      self.retry_delay = attributes[:'retryDelay'] if attributes[:'retryDelay']

      raise 'You cannot provide both :retryDelay and :retry_delay' if attributes.key?(:'retryDelay') && attributes.key?(:'retry_delay')

      self.retry_delay = attributes[:'retry_delay'] if attributes[:'retry_delay']

      self.expected_duration = attributes[:'expectedDuration'] if attributes[:'expectedDuration']

      raise 'You cannot provide both :expectedDuration and :expected_duration' if attributes.key?(:'expectedDuration') && attributes.key?(:'expected_duration')

      self.expected_duration = attributes[:'expected_duration'] if attributes[:'expected_duration']

      self.expected_duration_unit = attributes[:'expectedDurationUnit'] if attributes[:'expectedDurationUnit']

      raise 'You cannot provide both :expectedDurationUnit and :expected_duration_unit' if attributes.key?(:'expectedDurationUnit') && attributes.key?(:'expected_duration_unit')

      self.expected_duration_unit = attributes[:'expected_duration_unit'] if attributes[:'expected_duration_unit']

      self.task_type = attributes[:'taskType'] if attributes[:'taskType']

      raise 'You cannot provide both :taskType and :task_type' if attributes.key?(:'taskType') && attributes.key?(:'task_type')

      self.task_type = attributes[:'task_type'] if attributes[:'task_type']

      self.task = attributes[:'task'] if attributes[:'task']

      self.trigger_rule = attributes[:'triggerRule'] if attributes[:'triggerRule']
      self.trigger_rule = "ALL_SUCCESS" if trigger_rule.nil? && !attributes.key?(:'triggerRule') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :triggerRule and :trigger_rule' if attributes.key?(:'triggerRule') && attributes.key?(:'trigger_rule')

      self.trigger_rule = attributes[:'trigger_rule'] if attributes[:'trigger_rule']
      self.trigger_rule = "ALL_SUCCESS" if trigger_rule.nil? && !attributes.key?(:'triggerRule') && !attributes.key?(:'trigger_rule') # rubocop:disable Style/StringLiterals

      self.config_provider_delegate = attributes[:'configProviderDelegate'] if attributes[:'configProviderDelegate']

      raise 'You cannot provide both :configProviderDelegate and :config_provider_delegate' if attributes.key?(:'configProviderDelegate') && attributes.key?(:'config_provider_delegate')

      self.config_provider_delegate = attributes[:'config_provider_delegate'] if attributes[:'config_provider_delegate']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] retry_delay_unit Object to be assigned
    def retry_delay_unit=(retry_delay_unit)
      # rubocop:disable Style/ConditionalAssignment
      if retry_delay_unit && !RETRY_DELAY_UNIT_ENUM.include?(retry_delay_unit)
        OCI.logger.debug("Unknown value for 'retry_delay_unit' [" + retry_delay_unit + "]. Mapping to 'RETRY_DELAY_UNIT_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @retry_delay_unit = RETRY_DELAY_UNIT_UNKNOWN_ENUM_VALUE
      else
        @retry_delay_unit = retry_delay_unit
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expected_duration_unit Object to be assigned
    def expected_duration_unit=(expected_duration_unit)
      # rubocop:disable Style/ConditionalAssignment
      if expected_duration_unit && !EXPECTED_DURATION_UNIT_ENUM.include?(expected_duration_unit)
        OCI.logger.debug("Unknown value for 'expected_duration_unit' [" + expected_duration_unit + "]. Mapping to 'EXPECTED_DURATION_UNIT_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @expected_duration_unit = EXPECTED_DURATION_UNIT_UNKNOWN_ENUM_VALUE
      else
        @expected_duration_unit = expected_duration_unit
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] task_type Object to be assigned
    def task_type=(task_type)
      # rubocop:disable Style/ConditionalAssignment
      if task_type && !TASK_TYPE_ENUM.include?(task_type)
        OCI.logger.debug("Unknown value for 'task_type' [" + task_type + "]. Mapping to 'TASK_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @task_type = TASK_TYPE_UNKNOWN_ENUM_VALUE
      else
        @task_type = task_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] trigger_rule Object to be assigned
    def trigger_rule=(trigger_rule)
      # rubocop:disable Style/ConditionalAssignment
      if trigger_rule && !TRIGGER_RULE_ENUM.include?(trigger_rule)
        OCI.logger.debug("Unknown value for 'trigger_rule' [" + trigger_rule + "]. Mapping to 'TRIGGER_RULE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @trigger_rule = TRIGGER_RULE_UNKNOWN_ENUM_VALUE
      else
        @trigger_rule = trigger_rule
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        model_type == other.model_type &&
        key == other.key &&
        model_version == other.model_version &&
        parent_ref == other.parent_ref &&
        name == other.name &&
        description == other.description &&
        object_version == other.object_version &&
        input_ports == other.input_ports &&
        output_ports == other.output_ports &&
        object_status == other.object_status &&
        identifier == other.identifier &&
        parameters == other.parameters &&
        op_config_values == other.op_config_values &&
        retry_attempts == other.retry_attempts &&
        retry_delay_unit == other.retry_delay_unit &&
        retry_delay == other.retry_delay &&
        expected_duration == other.expected_duration &&
        expected_duration_unit == other.expected_duration_unit &&
        task_type == other.task_type &&
        task == other.task &&
        trigger_rule == other.trigger_rule &&
        config_provider_delegate == other.config_provider_delegate
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
      [model_type, key, model_version, parent_ref, name, description, object_version, input_ports, output_ports, object_status, identifier, parameters, op_config_values, retry_attempts, retry_delay_unit, retry_delay, expected_duration, expected_duration_unit, task_type, task, trigger_rule, config_provider_delegate].hash
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
