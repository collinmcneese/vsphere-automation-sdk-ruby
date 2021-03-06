# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'date'

module VSphereAutomation
  module ESX
    class EsxSettingsComponentSource
    
    BASE_IMAGE = "BASE_IMAGE".freeze
    ADD_ON = "ADD_ON".freeze
    USER = "USER".freeze
    SOLUTION = "SOLUTION".freeze
    HARDWARE_SUPPORT_PACKAGE = "HARDWARE_SUPPORT_PACKAGE".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = EsxSettingsComponentSource.constants.select { |c| EsxSettingsComponentSource::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #EsxSettingsComponentSource" if constantValues.empty?
      value
    end
  end
  end
end
