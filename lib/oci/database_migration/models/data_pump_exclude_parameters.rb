# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

module OCI
  module DatabaseMigration::Models
    DATA_PUMP_EXCLUDE_PARAMETERS_ENUM = [
      DATA_PUMP_EXCLUDE_PARAMETERS_INDEX = 'INDEX'.freeze,
      DATA_PUMP_EXCLUDE_PARAMETERS_MATERIALIZED_VIEW = 'MATERIALIZED_VIEW'.freeze,
      DATA_PUMP_EXCLUDE_PARAMETERS_MATERIALIZED_VIEW_LOG = 'MATERIALIZED_VIEW_LOG'.freeze
    ].freeze
  end
end