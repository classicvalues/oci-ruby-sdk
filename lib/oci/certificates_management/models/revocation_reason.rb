# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

module OCI
  module CertificatesManagement::Models
    REVOCATION_REASON_ENUM = [
      REVOCATION_REASON_UNSPECIFIED = 'UNSPECIFIED'.freeze,
      REVOCATION_REASON_KEY_COMPROMISE = 'KEY_COMPROMISE'.freeze,
      REVOCATION_REASON_CA_COMPROMISE = 'CA_COMPROMISE'.freeze,
      REVOCATION_REASON_AFFILIATION_CHANGED = 'AFFILIATION_CHANGED'.freeze,
      REVOCATION_REASON_SUPERSEDED = 'SUPERSEDED'.freeze,
      REVOCATION_REASON_CESSATION_OF_OPERATION = 'CESSATION_OF_OPERATION'.freeze,
      REVOCATION_REASON_PRIVILEGE_WITHDRAWN = 'PRIVILEGE_WITHDRAWN'.freeze,
      REVOCATION_REASON_AA_COMPROMISE = 'AA_COMPROMISE'.freeze
    ].freeze
  end
end
