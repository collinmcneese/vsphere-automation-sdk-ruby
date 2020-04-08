# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::ESX::HostsSoftwareInstalledComponentsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'HostsSoftwareInstalledComponentsApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::ESX::HostsSoftwareInstalledComponentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HostsSoftwareInstalledComponentsApi' do
    it 'should create an instance of HostsSoftwareInstalledComponentsApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::ESX::HostsSoftwareInstalledComponentsApi)
    end
  end

  # unit tests for list
  # Returns the installed components on the host.
  # @param host Identifier of the cluster.
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, EsxHostsSoftwareInstalledComponentsInstalledComponentInfo>]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end