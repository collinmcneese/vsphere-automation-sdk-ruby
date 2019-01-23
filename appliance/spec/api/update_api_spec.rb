=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Appliance::UpdateApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UpdateApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Appliance::UpdateApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UpdateApi' do
    it 'should create an instance of UpdateApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Appliance::UpdateApi)
    end
  end

  # unit tests for cancel
  # Request the cancellation the update operation that is currently in progress.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'cancel test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Gets the current status of the appliance update.
  # @param [Hash] opts the optional parameters
  # @return [ApplianceUpdateResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end