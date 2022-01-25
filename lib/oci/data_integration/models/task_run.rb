# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The information about a task run.
  class DataIntegration::Models::TaskRun
    STATUS_ENUM = [
      STATUS_NOT_STARTED = 'NOT_STARTED'.freeze,
      STATUS_QUEUED = 'QUEUED'.freeze,
      STATUS_RUNNING = 'RUNNING'.freeze,
      STATUS_TERMINATING = 'TERMINATING'.freeze,
      STATUS_TERMINATED = 'TERMINATED'.freeze,
      STATUS_SUCCESS = 'SUCCESS'.freeze,
      STATUS_ERROR = 'ERROR'.freeze,
      STATUS_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    EXPECTED_DURATION_UNIT_ENUM = [
      EXPECTED_DURATION_UNIT_SECONDS = 'SECONDS'.freeze,
      EXPECTED_DURATION_UNIT_MINUTES = 'MINUTES'.freeze,
      EXPECTED_DURATION_UNIT_HOURS = 'HOURS'.freeze,
      EXPECTED_DURATION_UNIT_DAYS = 'DAYS'.freeze,
      EXPECTED_DURATION_UNIT_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    AUTH_MODE_ENUM = [
      AUTH_MODE_OBO = 'OBO'.freeze,
      AUTH_MODE_RESOURCE_PRINCIPAL = 'RESOURCE_PRINCIPAL'.freeze,
      AUTH_MODE_USER_CERTIFICATE = 'USER_CERTIFICATE'.freeze,
      AUTH_MODE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    TASK_TYPE_ENUM = [
      TASK_TYPE_INTEGRATION_TASK = 'INTEGRATION_TASK'.freeze,
      TASK_TYPE_DATA_LOADER_TASK = 'DATA_LOADER_TASK'.freeze,
      TASK_TYPE_PIPELINE_TASK = 'PIPELINE_TASK'.freeze,
      TASK_TYPE_SQL_TASK = 'SQL_TASK'.freeze,
      TASK_TYPE_OCI_DATAFLOW_TASK = 'OCI_DATAFLOW_TASK'.freeze,
      TASK_TYPE_REST_TASK = 'REST_TASK'.freeze,
      TASK_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # The key of the object.
    # @return [String]
    attr_accessor :key

    # The type of the object.
    # @return [String]
    attr_accessor :model_type

    # The model version of an object.
    # @return [String]
    attr_accessor :model_version

    # @return [OCI::DataIntegration::Models::ParentReference]
    attr_accessor :parent_ref

    # Free form text without any restriction on permitted characters. Name can have letters, numbers, and special characters. The value is editable and is restricted to 1000 characters.
    # @return [String]
    attr_accessor :name

    # Detailed description for the object.
    # @return [String]
    attr_accessor :description

    # The version of the object that is used to track changes in the object instance.
    # @return [Integer]
    attr_accessor :object_version

    # @return [OCI::DataIntegration::Models::ConfigProvider]
    attr_accessor :config_provider

    # The status of the task run.
    # @return [String]
    attr_reader :status

    # The start time.
    # @return [Integer]
    attr_accessor :start_time_millis

    # The end time.
    # @return [Integer]
    attr_accessor :end_time_millis

    # The date and time the object was last updated.
    # @return [Integer]
    attr_accessor :last_updated

    # The number of records processed in the task run.
    # @return [Integer]
    attr_accessor :records_written

    # The number of bytes processed in the task run.
    # @return [Integer]
    attr_accessor :bytes_processed

    # Contains an error message if status is `ERROR`.
    # @return [String]
    attr_accessor :error_message

    # The expected duration for the task run.
    # @return [Float]
    attr_accessor :expected_duration

    # The expected duration unit of measure.
    # @return [String]
    attr_reader :expected_duration_unit

    # Task Key of the task for which TaskRun is being created. If not specified, the AggregatorKey in RegistryMetadata will be assumed to be the TaskKey
    # @return [String]
    attr_accessor :task_key

    # The external identifier for the task run.
    # @return [String]
    attr_accessor :external_id

    # Holds the particular attempt number.
    # @return [Integer]
    attr_accessor :retry_attempt

    # @return [OCI::DataIntegration::Models::TaskSchedule]
    attr_accessor :task_schedule

    # A map of metrics for the run.
    # @return [Hash<String, Float>]
    attr_accessor :metrics

    # A map of the outputs of the run.
    # @return [Hash<String, OCI::DataIntegration::Models::ParameterValue>]
    attr_accessor :outputs

    # An array of execution errors from the run.
    # @return [Array<String>]
    attr_accessor :execution_errors

    # An array of termination errors from the run.
    # @return [Array<String>]
    attr_accessor :termination_errors

    # The autorization mode for when the task was executed.
    # @return [String]
    attr_reader :auth_mode

    # The OPC request ID of execution of the task run.
    # @return [String]
    attr_accessor :opc_request_id

    # The status of an object that can be set to value 1 for shallow references across objects, other values reserved.
    # @return [Integer]
    attr_accessor :object_status

    # The type of task run.
    # @return [String]
    attr_reader :task_type

    # Value can only contain upper case letters, underscore and numbers. It should begin with upper case letter or underscore. The value can be modified.
    # @return [String]
    attr_accessor :identifier

    # @return [OCI::DataIntegration::Models::ObjectMetadata]
    attr_accessor :metadata

    # A key map. If provided, key is replaced with generated key. This structure provides mapping between user provided key and generated key.
    # @return [Hash<String, String>]
    attr_accessor :key_map

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'key',
        'model_type': :'modelType',
        'model_version': :'modelVersion',
        'parent_ref': :'parentRef',
        'name': :'name',
        'description': :'description',
        'object_version': :'objectVersion',
        'config_provider': :'configProvider',
        'status': :'status',
        'start_time_millis': :'startTimeMillis',
        'end_time_millis': :'endTimeMillis',
        'last_updated': :'lastUpdated',
        'records_written': :'recordsWritten',
        'bytes_processed': :'bytesProcessed',
        'error_message': :'errorMessage',
        'expected_duration': :'expectedDuration',
        'expected_duration_unit': :'expectedDurationUnit',
        'task_key': :'taskKey',
        'external_id': :'externalId',
        'retry_attempt': :'retryAttempt',
        'task_schedule': :'taskSchedule',
        'metrics': :'metrics',
        'outputs': :'outputs',
        'execution_errors': :'executionErrors',
        'termination_errors': :'terminationErrors',
        'auth_mode': :'authMode',
        'opc_request_id': :'opcRequestId',
        'object_status': :'objectStatus',
        'task_type': :'taskType',
        'identifier': :'identifier',
        'metadata': :'metadata',
        'key_map': :'keyMap'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'String',
        'model_type': :'String',
        'model_version': :'String',
        'parent_ref': :'OCI::DataIntegration::Models::ParentReference',
        'name': :'String',
        'description': :'String',
        'object_version': :'Integer',
        'config_provider': :'OCI::DataIntegration::Models::ConfigProvider',
        'status': :'String',
        'start_time_millis': :'Integer',
        'end_time_millis': :'Integer',
        'last_updated': :'Integer',
        'records_written': :'Integer',
        'bytes_processed': :'Integer',
        'error_message': :'String',
        'expected_duration': :'Float',
        'expected_duration_unit': :'String',
        'task_key': :'String',
        'external_id': :'String',
        'retry_attempt': :'Integer',
        'task_schedule': :'OCI::DataIntegration::Models::TaskSchedule',
        'metrics': :'Hash<String, Float>',
        'outputs': :'Hash<String, OCI::DataIntegration::Models::ParameterValue>',
        'execution_errors': :'Array<String>',
        'termination_errors': :'Array<String>',
        'auth_mode': :'String',
        'opc_request_id': :'String',
        'object_status': :'Integer',
        'task_type': :'String',
        'identifier': :'String',
        'metadata': :'OCI::DataIntegration::Models::ObjectMetadata',
        'key_map': :'Hash<String, String>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :key The value to assign to the {#key} property
    # @option attributes [String] :model_type The value to assign to the {#model_type} property
    # @option attributes [String] :model_version The value to assign to the {#model_version} property
    # @option attributes [OCI::DataIntegration::Models::ParentReference] :parent_ref The value to assign to the {#parent_ref} property
    # @option attributes [String] :name The value to assign to the {#name} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [Integer] :object_version The value to assign to the {#object_version} property
    # @option attributes [OCI::DataIntegration::Models::ConfigProvider] :config_provider The value to assign to the {#config_provider} property
    # @option attributes [String] :status The value to assign to the {#status} property
    # @option attributes [Integer] :start_time_millis The value to assign to the {#start_time_millis} property
    # @option attributes [Integer] :end_time_millis The value to assign to the {#end_time_millis} property
    # @option attributes [Integer] :last_updated The value to assign to the {#last_updated} property
    # @option attributes [Integer] :records_written The value to assign to the {#records_written} property
    # @option attributes [Integer] :bytes_processed The value to assign to the {#bytes_processed} property
    # @option attributes [String] :error_message The value to assign to the {#error_message} property
    # @option attributes [Float] :expected_duration The value to assign to the {#expected_duration} property
    # @option attributes [String] :expected_duration_unit The value to assign to the {#expected_duration_unit} property
    # @option attributes [String] :task_key The value to assign to the {#task_key} property
    # @option attributes [String] :external_id The value to assign to the {#external_id} property
    # @option attributes [Integer] :retry_attempt The value to assign to the {#retry_attempt} property
    # @option attributes [OCI::DataIntegration::Models::TaskSchedule] :task_schedule The value to assign to the {#task_schedule} property
    # @option attributes [Hash<String, Float>] :metrics The value to assign to the {#metrics} property
    # @option attributes [Hash<String, OCI::DataIntegration::Models::ParameterValue>] :outputs The value to assign to the {#outputs} property
    # @option attributes [Array<String>] :execution_errors The value to assign to the {#execution_errors} property
    # @option attributes [Array<String>] :termination_errors The value to assign to the {#termination_errors} property
    # @option attributes [String] :auth_mode The value to assign to the {#auth_mode} property
    # @option attributes [String] :opc_request_id The value to assign to the {#opc_request_id} property
    # @option attributes [Integer] :object_status The value to assign to the {#object_status} property
    # @option attributes [String] :task_type The value to assign to the {#task_type} property
    # @option attributes [String] :identifier The value to assign to the {#identifier} property
    # @option attributes [OCI::DataIntegration::Models::ObjectMetadata] :metadata The value to assign to the {#metadata} property
    # @option attributes [Hash<String, String>] :key_map The value to assign to the {#key_map} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.key = attributes[:'key'] if attributes[:'key']

      self.model_type = attributes[:'modelType'] if attributes[:'modelType']

      raise 'You cannot provide both :modelType and :model_type' if attributes.key?(:'modelType') && attributes.key?(:'model_type')

      self.model_type = attributes[:'model_type'] if attributes[:'model_type']

      self.model_version = attributes[:'modelVersion'] if attributes[:'modelVersion']

      raise 'You cannot provide both :modelVersion and :model_version' if attributes.key?(:'modelVersion') && attributes.key?(:'model_version')

      self.model_version = attributes[:'model_version'] if attributes[:'model_version']

      self.parent_ref = attributes[:'parentRef'] if attributes[:'parentRef']

      raise 'You cannot provide both :parentRef and :parent_ref' if attributes.key?(:'parentRef') && attributes.key?(:'parent_ref')

      self.parent_ref = attributes[:'parent_ref'] if attributes[:'parent_ref']

      self.name = attributes[:'name'] if attributes[:'name']

      self.description = attributes[:'description'] if attributes[:'description']

      self.object_version = attributes[:'objectVersion'] if attributes[:'objectVersion']

      raise 'You cannot provide both :objectVersion and :object_version' if attributes.key?(:'objectVersion') && attributes.key?(:'object_version')

      self.object_version = attributes[:'object_version'] if attributes[:'object_version']

      self.config_provider = attributes[:'configProvider'] if attributes[:'configProvider']

      raise 'You cannot provide both :configProvider and :config_provider' if attributes.key?(:'configProvider') && attributes.key?(:'config_provider')

      self.config_provider = attributes[:'config_provider'] if attributes[:'config_provider']

      self.status = attributes[:'status'] if attributes[:'status']

      self.start_time_millis = attributes[:'startTimeMillis'] if attributes[:'startTimeMillis']

      raise 'You cannot provide both :startTimeMillis and :start_time_millis' if attributes.key?(:'startTimeMillis') && attributes.key?(:'start_time_millis')

      self.start_time_millis = attributes[:'start_time_millis'] if attributes[:'start_time_millis']

      self.end_time_millis = attributes[:'endTimeMillis'] if attributes[:'endTimeMillis']

      raise 'You cannot provide both :endTimeMillis and :end_time_millis' if attributes.key?(:'endTimeMillis') && attributes.key?(:'end_time_millis')

      self.end_time_millis = attributes[:'end_time_millis'] if attributes[:'end_time_millis']

      self.last_updated = attributes[:'lastUpdated'] if attributes[:'lastUpdated']

      raise 'You cannot provide both :lastUpdated and :last_updated' if attributes.key?(:'lastUpdated') && attributes.key?(:'last_updated')

      self.last_updated = attributes[:'last_updated'] if attributes[:'last_updated']

      self.records_written = attributes[:'recordsWritten'] if attributes[:'recordsWritten']

      raise 'You cannot provide both :recordsWritten and :records_written' if attributes.key?(:'recordsWritten') && attributes.key?(:'records_written')

      self.records_written = attributes[:'records_written'] if attributes[:'records_written']

      self.bytes_processed = attributes[:'bytesProcessed'] if attributes[:'bytesProcessed']

      raise 'You cannot provide both :bytesProcessed and :bytes_processed' if attributes.key?(:'bytesProcessed') && attributes.key?(:'bytes_processed')

      self.bytes_processed = attributes[:'bytes_processed'] if attributes[:'bytes_processed']

      self.error_message = attributes[:'errorMessage'] if attributes[:'errorMessage']

      raise 'You cannot provide both :errorMessage and :error_message' if attributes.key?(:'errorMessage') && attributes.key?(:'error_message')

      self.error_message = attributes[:'error_message'] if attributes[:'error_message']

      self.expected_duration = attributes[:'expectedDuration'] if attributes[:'expectedDuration']

      raise 'You cannot provide both :expectedDuration and :expected_duration' if attributes.key?(:'expectedDuration') && attributes.key?(:'expected_duration')

      self.expected_duration = attributes[:'expected_duration'] if attributes[:'expected_duration']

      self.expected_duration_unit = attributes[:'expectedDurationUnit'] if attributes[:'expectedDurationUnit']

      raise 'You cannot provide both :expectedDurationUnit and :expected_duration_unit' if attributes.key?(:'expectedDurationUnit') && attributes.key?(:'expected_duration_unit')

      self.expected_duration_unit = attributes[:'expected_duration_unit'] if attributes[:'expected_duration_unit']

      self.task_key = attributes[:'taskKey'] if attributes[:'taskKey']

      raise 'You cannot provide both :taskKey and :task_key' if attributes.key?(:'taskKey') && attributes.key?(:'task_key')

      self.task_key = attributes[:'task_key'] if attributes[:'task_key']

      self.external_id = attributes[:'externalId'] if attributes[:'externalId']

      raise 'You cannot provide both :externalId and :external_id' if attributes.key?(:'externalId') && attributes.key?(:'external_id')

      self.external_id = attributes[:'external_id'] if attributes[:'external_id']

      self.retry_attempt = attributes[:'retryAttempt'] if attributes[:'retryAttempt']

      raise 'You cannot provide both :retryAttempt and :retry_attempt' if attributes.key?(:'retryAttempt') && attributes.key?(:'retry_attempt')

      self.retry_attempt = attributes[:'retry_attempt'] if attributes[:'retry_attempt']

      self.task_schedule = attributes[:'taskSchedule'] if attributes[:'taskSchedule']

      raise 'You cannot provide both :taskSchedule and :task_schedule' if attributes.key?(:'taskSchedule') && attributes.key?(:'task_schedule')

      self.task_schedule = attributes[:'task_schedule'] if attributes[:'task_schedule']

      self.metrics = attributes[:'metrics'] if attributes[:'metrics']

      self.outputs = attributes[:'outputs'] if attributes[:'outputs']

      self.execution_errors = attributes[:'executionErrors'] if attributes[:'executionErrors']

      raise 'You cannot provide both :executionErrors and :execution_errors' if attributes.key?(:'executionErrors') && attributes.key?(:'execution_errors')

      self.execution_errors = attributes[:'execution_errors'] if attributes[:'execution_errors']

      self.termination_errors = attributes[:'terminationErrors'] if attributes[:'terminationErrors']

      raise 'You cannot provide both :terminationErrors and :termination_errors' if attributes.key?(:'terminationErrors') && attributes.key?(:'termination_errors')

      self.termination_errors = attributes[:'termination_errors'] if attributes[:'termination_errors']

      self.auth_mode = attributes[:'authMode'] if attributes[:'authMode']

      raise 'You cannot provide both :authMode and :auth_mode' if attributes.key?(:'authMode') && attributes.key?(:'auth_mode')

      self.auth_mode = attributes[:'auth_mode'] if attributes[:'auth_mode']

      self.opc_request_id = attributes[:'opcRequestId'] if attributes[:'opcRequestId']

      raise 'You cannot provide both :opcRequestId and :opc_request_id' if attributes.key?(:'opcRequestId') && attributes.key?(:'opc_request_id')

      self.opc_request_id = attributes[:'opc_request_id'] if attributes[:'opc_request_id']

      self.object_status = attributes[:'objectStatus'] if attributes[:'objectStatus']

      raise 'You cannot provide both :objectStatus and :object_status' if attributes.key?(:'objectStatus') && attributes.key?(:'object_status')

      self.object_status = attributes[:'object_status'] if attributes[:'object_status']

      self.task_type = attributes[:'taskType'] if attributes[:'taskType']

      raise 'You cannot provide both :taskType and :task_type' if attributes.key?(:'taskType') && attributes.key?(:'task_type')

      self.task_type = attributes[:'task_type'] if attributes[:'task_type']

      self.identifier = attributes[:'identifier'] if attributes[:'identifier']

      self.metadata = attributes[:'metadata'] if attributes[:'metadata']

      self.key_map = attributes[:'keyMap'] if attributes[:'keyMap']

      raise 'You cannot provide both :keyMap and :key_map' if attributes.key?(:'keyMap') && attributes.key?(:'key_map')

      self.key_map = attributes[:'key_map'] if attributes[:'key_map']
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
    # @param [Object] auth_mode Object to be assigned
    def auth_mode=(auth_mode)
      # rubocop:disable Style/ConditionalAssignment
      if auth_mode && !AUTH_MODE_ENUM.include?(auth_mode)
        OCI.logger.debug("Unknown value for 'auth_mode' [" + auth_mode + "]. Mapping to 'AUTH_MODE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @auth_mode = AUTH_MODE_UNKNOWN_ENUM_VALUE
      else
        @auth_mode = auth_mode
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

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        key == other.key &&
        model_type == other.model_type &&
        model_version == other.model_version &&
        parent_ref == other.parent_ref &&
        name == other.name &&
        description == other.description &&
        object_version == other.object_version &&
        config_provider == other.config_provider &&
        status == other.status &&
        start_time_millis == other.start_time_millis &&
        end_time_millis == other.end_time_millis &&
        last_updated == other.last_updated &&
        records_written == other.records_written &&
        bytes_processed == other.bytes_processed &&
        error_message == other.error_message &&
        expected_duration == other.expected_duration &&
        expected_duration_unit == other.expected_duration_unit &&
        task_key == other.task_key &&
        external_id == other.external_id &&
        retry_attempt == other.retry_attempt &&
        task_schedule == other.task_schedule &&
        metrics == other.metrics &&
        outputs == other.outputs &&
        execution_errors == other.execution_errors &&
        termination_errors == other.termination_errors &&
        auth_mode == other.auth_mode &&
        opc_request_id == other.opc_request_id &&
        object_status == other.object_status &&
        task_type == other.task_type &&
        identifier == other.identifier &&
        metadata == other.metadata &&
        key_map == other.key_map
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
      [key, model_type, model_version, parent_ref, name, description, object_version, config_provider, status, start_time_millis, end_time_millis, last_updated, records_written, bytes_processed, error_message, expected_duration, expected_duration_unit, task_key, external_id, retry_attempt, task_schedule, metrics, outputs, execution_errors, termination_errors, auth_mode, opc_request_id, object_status, task_type, identifier, metadata, key_map].hash
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
