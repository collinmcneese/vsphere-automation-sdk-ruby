# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'date'

module VSphereAutomation
  module ESX
    class EsxSettingsComplianceImpact
    
    NO_IMPACT = "NO_IMPACT".freeze
    MAINTENANCE_MODE_REQUIRED = "MAINTENANCE_MODE_REQUIRED".freeze
    REBOOT_REQUIRED = "REBOOT_REQUIRED".freeze
    UNKNOWN = "UNKNOWN".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = EsxSettingsComplianceImpact.constants.select { |c| EsxSettingsComplianceImpact::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #EsxSettingsComplianceImpact" if constantValues.empty?
      value
    end
  end
  end
end
