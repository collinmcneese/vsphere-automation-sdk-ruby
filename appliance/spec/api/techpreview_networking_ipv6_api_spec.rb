# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Appliance::TechpreviewNetworkingIpv6Api
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TechpreviewNetworkingIpv6Api' do
  before do
    # run before each test
    @instance = VSphereAutomation::Appliance::TechpreviewNetworkingIpv6Api.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TechpreviewNetworkingIpv6Api' do
    it 'should create an instance of TechpreviewNetworkingIpv6Api' do
      expect(@instance).to be_instance_of(VSphereAutomation::Appliance::TechpreviewNetworkingIpv6Api)
    end
  end

  # unit tests for get
  # Get IPv6 network configuration for interfaces.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [ApplianceTechpreviewNetworkingIpv6Resp]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Get IPv6 network configuration for all configured interfaces.
  # @param [Hash] opts the optional parameters
  # @return [ApplianceTechpreviewNetworkingIpv6ListResp]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set
  # Set IPv6 network configuration.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'set test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
