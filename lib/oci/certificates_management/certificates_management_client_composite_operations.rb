# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # This class provides a wrapper around {OCI::CertificatesManagement::CertificatesManagementClient} and offers convenience methods
  # for operations that would otherwise need to be chained together. For example, instead of performing an action
  # on a resource (e.g. launching an instance, creating a load balancer) and then using a waiter to wait for the resource
  # to enter a given state, you can call a single method in this class to accomplish the same functionality
  class CertificatesManagement::CertificatesManagementClientCompositeOperations
    # The {OCI::CertificatesManagement::CertificatesManagementClient} used to communicate with the service_client
    #
    # @return [OCI::CertificatesManagement::CertificatesManagementClient]
    attr_reader :service_client

    # Initializes a new CertificatesManagementClientCompositeOperations
    #
    # @param [OCI::CertificatesManagement::CertificatesManagementClient] service_client The client used to communicate with the service.
    #   Defaults to a new service client created via {OCI::CertificatesManagement::CertificatesManagementClient#initialize} with no arguments
    def initialize(service_client = OCI::CertificatesManagement::CertificatesManagementClient.new)
      @service_client = service_client
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/ParameterLists, Metrics/PerceivedComplexity
    # rubocop:disable Layout/EmptyLines


    # Calls {OCI::CertificatesManagement::CertificatesManagementClient#create_ca_bundle} and then waits for the {OCI::CertificatesManagement::Models::CaBundle} acted upon
    # to enter the given state(s).
    #
    # @param [OCI::CertificatesManagement::Models::CreateCaBundleDetails] create_ca_bundle_details The details of the request to create a new CA bundle.
    # @param [Array<String>] wait_for_states An array of states to wait on. These should be valid values for {OCI::CertificatesManagement::Models::CaBundle#lifecycle_state}
    # @param [Hash] base_operation_opts Any optional arguments accepted by {OCI::CertificatesManagement::CertificatesManagementClient#create_ca_bundle}
    # @param [Hash] waiter_opts Optional arguments for the waiter. Keys should be symbols, and the following keys are supported:
    #   * max_interval_seconds: The maximum interval between queries, in seconds.
    #   * max_wait_seconds The maximum time to wait, in seconds
    #
    # @return [OCI::Response] A {OCI::Response} object with data of type {OCI::CertificatesManagement::Models::CaBundle}
    def create_ca_bundle_and_wait_for_state(create_ca_bundle_details, wait_for_states = [], base_operation_opts = {}, waiter_opts = {})
      operation_result = @service_client.create_ca_bundle(create_ca_bundle_details, base_operation_opts)

      return operation_result if wait_for_states.empty?

      lowered_wait_for_states = wait_for_states.map(&:downcase)
      wait_for_resource_id = operation_result.data.id

      begin
        waiter_result = @service_client.get_ca_bundle(wait_for_resource_id).wait_until(
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


    # Calls {OCI::CertificatesManagement::CertificatesManagementClient#create_certificate} and then waits for the {OCI::CertificatesManagement::Models::Certificate} acted upon
    # to enter the given state(s).
    #
    # @param [OCI::CertificatesManagement::Models::CreateCertificateDetails] create_certificate_details The details of the request to create a new certificate.
    # @param [Array<String>] wait_for_states An array of states to wait on. These should be valid values for {OCI::CertificatesManagement::Models::Certificate#lifecycle_state}
    # @param [Hash] base_operation_opts Any optional arguments accepted by {OCI::CertificatesManagement::CertificatesManagementClient#create_certificate}
    # @param [Hash] waiter_opts Optional arguments for the waiter. Keys should be symbols, and the following keys are supported:
    #   * max_interval_seconds: The maximum interval between queries, in seconds.
    #   * max_wait_seconds The maximum time to wait, in seconds
    #
    # @return [OCI::Response] A {OCI::Response} object with data of type {OCI::CertificatesManagement::Models::Certificate}
    def create_certificate_and_wait_for_state(create_certificate_details, wait_for_states = [], base_operation_opts = {}, waiter_opts = {})
      operation_result = @service_client.create_certificate(create_certificate_details, base_operation_opts)

      return operation_result if wait_for_states.empty?

      lowered_wait_for_states = wait_for_states.map(&:downcase)
      wait_for_resource_id = operation_result.data.id

      begin
        waiter_result = @service_client.get_certificate(wait_for_resource_id).wait_until(
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


    # Calls {OCI::CertificatesManagement::CertificatesManagementClient#create_certificate_authority} and then waits for the {OCI::CertificatesManagement::Models::CertificateAuthority} acted upon
    # to enter the given state(s).
    #
    # @param [OCI::CertificatesManagement::Models::CreateCertificateAuthorityDetails] create_certificate_authority_details The details of the request to create a new CA.
    # @param [Array<String>] wait_for_states An array of states to wait on. These should be valid values for {OCI::CertificatesManagement::Models::CertificateAuthority#lifecycle_state}
    # @param [Hash] base_operation_opts Any optional arguments accepted by {OCI::CertificatesManagement::CertificatesManagementClient#create_certificate_authority}
    # @param [Hash] waiter_opts Optional arguments for the waiter. Keys should be symbols, and the following keys are supported:
    #   * max_interval_seconds: The maximum interval between queries, in seconds.
    #   * max_wait_seconds The maximum time to wait, in seconds
    #
    # @return [OCI::Response] A {OCI::Response} object with data of type {OCI::CertificatesManagement::Models::CertificateAuthority}
    def create_certificate_authority_and_wait_for_state(create_certificate_authority_details, wait_for_states = [], base_operation_opts = {}, waiter_opts = {})
      operation_result = @service_client.create_certificate_authority(create_certificate_authority_details, base_operation_opts)

      return operation_result if wait_for_states.empty?

      lowered_wait_for_states = wait_for_states.map(&:downcase)
      wait_for_resource_id = operation_result.data.id

      begin
        waiter_result = @service_client.get_certificate_authority(wait_for_resource_id).wait_until(
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


    # Calls {OCI::CertificatesManagement::CertificatesManagementClient#delete_ca_bundle} and then waits for the {OCI::CertificatesManagement::Models::CaBundle} acted upon
    # to enter the given state(s).
    #
    # @param [String] ca_bundle_id The OCID of the CA bundle.
    # @param [Array<String>] wait_for_states An array of states to wait on. These should be valid values for {OCI::CertificatesManagement::Models::CaBundle#lifecycle_state}
    # @param [Hash] base_operation_opts Any optional arguments accepted by {OCI::CertificatesManagement::CertificatesManagementClient#delete_ca_bundle}
    # @param [Hash] waiter_opts Optional arguments for the waiter. Keys should be symbols, and the following keys are supported:
    #   * max_interval_seconds: The maximum interval between queries, in seconds.
    #   * max_wait_seconds The maximum time to wait, in seconds
    #
    # @return [OCI::Response] A {OCI::Response} object with data of type nil
    def delete_ca_bundle_and_wait_for_state(ca_bundle_id, wait_for_states = [], base_operation_opts = {}, waiter_opts = {})
      initial_get_result = @service_client.get_ca_bundle(ca_bundle_id)
      operation_result = @service_client.delete_ca_bundle(ca_bundle_id, base_operation_opts)

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


    # Calls {OCI::CertificatesManagement::CertificatesManagementClient#update_ca_bundle} and then waits for the {OCI::CertificatesManagement::Models::CaBundle} acted upon
    # to enter the given state(s).
    #
    # @param [String] ca_bundle_id The OCID of the CA bundle.
    # @param [OCI::CertificatesManagement::Models::UpdateCaBundleDetails] update_ca_bundle_details The details of the request to update a CA bundle.
    # @param [Array<String>] wait_for_states An array of states to wait on. These should be valid values for {OCI::CertificatesManagement::Models::CaBundle#lifecycle_state}
    # @param [Hash] base_operation_opts Any optional arguments accepted by {OCI::CertificatesManagement::CertificatesManagementClient#update_ca_bundle}
    # @param [Hash] waiter_opts Optional arguments for the waiter. Keys should be symbols, and the following keys are supported:
    #   * max_interval_seconds: The maximum interval between queries, in seconds.
    #   * max_wait_seconds The maximum time to wait, in seconds
    #
    # @return [OCI::Response] A {OCI::Response} object with data of type {OCI::CertificatesManagement::Models::CaBundle}
    def update_ca_bundle_and_wait_for_state(ca_bundle_id, update_ca_bundle_details, wait_for_states = [], base_operation_opts = {}, waiter_opts = {})
      operation_result = @service_client.update_ca_bundle(ca_bundle_id, update_ca_bundle_details, base_operation_opts)

      return operation_result if wait_for_states.empty?

      lowered_wait_for_states = wait_for_states.map(&:downcase)
      wait_for_resource_id = operation_result.data.id

      begin
        waiter_result = @service_client.get_ca_bundle(wait_for_resource_id).wait_until(
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


    # Calls {OCI::CertificatesManagement::CertificatesManagementClient#update_certificate} and then waits for the {OCI::CertificatesManagement::Models::Certificate} acted upon
    # to enter the given state(s).
    #
    # @param [String] certificate_id The OCID of the certificate.
    # @param [OCI::CertificatesManagement::Models::UpdateCertificateDetails] update_certificate_details The details of the request to update a certificate.
    # @param [Array<String>] wait_for_states An array of states to wait on. These should be valid values for {OCI::CertificatesManagement::Models::Certificate#lifecycle_state}
    # @param [Hash] base_operation_opts Any optional arguments accepted by {OCI::CertificatesManagement::CertificatesManagementClient#update_certificate}
    # @param [Hash] waiter_opts Optional arguments for the waiter. Keys should be symbols, and the following keys are supported:
    #   * max_interval_seconds: The maximum interval between queries, in seconds.
    #   * max_wait_seconds The maximum time to wait, in seconds
    #
    # @return [OCI::Response] A {OCI::Response} object with data of type {OCI::CertificatesManagement::Models::Certificate}
    def update_certificate_and_wait_for_state(certificate_id, update_certificate_details, wait_for_states = [], base_operation_opts = {}, waiter_opts = {})
      operation_result = @service_client.update_certificate(certificate_id, update_certificate_details, base_operation_opts)

      return operation_result if wait_for_states.empty?

      lowered_wait_for_states = wait_for_states.map(&:downcase)
      wait_for_resource_id = operation_result.data.id

      begin
        waiter_result = @service_client.get_certificate(wait_for_resource_id).wait_until(
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


    # Calls {OCI::CertificatesManagement::CertificatesManagementClient#update_certificate_authority} and then waits for the {OCI::CertificatesManagement::Models::CertificateAuthority} acted upon
    # to enter the given state(s).
    #
    # @param [String] certificate_authority_id The OCID of the certificate authority (CA).
    # @param [OCI::CertificatesManagement::Models::UpdateCertificateAuthorityDetails] update_certificate_authority_details The details of the request to update a CA.
    # @param [Array<String>] wait_for_states An array of states to wait on. These should be valid values for {OCI::CertificatesManagement::Models::CertificateAuthority#lifecycle_state}
    # @param [Hash] base_operation_opts Any optional arguments accepted by {OCI::CertificatesManagement::CertificatesManagementClient#update_certificate_authority}
    # @param [Hash] waiter_opts Optional arguments for the waiter. Keys should be symbols, and the following keys are supported:
    #   * max_interval_seconds: The maximum interval between queries, in seconds.
    #   * max_wait_seconds The maximum time to wait, in seconds
    #
    # @return [OCI::Response] A {OCI::Response} object with data of type {OCI::CertificatesManagement::Models::CertificateAuthority}
    def update_certificate_authority_and_wait_for_state(certificate_authority_id, update_certificate_authority_details, wait_for_states = [], base_operation_opts = {}, waiter_opts = {})
      operation_result = @service_client.update_certificate_authority(certificate_authority_id, update_certificate_authority_details, base_operation_opts)

      return operation_result if wait_for_states.empty?

      lowered_wait_for_states = wait_for_states.map(&:downcase)
      wait_for_resource_id = operation_result.data.id

      begin
        waiter_result = @service_client.get_certificate_authority(wait_for_resource_id).wait_until(
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