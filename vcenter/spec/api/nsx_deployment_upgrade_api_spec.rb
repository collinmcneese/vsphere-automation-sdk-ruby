# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::NsxDeploymentUpgradeApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'NsxDeploymentUpgradeApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::NsxDeploymentUpgradeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NsxDeploymentUpgradeApi' do
    it 'should create an instance of NsxDeploymentUpgradeApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::NsxDeploymentUpgradeApi)
    end
  end

  # unit tests for check
  # Runs checks for available NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'check test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Gets NSX deployment information, this includes the overall upgrade status, the available release version, the last precheck run time, the current operation details and the list of clusters with their upgrade status. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param [Hash] opts the optional parameters
  # @return [VcenterNsxDeploymentUpgradeInfo]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for pause
  # Pauses already running NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'pause test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for resume
  # Resumes already paused NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'resume test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for start
  # Applies available NSX upgrade. This is an asynchronous call with fast return. The result of the operation can be queried by calling the Upgrade.get operation. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param [Hash] opts the optional parameters
  # @option opts [VcenterNsxDeploymentUpgradeUpgradeSpec] :request_body 
  # @return [nil]
  describe 'start test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end