# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# stats - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VStats::ResourceTypesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ResourceTypesApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VStats::ResourceTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ResourceTypesApi' do
    it 'should create an instance of ResourceTypesApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VStats::ResourceTypesApi)
    end
  end

  # unit tests for list
  # Returns a list of available resource types. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  # @param [Hash] opts the optional parameters
  # @return [Array<VstatsResourceTypesSummary>]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
