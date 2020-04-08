# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::LcmValidationApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LcmValidationApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::LcmValidationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LcmValidationApi' do
    it 'should create an instance of LcmValidationApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::LcmValidationApi)
    end
  end

  # unit tests for check_appliance_name_task
  # Validate the name of the appliance to be deployed.     1. 1. Return False if the there is already an appliance that has the same name as given in the spec exist in the path.  . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [VcenterLcmValidationCheckApplianceNameTaskResp]
  describe 'check_appliance_name_task test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end