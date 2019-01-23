=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::VmHardwareAdapterScsiApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VmHardwareAdapterScsiApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::VmHardwareAdapterScsiApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VmHardwareAdapterScsiApi' do
    it 'should create an instance of VmHardwareAdapterScsiApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::VmHardwareAdapterScsiApi)
    end
  end

  # unit tests for create
  # Adds a virtual SCSI adapter to the virtual machine.
  # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param vcenter_vm_hardware_adapter_scsi_create 
  # @param [Hash] opts the optional parameters
  # @return [VcenterVmHardwareAdapterScsiCreateResult]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete
  # Removes a virtual SCSI adapter from the virtual machine.
  # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param adapter Virtual SCSI adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ScsiAdapter.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Returns information about a virtual SCSI adapter.
  # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param adapter Virtual SCSI adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ScsiAdapter.
  # @param [Hash] opts the optional parameters
  # @return [VcenterVmHardwareAdapterScsiResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Returns commonly used information about the virtual SCSI adapters belonging to the virtual machine.
  # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param [Hash] opts the optional parameters
  # @return [VcenterVmHardwareAdapterScsiListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Updates the configuration of a virtual SCSI adapter.
  # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param adapter Virtual SCSI adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.ScsiAdapter.
  # @param vcenter_vm_hardware_adapter_scsi_update 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end