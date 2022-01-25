# Copyright (c) 2016, 2022, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

module OCI
  module Bastion::Models
    OPERATION_TYPE_ENUM = [
      OPERATION_TYPE_CREATE_BASTION = 'CREATE_BASTION'.freeze,
      OPERATION_TYPE_UPDATE_BASTION = 'UPDATE_BASTION'.freeze,
      OPERATION_TYPE_DELETE_BASTION = 'DELETE_BASTION'.freeze,
      OPERATION_TYPE_CREATE_SESSION = 'CREATE_SESSION'.freeze,
      OPERATION_TYPE_DELETE_SESSION = 'DELETE_SESSION'.freeze
    ].freeze
  end
end