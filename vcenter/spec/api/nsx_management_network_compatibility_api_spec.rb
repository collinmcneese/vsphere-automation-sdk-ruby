# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::NsxManagementNetworkCompatibilityApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'NsxManagementNetworkCompatibilityApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::NsxManagementNetworkCompatibilityApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NsxManagementNetworkCompatibilityApi' do
    it 'should create an instance of NsxManagementNetworkCompatibilityApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::NsxManagementNetworkCompatibilityApi)
    end
  end

  # unit tests for list
  # List the distributed port groups (DVPG) and the network configuration of VMKernel NICs associated with the given cluster and dvSwitch. This information will be used in populating the ManagementNetworkSpec for the Configuration.enable API. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param cluster Identifier of a vCenter Cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
  # @param dv_switch Identifier of a vSphere Distributed Switch (VDS). The parameter must be an identifier for the resource type: DistributedVirtualSwitch.
  # @param [Hash] opts the optional parameters
  # @return [Array<VcenterNsxManagementNetworkCompatibilitySummary>]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
