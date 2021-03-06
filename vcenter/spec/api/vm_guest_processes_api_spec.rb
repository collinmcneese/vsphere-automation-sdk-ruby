# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::VmGuestProcessesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VmGuestProcessesApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::VmGuestProcessesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VmGuestProcessesApi' do
    it 'should create an instance of VmGuestProcessesApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::VmGuestProcessesApi)
    end
  end

  # unit tests for create
  # Starts a program in the guest operating system.   A process started this way can have its status queried with Processes.list or Processes.get. When the process completes, its exit code and end time will be available for 5 minutes after completion.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Execute.  
  # @param vm Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [VcenterVmGuestProcessesCreateResp]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete
  # Terminates a process in the guest OS.   On Posix guests, the process is sent a TERM signal. If that doesn&#39;t terminate the process, a KILL signal is sent. A process may still be running if it&#39;s stuck.    . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Execute.  
  # @param vm Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param pid Process ID of the process to be terminated
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Gets the status of a process running in the guest operating system, including those started by Processes.create that may have recently completed.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Query.  
  # @param vm Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param pid Specifies the process to query.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [VcenterVmGuestProcessesResp]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # List the processes running in the guest operating system, plus those started by Processes.create that have recently completed.   . Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. if you do not have all of the privileges described as follows:     -  The resource VirtualMachine referenced by the parameter vm requires VirtualMachine.GuestOperations.Query.  
  # @param vm Virtual machine to perform the operation on. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [VcenterVmGuestProcessesListResp]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
