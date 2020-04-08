# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'
require 'date'

# Unit tests for VSphereAutomation::VCenter::VcenterLcmReverseProxy
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VcenterLcmReverseProxy' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::VcenterLcmReverseProxy.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VcenterLcmReverseProxy' do
    it 'should create an instance of VcenterLcmReverseProxy' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::VcenterLcmReverseProxy)
    end
  end
  describe 'test attribute "http_port"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "https_port"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end