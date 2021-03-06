# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::NsxDeploymentInstallApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'NsxDeploymentInstallApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::NsxDeploymentInstallApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NsxDeploymentInstallApi' do
    it 'should create an instance of NsxDeploymentInstallApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::NsxDeploymentInstallApi)
    end
  end

  # unit tests for cancel
  # Cancels the ongoing NSX installation on the current vCenter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'cancel test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Gets the NSX appliance deployment status on the current vCenter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param [Hash] opts the optional parameters
  # @return [VcenterNsxDeploymentInstallInfo]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for start
  # Starts the NSX appliance deployment on the current vCenter. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param [Hash] opts the optional parameters
  # @option opts [VcenterNsxDeploymentInstallInstallSpec] :request_body 
  # @return [nil]
  describe 'start test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for uninstall
  # Uninstalls the NSX appliance deployed on the current vCenter. This API can only uninstall NSXI and cannot be used to uninstall NSXT. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'uninstall test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
