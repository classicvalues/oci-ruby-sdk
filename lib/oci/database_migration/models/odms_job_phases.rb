# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

module OCI
  module DatabaseMigration::Models
    ODMS_JOB_PHASES_ENUM = [
      ODMS_JOB_PHASES_ODMS_VALIDATE_TGT = 'ODMS_VALIDATE_TGT'.freeze,
      ODMS_JOB_PHASES_ODMS_VALIDATE_SRC = 'ODMS_VALIDATE_SRC'.freeze,
      ODMS_JOB_PHASES_ODMS_VALIDATE_PREMIGRATION_ADVISOR = 'ODMS_VALIDATE_PREMIGRATION_ADVISOR'.freeze,
      ODMS_JOB_PHASES_ODMS_VALIDATE_GG_HUB = 'ODMS_VALIDATE_GG_HUB'.freeze,
      ODMS_JOB_PHASES_ODMS_VALIDATE_DATAPUMP_SETTINGS = 'ODMS_VALIDATE_DATAPUMP_SETTINGS'.freeze,
      ODMS_JOB_PHASES_ODMS_VALIDATE_DATAPUMP_SETTINGS_SRC = 'ODMS_VALIDATE_DATAPUMP_SETTINGS_SRC'.freeze,
      ODMS_JOB_PHASES_ODMS_VALIDATE_DATAPUMP_SETTINGS_TGT = 'ODMS_VALIDATE_DATAPUMP_SETTINGS_TGT'.freeze,
      ODMS_JOB_PHASES_ODMS_VALIDATE_DATAPUMP_SRC = 'ODMS_VALIDATE_DATAPUMP_SRC'.freeze,
      ODMS_JOB_PHASES_ODMS_VALIDATE_DATAPUMP_ESTIMATE_SRC = 'ODMS_VALIDATE_DATAPUMP_ESTIMATE_SRC'.freeze,
      ODMS_JOB_PHASES_ODMS_VALIDATE = 'ODMS_VALIDATE'.freeze,
      ODMS_JOB_PHASES_ODMS_PREPARE = 'ODMS_PREPARE'.freeze,
      ODMS_JOB_PHASES_ODMS_INITIAL_LOAD_EXPORT = 'ODMS_INITIAL_LOAD_EXPORT'.freeze,
      ODMS_JOB_PHASES_ODMS_DATA_UPLOAD = 'ODMS_DATA_UPLOAD'.freeze,
      ODMS_JOB_PHASES_ODMS_INITIAL_LOAD_IMPORT = 'ODMS_INITIAL_LOAD_IMPORT'.freeze,
      ODMS_JOB_PHASES_ODMS_POST_INITIAL_LOAD = 'ODMS_POST_INITIAL_LOAD'.freeze,
      ODMS_JOB_PHASES_ODMS_PREPARE_REPLICATION_TARGET = 'ODMS_PREPARE_REPLICATION_TARGET'.freeze,
      ODMS_JOB_PHASES_ODMS_MONITOR_REPLICATION_LAG = 'ODMS_MONITOR_REPLICATION_LAG'.freeze,
      ODMS_JOB_PHASES_ODMS_SWITCHOVER = 'ODMS_SWITCHOVER'.freeze,
      ODMS_JOB_PHASES_ODMS_CLEANUP = 'ODMS_CLEANUP'.freeze
    ].freeze
  end
end