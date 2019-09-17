# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::CertificateManagementVcenterTlsCsrApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CertificateManagementVcenterTlsCsrApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::CertificateManagementVcenterTlsCsrApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CertificateManagementVcenterTlsCsrApi' do
    it 'should create an instance of CertificateManagementVcenterTlsCsrApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::CertificateManagementVcenterTlsCsrApi)
    end
  end

  # unit tests for create
  # Generates a CSR with the given Spec.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [VcenterCertificateManagementVcenterTlsCsrCreateResult]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end