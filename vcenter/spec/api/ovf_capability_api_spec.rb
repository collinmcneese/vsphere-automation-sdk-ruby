# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::OvfCapabilityApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OvfCapabilityApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::OvfCapabilityApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OvfCapabilityApi' do
    it 'should create an instance of OvfCapabilityApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::OvfCapabilityApi)
    end
  end

  # unit tests for get
  # Returns information about the capability of the given vCenter server.
  # @param server_guid Target vCenter server GUID
  # @param [Hash] opts the optional parameters
  # @return [VcenterOvfCapabilityResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
