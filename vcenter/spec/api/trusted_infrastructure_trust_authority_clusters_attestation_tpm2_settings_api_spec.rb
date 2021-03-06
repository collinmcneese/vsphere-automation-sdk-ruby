# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsApi' do
    it 'should create an instance of TrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::TrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsApi)
    end
  end

  # unit tests for get_task
  # Return the TPM 2.0 protocol settings.
  # @param cluster The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'get_task test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_task
  # Set the TPM 2.0 protocol settings.
  # @param cluster The id of the cluster on which the operation will be executed. The parameter must be an identifier for the resource type: ClusterComputeResource.
  # @param [Hash] opts the optional parameters
  # @option opts [VcenterTrustedInfrastructureTrustAuthorityClustersAttestationTpm2SettingsUpdateSpec] :request_body 
  # @return [String]
  describe 'update_task test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
