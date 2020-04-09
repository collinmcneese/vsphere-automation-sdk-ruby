# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterNsxDeploymentPlacementSpec
    # The identifier of the cluster of which the appliance is a member. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: ClusterComputeResource:VCenter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: ClusterComputeResource:VCenter.
    attr_accessor :cluster

    # The name of the cluster of which the appliance is a member. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, cluster ID will be used.
    attr_accessor :cluster_name

    # The identifier of the datastore to put all the virtual disks on. The datastore must be accessible from the management vCenter. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Datastore:VCenter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Datastore:VCenter.
    attr_accessor :datastore

    # The name of the datastore. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, datastore ID will be used.
    attr_accessor :datastore_name

    # The identifier of the Network object used to attach the appliance. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. When clients pass a value of this structure as a parameter, the field must be an identifier for the resource type: Network:VCenter. When operations return a value of this structure as a result, the field will be an identifier for the resource type: Network:VCenter.
    attr_accessor :network

    # The name of the Network object used to attach the appliance. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. If unset, network ID will be used.
    attr_accessor :network_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cluster' => :'cluster',
        :'cluster_name' => :'cluster_name',
        :'datastore' => :'datastore',
        :'datastore_name' => :'datastore_name',
        :'network' => :'network',
        :'network_name' => :'network_name'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'cluster' => :'String',
        :'cluster_name' => :'String',
        :'datastore' => :'String',
        :'datastore_name' => :'String',
        :'network' => :'String',
        :'network_name' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'cluster')
        self.cluster = attributes[:'cluster']
      end

      if attributes.has_key?(:'cluster_name')
        self.cluster_name = attributes[:'cluster_name']
      end

      if attributes.has_key?(:'datastore')
        self.datastore = attributes[:'datastore']
      end

      if attributes.has_key?(:'datastore_name')
        self.datastore_name = attributes[:'datastore_name']
      end

      if attributes.has_key?(:'network')
        self.network = attributes[:'network']
      end

      if attributes.has_key?(:'network_name')
        self.network_name = attributes[:'network_name']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @cluster.nil?
        invalid_properties.push('invalid value for "cluster", cluster cannot be nil.')
      end

      if @datastore.nil?
        invalid_properties.push('invalid value for "datastore", datastore cannot be nil.')
      end

      if @network.nil?
        invalid_properties.push('invalid value for "network", network cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @cluster.nil?
      return false if @datastore.nil?
      return false if @network.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cluster == o.cluster &&
          cluster_name == o.cluster_name &&
          datastore == o.datastore &&
          datastore_name == o.datastore_name &&
          network == o.network &&
          network_name == o.network_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [cluster, cluster_name, datastore, datastore_name, network, network_name].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN, :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = VSphereAutomation::VCenter.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
  end
end
