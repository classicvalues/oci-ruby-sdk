# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

module OCI
  module Certificates
    # Module containing models for requests made to, and responses received from,
    # OCI Certificates services
    module Models
    end
  end
end

# Require models
require 'oci/certificates/models/ca_bundle'
require 'oci/certificates/models/certificate_authority_bundle'
require 'oci/certificates/models/certificate_authority_bundle_version_collection'
require 'oci/certificates/models/certificate_authority_bundle_version_summary'
require 'oci/certificates/models/certificate_bundle'
require 'oci/certificates/models/certificate_bundle_public_only'
require 'oci/certificates/models/certificate_bundle_version_collection'
require 'oci/certificates/models/certificate_bundle_version_summary'
require 'oci/certificates/models/certificate_bundle_with_private_key'
require 'oci/certificates/models/revocation_reason'
require 'oci/certificates/models/revocation_status'
require 'oci/certificates/models/validity'
require 'oci/certificates/models/version_stage'

# Require generated clients
require 'oci/certificates/certificates_client'

# Require service utilities
require 'oci/certificates/util'