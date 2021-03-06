# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# stats - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VStats::TelemetryApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TelemetryApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VStats::TelemetryApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TelemetryApi' do
    it 'should create an instance of TelemetryApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VStats::TelemetryApi)
    end
  end

  # unit tests for get
  # Returns a view to metrics internal to the vStats service instance. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :prefix To query telemetry by name prefix. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When unset all telemetry data is returned. When set, returns the data where telemetry name starts with the prefix.
  # @option opts [Array<String>] :types Specifies metric types to return. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. When unset data for all telemetry metric types will be returned.
  # @return [VstatsTelemetryInfo]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
