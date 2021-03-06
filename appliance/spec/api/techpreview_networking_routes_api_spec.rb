# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Appliance::TechpreviewNetworkingRoutesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TechpreviewNetworkingRoutesApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Appliance::TechpreviewNetworkingRoutesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TechpreviewNetworkingRoutesApi' do
    it 'should create an instance of TechpreviewNetworkingRoutesApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Appliance::TechpreviewNetworkingRoutesApi)
    end
  end

  # unit tests for add
  # Set static routing rules. A destination of 0.0.0.0 and prefix 0 (for IPv4) or destination of :: and prefix 0 (for IPv6) refers to the default gateway.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'add test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete
  # Delete static routing rules.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Get main routing table. A destination of 0.0.0.0 and prefix 0 (for IPv4) or destination of :: and prefix 0 (for IPv6) refers to the default gateway.
  # @param [Hash] opts the optional parameters
  # @return [ApplianceTechpreviewNetworkingRoutesListResp]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set
  # Set static routing rules. A destination of 0.0.0.0 and prefix 0 (for IPv4) or destination of :: and prefix 0 (for IPv6) refers to the default gateway.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'set test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for test
  # Test connection to a list of gateways
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [ApplianceTechpreviewNetworkingRoutesTestResp]
  describe 'test test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
