# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::LcmInstallApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LcmInstallApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::LcmInstallApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LcmInstallApi' do
    it 'should create an instance of LcmInstallApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::LcmInstallApi)
    end
  end

  # unit tests for check
  # Performs a precheck for the given specification. The result of this operation can be queried by calling the cis/tasks/{task-id} with the task-id in the response of this call. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [VcenterLcmInstallCheckResp]
  describe 'check test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for start
  # Deploys the appliance for the given specification. The result of this operation can be queried by calling the cis/tasks/{task-id} with the task-id in the response of this call. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [VcenterLcmInstallStartResp]
  describe 'start test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
