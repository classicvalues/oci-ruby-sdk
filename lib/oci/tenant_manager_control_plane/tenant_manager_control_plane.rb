# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

module OCI
  module TenantManagerControlPlane
    # Module containing models for requests made to, and responses received from,
    # OCI TenantManagerControlPlane services
    module Models
    end
  end
end

# Require models
require 'oci/tenant_manager_control_plane/models/action_type'
require 'oci/tenant_manager_control_plane/models/create_sender_invitation_details'
require 'oci/tenant_manager_control_plane/models/lifecycle_state'
require 'oci/tenant_manager_control_plane/models/link'
require 'oci/tenant_manager_control_plane/models/link_collection'
require 'oci/tenant_manager_control_plane/models/link_summary'
require 'oci/tenant_manager_control_plane/models/operation_status'
require 'oci/tenant_manager_control_plane/models/operation_type'
require 'oci/tenant_manager_control_plane/models/recipient_invitation'
require 'oci/tenant_manager_control_plane/models/recipient_invitation_collection'
require 'oci/tenant_manager_control_plane/models/recipient_invitation_status'
require 'oci/tenant_manager_control_plane/models/recipient_invitation_summary'
require 'oci/tenant_manager_control_plane/models/sender_invitation'
require 'oci/tenant_manager_control_plane/models/sender_invitation_collection'
require 'oci/tenant_manager_control_plane/models/sender_invitation_status'
require 'oci/tenant_manager_control_plane/models/sender_invitation_summary'
require 'oci/tenant_manager_control_plane/models/sort_order'
require 'oci/tenant_manager_control_plane/models/update_recipient_invitation_details'
require 'oci/tenant_manager_control_plane/models/update_sender_invitation_details'
require 'oci/tenant_manager_control_plane/models/work_request'
require 'oci/tenant_manager_control_plane/models/work_request_collection'
require 'oci/tenant_manager_control_plane/models/work_request_error'
require 'oci/tenant_manager_control_plane/models/work_request_error_collection'
require 'oci/tenant_manager_control_plane/models/work_request_log_entry'
require 'oci/tenant_manager_control_plane/models/work_request_log_entry_collection'
require 'oci/tenant_manager_control_plane/models/work_request_resource'
require 'oci/tenant_manager_control_plane/models/work_request_summary'

# Require generated clients
require 'oci/tenant_manager_control_plane/link_client'
require 'oci/tenant_manager_control_plane/link_client_composite_operations'
require 'oci/tenant_manager_control_plane/recipient_invitation_client'
require 'oci/tenant_manager_control_plane/recipient_invitation_client_composite_operations'
require 'oci/tenant_manager_control_plane/sender_invitation_client'
require 'oci/tenant_manager_control_plane/sender_invitation_client_composite_operations'
require 'oci/tenant_manager_control_plane/work_request_client'

# Require service utilities
require 'oci/tenant_manager_control_plane/util'
