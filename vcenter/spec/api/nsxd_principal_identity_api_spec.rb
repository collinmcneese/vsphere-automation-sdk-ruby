# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::NsxdPrincipalIdentityApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'NsxdPrincipalIdentityApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::NsxdPrincipalIdentityApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NsxdPrincipalIdentityApi' do
    it 'should create an instance of NsxdPrincipalIdentityApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::NsxdPrincipalIdentityApi)
    end
  end

  # unit tests for create
  # Create the Principal Identity within configured NSX environment.
  # @param [Hash] opts the optional parameters
  # @option opts [VcenterNsxdPrincipalIdentitySpec] :request_body 
  # @return [nil]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
