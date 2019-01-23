=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::StoragePoliciesComplianceApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'StoragePoliciesComplianceApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::StoragePoliciesComplianceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StoragePoliciesComplianceApi' do
    it 'should create an instance of StoragePoliciesComplianceApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::StoragePoliciesComplianceApi)
    end
  end

  # unit tests for list
  # Returns compliance information about entities matching the filter Compliance.FilterSpec. Entities without storage policy association are not returned.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :filter_status Compliance Status that a virtual machine must have to match the filter.
  # @return [VcenterStoragePoliciesComplianceListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end