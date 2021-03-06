# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::ComputePoliciesTagUsageApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ComputePoliciesTagUsageApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::ComputePoliciesTagUsageApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ComputePoliciesTagUsageApi' do
    it 'should create an instance of ComputePoliciesTagUsageApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::ComputePoliciesTagUsageApi)
    end
  end

  # unit tests for list
  # Returns information about the tags used by policies available in this vCenter server matching the {@link FilterSpec} in VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :policies Identifiers that compute policies must have to match the filter. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  # @option opts [Array<String>] :tags Identifiers that tags must have to match the filter. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  # @option opts [Array<String>] :tag_types Identifiers that tag types must have to match the filter. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  # @return [Array<VcenterComputePoliciesTagUsageSummary>]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
