# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'date'

module VSphereAutomation
  module ESX
    class EsxSettingsComplianceStatus
    
    COMPLIANT = "COMPLIANT".freeze
    NON_COMPLIANT = "NON_COMPLIANT".freeze
    INCOMPATIBLE = "INCOMPATIBLE".freeze
    UNAVAILABLE = "UNAVAILABLE".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = EsxSettingsComplianceStatus.constants.select { |c| EsxSettingsComplianceStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #EsxSettingsComplianceStatus" if constantValues.empty?
      value
    end
  end
  end
end
