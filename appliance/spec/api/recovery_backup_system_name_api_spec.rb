=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Appliance::RecoveryBackupSystemNameApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RecoveryBackupSystemNameApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Appliance::RecoveryBackupSystemNameApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RecoveryBackupSystemNameApi' do
    it 'should create an instance of RecoveryBackupSystemNameApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Appliance::RecoveryBackupSystemNameApi)
    end
  end

  # unit tests for list
  # Returns a list of system names for which backup archives exist under {@param.name locSpec}.
  # @param loc_spec_location Backup location URL.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :loc_spec_location_user Username for the given location.
  # @option opts [String] :loc_spec_location_password Password for the given location.
  # @return [ApplianceRecoveryBackupSystemNameListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end