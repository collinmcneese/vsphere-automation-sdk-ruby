# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content - VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Content::ConfigurationApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ConfigurationApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Content::ConfigurationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ConfigurationApi' do
    it 'should create an instance of ConfigurationApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Content::ConfigurationApi)
    end
  end

  # unit tests for get
  # Retrieves the current configuration values.
  # @param [Hash] opts the optional parameters
  # @return [ContentConfigurationResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Updates the configuration. The update is incremental. Any {@term field} in the {@link ConfigurationModel} {@term structure} that is {@term unset} will not be modified. Note that this update {@term operation} doesn&#39;t guarantee an atomic change of all the properties. In the case of a system crash or failure, some of the properties could be left unchanged while others may be updated.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
