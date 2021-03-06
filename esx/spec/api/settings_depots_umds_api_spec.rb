# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::ESX::SettingsDepotsUmdsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SettingsDepotsUmdsApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::ESX::SettingsDepotsUmdsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SettingsDepotsUmdsApi' do
    it 'should create an instance of SettingsDepotsUmdsApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::ESX::SettingsDepotsUmdsApi)
    end
  end

  # unit tests for delete
  # Removes the configured UMDS software depot. It will not remove the downloaded metadata and payloads from that depot.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Gets the information about a currently configured UMDS software depot.
  # @param [Hash] opts the optional parameters
  # @return [EsxSettingsDepotsUmdsInfo]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set
  # Sets or overwrites information about an UMDS software depot.
  # @param [Hash] opts the optional parameters
  # @option opts [EsxSettingsDepotsUmdsSetSpec] :request_body 
  # @return [nil]
  describe 'set test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Updates the configuration of a currently configured UMDS software depot.
  # @param [Hash] opts the optional parameters
  # @option opts [EsxSettingsDepotsUmdsUpdateSpec] :request_body 
  # @return [nil]
  describe 'update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
