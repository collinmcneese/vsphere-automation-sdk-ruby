# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Appliance::SystemSecurityFileIntegrityApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SystemSecurityFileIntegrityApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Appliance::SystemSecurityFileIntegrityApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SystemSecurityFileIntegrityApi' do
    it 'should create an instance of SystemSecurityFileIntegrityApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Appliance::SystemSecurityFileIntegrityApi)
    end
  end

  # unit tests for baseline
  # Create file integrity baseline for the appliance.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'baseline test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Get state for scheduled file integrity check.
  # @param [Hash] opts the optional parameters
  # @return [ApplianceSystemSecurityFileIntegrityResp]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set
  # Set enabled state for scheduled file integrity check.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'set test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
