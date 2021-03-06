# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::ESX::SettingsHardwareSupportManagersPackagesVersionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SettingsHardwareSupportManagersPackagesVersionsApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::ESX::SettingsHardwareSupportManagersPackagesVersionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SettingsHardwareSupportManagersPackagesVersionsApi' do
    it 'should create an instance of SettingsHardwareSupportManagersPackagesVersionsApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::ESX::SettingsHardwareSupportManagersPackagesVersionsApi)
    end
  end

  # unit tests for get
  # Returns the detailed information for a specific version of an available Hardware Support Packages (HSPs) as specified by the Hardware Support Manager (HSM)
  # @param manager Identifier for the Hardware Support Manager (HSM).
  # @param pkg The name of the Hardware Support Package (HSP)
  # @param version The version of the Hardware Support Package (HSP)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :base_image_version vSphere release version for the component information in the Hardware Support Package (HSP). Only Hardware Support Packages (HSPs) compatible with the vSphere release version specified in &#39;baseImageVersion&#39; will be returned. The &#39;baseImageVersion&#39; parameter should be a full numeric base image version string (e.g. \&quot;7.1.0-2.3.436234\&quot;). Future implementations may support version specification by prefix (e.g. \&quot;7.1\&quot; to specify all updates and builds of 7.1) or other forms of specification (e.g. \&quot;&gt;&#x3D;7.0\&quot;). Hardware Support Pacakges (HSPs) may be advertised as supporting truncated version strings to indicate the remainder is wildcarded. Matching is on the specified substring only, so a bundle supporting \&quot;7.1.0-2\&quot; would match a &#39;release&#39; parameter of \&quot;7.1.0-2.3.436234\&quot; as well as \&quot;7.1.0-2.1.4133564\&quot; and \&quot;7.1.0-2.0.355667\&quot; but not \&quot;7.1.0-3.0.63445\&quot; or any base image version starting with \&quot;7.2\&quot;. Note that we require compatible base image versions be specified at least down to the update version (i.e. \&quot;7.0\&quot; is insufficiently constrained)
  # @return [EsxSettingsHardwareSupportManagersPackagesVersionsPackageInfo]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
