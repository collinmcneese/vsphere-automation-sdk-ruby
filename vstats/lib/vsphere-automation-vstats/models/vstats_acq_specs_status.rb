# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# stats - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'date'

module VSphereAutomation
  module VStats
    class VstatsAcqSpecsStatus
    
    ENABLED = "ENABLED".freeze
    DISABLED = "DISABLED".freeze
    EXPIRED = "EXPIRED".freeze
    INVALID = "INVALID".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VstatsAcqSpecsStatus.constants.select { |c| VstatsAcqSpecsStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VstatsAcqSpecsStatus" if constantValues.empty?
      value
    end
  end
  end
end