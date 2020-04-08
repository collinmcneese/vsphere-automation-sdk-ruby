# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareEffectiveComponentsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SettingsClustersSoftwareDraftsSoftwareEffectiveComponentsApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareEffectiveComponentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SettingsClustersSoftwareDraftsSoftwareEffectiveComponentsApi' do
    it 'should create an instance of SettingsClustersSoftwareDraftsSoftwareEffectiveComponentsApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::ESX::SettingsClustersSoftwareDraftsSoftwareEffectiveComponentsApi)
    end
  end

  # unit tests for list
  # Returns the components that comprise the desired software state of the cluster.
  # @param cluster Identifier of the cluster.
  # @param draft Identifier of the working copy document.
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, EsxSettingsEffectiveComponentInfo>]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end