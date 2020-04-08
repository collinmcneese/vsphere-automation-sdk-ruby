# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::LcmUpdatePendingApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LcmUpdatePendingApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::LcmUpdatePendingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LcmUpdatePendingApi' do
    it 'should create an instance of LcmUpdatePendingApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::LcmUpdatePendingApi)
    end
  end

  # unit tests for get
  # Gets detailed update information. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
  # @param version A version identified the update The parameter must be an identifier for the resource type: vcenter.lcm.update.pending.
  # @param [Hash] opts the optional parameters
  # @return [VcenterLcmUpdatePendingInfo]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Lists all available minor and major updates. if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
  # @param [Hash] opts the optional parameters
  # @return [VcenterLcmUpdatePendingListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end