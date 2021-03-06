# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::VmGuestOperationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VmGuestOperationsApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::VmGuestOperationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VmGuestOperationsApi' do
    it 'should create an instance of VmGuestOperationsApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::VmGuestOperationsApi)
    end
  end

  # unit tests for get
  # Get information about the guest operation status. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires System.Read.  
  # @param vm Identifier of the virtual machine. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param [Hash] opts the optional parameters
  # @return [VcenterVmGuestOperationsResp]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
