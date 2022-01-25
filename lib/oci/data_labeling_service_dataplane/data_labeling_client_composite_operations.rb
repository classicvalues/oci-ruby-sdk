# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # This class provides a wrapper around {OCI::DataLabelingServiceDataplane::DataLabelingClient} and offers convenience methods
  # for operations that would otherwise need to be chained together. For example, instead of performing an action
  # on a resource (e.g. launching an instance, creating a load balancer) and then using a waiter to wait for the resource
  # to enter a given state, you can call a single method in this class to accomplish the same functionality
  class DataLabelingServiceDataplane::DataLabelingClientCompositeOperations
    # The {OCI::DataLabelingServiceDataplane::DataLabelingClient} used to communicate with the service_client
    #
    # @return [OCI::DataLabelingServiceDataplane::DataLabelingClient]
    attr_reader :service_client

    # Initializes a new DataLabelingClientCompositeOperations
    #
    # @param [OCI::DataLabelingServiceDataplane::DataLabelingClient] service_client The client used to communicate with the service.
    #   Defaults to a new service client created via {OCI::DataLabelingServiceDataplane::DataLabelingClient#initialize} with no arguments
    def initialize(service_client = OCI::DataLabelingServiceDataplane::DataLabelingClient.new)
      @service_client = service_client
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/ParameterLists, Metrics/PerceivedComplexity
    # rubocop:disable Layout/EmptyLines


    # Calls {OCI::DataLabelingServiceDataplane::DataLabelingClient#create_annotation} and then waits for the {OCI::DataLabelingServiceDataplane::Models::Annotation} acted upon
    # to enter the given state(s).
    #
    # @param [OCI::DataLabelingServiceDataplane::Models::CreateAnnotationDetails] create_annotation_details Details for the new CreateAnnotation.
    # @param [Array<String>] wait_for_states An array of states to wait on. These should be valid values for {OCI::DataLabelingServiceDataplane::Models::Annotation#lifecycle_state}
    # @param [Hash] base_operation_opts Any optional arguments accepted by {OCI::DataLabelingServiceDataplane::DataLabelingClient#create_annotation}
    # @param [Hash] waiter_opts Optional arguments for the waiter. Keys should be symbols, and the following keys are supported:
    #   * max_interval_seconds: The maximum interval between queries, in seconds.
    #   * max_wait_seconds The maximum time to wait, in seconds
    #
    # @return [OCI::Response] A {OCI::Response} object with data of type {OCI::DataLabelingServiceDataplane::Models::Annotation}
    def create_annotation_and_wait_for_state(create_annotation_details, wait_for_states = [], base_operation_opts = {}, waiter_opts = {})
      operation_result = @service_client.create_annotation(create_annotation_details, base_operation_opts)

      return operation_result if wait_for_states.empty?

      lowered_wait_for_states = wait_for_states.map(&:downcase)
      wait_for_resource_id = operation_result.data.id

      begin
        waiter_result = @service_client.get_annotation(wait_for_resource_id).wait_until(
          eval_proc: ->(response) { response.data.respond_to?(:lifecycle_state) && lowered_wait_for_states.include?(response.data.lifecycle_state.downcase) },
          max_interval_seconds: waiter_opts.key?(:max_interval_seconds) ? waiter_opts[:max_interval_seconds] : 30,
          max_wait_seconds: waiter_opts.key?(:max_wait_seconds) ? waiter_opts[:max_wait_seconds] : 1200
        )
        result_to_return = waiter_result

        return result_to_return
      rescue StandardError
        raise OCI::Errors::CompositeOperationError.new(partial_results: [operation_result])
      end
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/ParameterLists, Metrics/PerceivedComplexity
    # rubocop:enable Layout/EmptyLines

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/ParameterLists, Metrics/PerceivedComplexity
    # rubocop:disable Layout/EmptyLines


    # Calls {OCI::DataLabelingServiceDataplane::DataLabelingClient#create_record} and then waits for the {OCI::DataLabelingServiceDataplane::Models::Record} acted upon
    # to enter the given state(s).
    #
    # @param [OCI::DataLabelingServiceDataplane::Models::CreateRecordDetails] create_record_details The details for the new record.
    # @param [Array<String>] wait_for_states An array of states to wait on. These should be valid values for {OCI::DataLabelingServiceDataplane::Models::Record#lifecycle_state}
    # @param [Hash] base_operation_opts Any optional arguments accepted by {OCI::DataLabelingServiceDataplane::DataLabelingClient#create_record}
    # @param [Hash] waiter_opts Optional arguments for the waiter. Keys should be symbols, and the following keys are supported:
    #   * max_interval_seconds: The maximum interval between queries, in seconds.
    #   * max_wait_seconds The maximum time to wait, in seconds
    #
    # @return [OCI::Response] A {OCI::Response} object with data of type {OCI::DataLabelingServiceDataplane::Models::Record}
    def create_record_and_wait_for_state(create_record_details, wait_for_states = [], base_operation_opts = {}, waiter_opts = {})
      operation_result = @service_client.create_record(create_record_details, base_operation_opts)

      return operation_result if wait_for_states.empty?

      lowered_wait_for_states = wait_for_states.map(&:downcase)
      wait_for_resource_id = operation_result.data.id

      begin
        waiter_result = @service_client.get_record(wait_for_resource_id).wait_until(
          eval_proc: ->(response) { response.data.respond_to?(:lifecycle_state) && lowered_wait_for_states.include?(response.data.lifecycle_state.downcase) },
          max_interval_seconds: waiter_opts.key?(:max_interval_seconds) ? waiter_opts[:max_interval_seconds] : 30,
          max_wait_seconds: waiter_opts.key?(:max_wait_seconds) ? waiter_opts[:max_wait_seconds] : 1200
        )
        result_to_return = waiter_result

        return result_to_return
      rescue StandardError
        raise OCI::Errors::CompositeOperationError.new(partial_results: [operation_result])
      end
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/ParameterLists, Metrics/PerceivedComplexity
    # rubocop:enable Layout/EmptyLines

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/ParameterLists, Metrics/PerceivedComplexity
    # rubocop:disable Layout/EmptyLines


    # Calls {OCI::DataLabelingServiceDataplane::DataLabelingClient#delete_annotation} and then waits for the {OCI::DataLabelingServiceDataplane::Models::Annotation} acted upon
    # to enter the given state(s).
    #
    # @param [String] annotation_id A unique annotation identifier.
    # @param [Array<String>] wait_for_states An array of states to wait on. These should be valid values for {OCI::DataLabelingServiceDataplane::Models::Annotation#lifecycle_state}
    # @param [Hash] base_operation_opts Any optional arguments accepted by {OCI::DataLabelingServiceDataplane::DataLabelingClient#delete_annotation}
    # @param [Hash] waiter_opts Optional arguments for the waiter. Keys should be symbols, and the following keys are supported:
    #   * max_interval_seconds: The maximum interval between queries, in seconds.
    #   * max_wait_seconds The maximum time to wait, in seconds
    #
    # @return [OCI::Response] A {OCI::Response} object with data of type nil
    def delete_annotation_and_wait_for_state(annotation_id, wait_for_states = [], base_operation_opts = {}, waiter_opts = {})
      initial_get_result = @service_client.get_annotation(annotation_id)
      operation_result = @service_client.delete_annotation(annotation_id, base_operation_opts)

      return operation_result if wait_for_states.empty?

      lowered_wait_for_states = wait_for_states.map(&:downcase)

      begin
        waiter_result = initial_get_result.wait_until(
          eval_proc: ->(response) { response.data.respond_to?(:lifecycle_state) && lowered_wait_for_states.include?(response.data.lifecycle_state.downcase) },
          max_interval_seconds: waiter_opts.key?(:max_interval_seconds) ? waiter_opts[:max_interval_seconds] : 30,
          max_wait_seconds: waiter_opts.key?(:max_wait_seconds) ? waiter_opts[:max_wait_seconds] : 1200,
          succeed_on_not_found: true
        )
        result_to_return = waiter_result

        return result_to_return
      rescue StandardError
        raise OCI::Errors::CompositeOperationError.new(partial_results: [operation_result])
      end
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/ParameterLists, Metrics/PerceivedComplexity
    # rubocop:enable Layout/EmptyLines

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/ParameterLists, Metrics/PerceivedComplexity
    # rubocop:disable Layout/EmptyLines


    # Calls {OCI::DataLabelingServiceDataplane::DataLabelingClient#delete_record} and then waits for the {OCI::DataLabelingServiceDataplane::Models::Record} acted upon
    # to enter the given state(s).
    #
    # @param [String] record_id The OCID of the record annotated.
    # @param [Array<String>] wait_for_states An array of states to wait on. These should be valid values for {OCI::DataLabelingServiceDataplane::Models::Record#lifecycle_state}
    # @param [Hash] base_operation_opts Any optional arguments accepted by {OCI::DataLabelingServiceDataplane::DataLabelingClient#delete_record}
    # @param [Hash] waiter_opts Optional arguments for the waiter. Keys should be symbols, and the following keys are supported:
    #   * max_interval_seconds: The maximum interval between queries, in seconds.
    #   * max_wait_seconds The maximum time to wait, in seconds
    #
    # @return [OCI::Response] A {OCI::Response} object with data of type nil
    def delete_record_and_wait_for_state(record_id, wait_for_states = [], base_operation_opts = {}, waiter_opts = {})
      initial_get_result = @service_client.get_record(record_id)
      operation_result = @service_client.delete_record(record_id, base_operation_opts)

      return operation_result if wait_for_states.empty?

      lowered_wait_for_states = wait_for_states.map(&:downcase)

      begin
        waiter_result = initial_get_result.wait_until(
          eval_proc: ->(response) { response.data.respond_to?(:lifecycle_state) && lowered_wait_for_states.include?(response.data.lifecycle_state.downcase) },
          max_interval_seconds: waiter_opts.key?(:max_interval_seconds) ? waiter_opts[:max_interval_seconds] : 30,
          max_wait_seconds: waiter_opts.key?(:max_wait_seconds) ? waiter_opts[:max_wait_seconds] : 1200,
          succeed_on_not_found: true
        )
        result_to_return = waiter_result

        return result_to_return
      rescue StandardError
        raise OCI::Errors::CompositeOperationError.new(partial_results: [operation_result])
      end
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/ParameterLists, Metrics/PerceivedComplexity
    # rubocop:enable Layout/EmptyLines

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/ParameterLists, Metrics/PerceivedComplexity
    # rubocop:disable Layout/EmptyLines


    # Calls {OCI::DataLabelingServiceDataplane::DataLabelingClient#update_annotation} and then waits for the {OCI::DataLabelingServiceDataplane::Models::Annotation} acted upon
    # to enter the given state(s).
    #
    # @param [String] annotation_id A unique annotation identifier.
    # @param [OCI::DataLabelingServiceDataplane::Models::UpdateAnnotationDetails] update_annotation_details The information to be updated.
    # @param [Array<String>] wait_for_states An array of states to wait on. These should be valid values for {OCI::DataLabelingServiceDataplane::Models::Annotation#lifecycle_state}
    # @param [Hash] base_operation_opts Any optional arguments accepted by {OCI::DataLabelingServiceDataplane::DataLabelingClient#update_annotation}
    # @param [Hash] waiter_opts Optional arguments for the waiter. Keys should be symbols, and the following keys are supported:
    #   * max_interval_seconds: The maximum interval between queries, in seconds.
    #   * max_wait_seconds The maximum time to wait, in seconds
    #
    # @return [OCI::Response] A {OCI::Response} object with data of type {OCI::DataLabelingServiceDataplane::Models::Annotation}
    def update_annotation_and_wait_for_state(annotation_id, update_annotation_details, wait_for_states = [], base_operation_opts = {}, waiter_opts = {})
      operation_result = @service_client.update_annotation(annotation_id, update_annotation_details, base_operation_opts)

      return operation_result if wait_for_states.empty?

      lowered_wait_for_states = wait_for_states.map(&:downcase)
      wait_for_resource_id = operation_result.data.id

      begin
        waiter_result = @service_client.get_annotation(wait_for_resource_id).wait_until(
          eval_proc: ->(response) { response.data.respond_to?(:lifecycle_state) && lowered_wait_for_states.include?(response.data.lifecycle_state.downcase) },
          max_interval_seconds: waiter_opts.key?(:max_interval_seconds) ? waiter_opts[:max_interval_seconds] : 30,
          max_wait_seconds: waiter_opts.key?(:max_wait_seconds) ? waiter_opts[:max_wait_seconds] : 1200
        )
        result_to_return = waiter_result

        return result_to_return
      rescue StandardError
        raise OCI::Errors::CompositeOperationError.new(partial_results: [operation_result])
      end
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/ParameterLists, Metrics/PerceivedComplexity
    # rubocop:enable Layout/EmptyLines

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/ParameterLists, Metrics/PerceivedComplexity
    # rubocop:disable Layout/EmptyLines


    # Calls {OCI::DataLabelingServiceDataplane::DataLabelingClient#update_record} and then waits for the {OCI::DataLabelingServiceDataplane::Models::Record} acted upon
    # to enter the given state(s).
    #
    # @param [String] record_id The OCID of the record annotated.
    # @param [OCI::DataLabelingServiceDataplane::Models::UpdateRecordDetails] update_record_details Information to be updated.
    # @param [Array<String>] wait_for_states An array of states to wait on. These should be valid values for {OCI::DataLabelingServiceDataplane::Models::Record#lifecycle_state}
    # @param [Hash] base_operation_opts Any optional arguments accepted by {OCI::DataLabelingServiceDataplane::DataLabelingClient#update_record}
    # @param [Hash] waiter_opts Optional arguments for the waiter. Keys should be symbols, and the following keys are supported:
    #   * max_interval_seconds: The maximum interval between queries, in seconds.
    #   * max_wait_seconds The maximum time to wait, in seconds
    #
    # @return [OCI::Response] A {OCI::Response} object with data of type {OCI::DataLabelingServiceDataplane::Models::Record}
    def update_record_and_wait_for_state(record_id, update_record_details, wait_for_states = [], base_operation_opts = {}, waiter_opts = {})
      operation_result = @service_client.update_record(record_id, update_record_details, base_operation_opts)

      return operation_result if wait_for_states.empty?

      lowered_wait_for_states = wait_for_states.map(&:downcase)
      wait_for_resource_id = operation_result.data.id

      begin
        waiter_result = @service_client.get_record(wait_for_resource_id).wait_until(
          eval_proc: ->(response) { response.data.respond_to?(:lifecycle_state) && lowered_wait_for_states.include?(response.data.lifecycle_state.downcase) },
          max_interval_seconds: waiter_opts.key?(:max_interval_seconds) ? waiter_opts[:max_interval_seconds] : 30,
          max_wait_seconds: waiter_opts.key?(:max_wait_seconds) ? waiter_opts[:max_wait_seconds] : 1200
        )
        result_to_return = waiter_result

        return result_to_return
      rescue StandardError
        raise OCI::Errors::CompositeOperationError.new(partial_results: [operation_result])
      end
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/ParameterLists, Metrics/PerceivedComplexity
    # rubocop:enable Layout/EmptyLines
  end
end
# rubocop:enable Lint/UnneededCopDisableDirective, Metrics/LineLength