# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersAttestationServicesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TrustedInfrastructureTrustedClustersAttestationServicesApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersAttestationServicesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TrustedInfrastructureTrustedClustersAttestationServicesApi' do
    it 'should create an instance of TrustedInfrastructureTrustedClustersAttestationServicesApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::TrustedInfrastructureTrustedClustersAttestationServicesApi)
    end
  end

  # unit tests for create_task
  # Configures the cluster to use a the given registered Attestation Service.
  # @param cluster The ID of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
  # @param [Hash] opts the optional parameters
  # @option opts [VcenterTrustedInfrastructureTrustedClustersAttestationServicesCreateSpec] :request_body 
  # @return [String]
  describe 'create_task test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_task
  # Removes the Attestation Service instance from the configuration of the given cluster.
  # @param cluster the unique ID of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
  # @param service the registered Attestation Service instance unique identifier. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.attestation.Service.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'delete_task test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Returns detailed information about the given registered Attestation Service instance that is configured for the given cluster. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the parameter cluster requires System.View.  
  # @param cluster The ID of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
  # @param service The ID of the service. The parameter must be an identifier for the resource type: vcenter.trusted_infrastructure.attestation.Service.
  # @param [Hash] opts the optional parameters
  # @return [VcenterTrustedInfrastructureTrustedClustersAttestationServicesInfo]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Returns the basic information about all configured Attestation Service instances used by this cluster. if you do not have all of the privileges described as follows:     -  Operation execution requires TrustedAdmin.ReadTrustedHosts.    -  The resource ClusterComputeResource referenced by the parameter cluster requires System.View.  
  # @param cluster The ID of the cluster. The parameter must be an identifier for the resource type: ClusterComputeResource.
  # @param [Hash] opts the optional parameters
  # @option opts [VcenterTrustedInfrastructureTrustedClustersAttestationServicesFilterSpec] :request_body 
  # @return [Array<VcenterTrustedInfrastructureTrustedClustersAttestationServicesSummary>]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
