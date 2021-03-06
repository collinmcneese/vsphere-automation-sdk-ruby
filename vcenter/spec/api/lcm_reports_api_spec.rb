# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::LcmReportsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LcmReportsApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::LcmReportsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LcmReportsApi' do
    it 'should create an instance of LcmReportsApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::LcmReportsApi)
    end
  end

  # unit tests for get
  # Returns the location Reports.Location information for downloading the report for the specified file name.   Retrieving a report involves two steps:      - Step 1: Invoke the Reports.get operation to provision a token and a URI.    - Step 2: Make an HTTP GET request by using the URI and the token returned in step 1 to retrieve the report.     The HTTP GET request will:      -  Return 401 (Not Authorized) if the download URI is recognized, but the token is invalid, 404 if the URL is not recognized otherwise return 200 (OK)    -  Provide the CSV contents as the output of the request. The API accepts the file name as input, reads the contents of that CSV file, and returns this text as the result of the API.    if you do not have all of the privileges described as follows:     -  Operation execution requires VcLifecycle.View.  
  # @param report The parameter must be an identifier for the resource type: vcenter.lcm.report.
  # @param [Hash] opts the optional parameters
  # @return [VcenterLcmReportsLocation]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
