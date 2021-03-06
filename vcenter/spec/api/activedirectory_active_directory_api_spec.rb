# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::ActivedirectoryActiveDirectoryApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ActivedirectoryActiveDirectoryApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::ActivedirectoryActiveDirectoryApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ActivedirectoryActiveDirectoryApi' do
    it 'should create an instance of ActivedirectoryActiveDirectoryApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::ActivedirectoryActiveDirectoryApi)
    end
  end

  # unit tests for join
  # Join the appliance to given domain.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'join test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for leave
  # Leave the registered domain, if registered to any.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'leave test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for status
  # Returns the Active Directory Domain Join Status of the system the identity server is executing on.
  # @param [Hash] opts the optional parameters
  # @return [VcenterActivedirectoryActiveDirectoryStatusResp]
  describe 'status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
