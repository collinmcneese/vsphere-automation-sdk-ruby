# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterTrustVcTrustsInfo
    # Mapping of group in existing token to a list of local SSO groups in the local domain for new token. If empty, no group mappings have been configured. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :group_map

    # Label of the trust Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :label

    # List of signing certificate chains Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :signing_cert_chains

    # Type of trust. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :type

    # Lists the UPN suffixes used in this trust relationship Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
    attr_accessor :upn_suffixes

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'group_map' => :'group_map',
        :'label' => :'label',
        :'signing_cert_chains' => :'signing_cert_chains',
        :'type' => :'type',
        :'upn_suffixes' => :'upn_suffixes'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'group_map' => :'Array<VcenterHlmRemoteWorkerTrustCreateSpecGroupMap>',
        :'label' => :'String',
        :'signing_cert_chains' => :'Array<VcenterCertificateManagementX509CertChain>',
        :'type' => :'String',
        :'upn_suffixes' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'group_map')
        if (value = attributes[:'group_map']).is_a?(Array)
          self.group_map = value
        end
      end

      if attributes.has_key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.has_key?(:'signing_cert_chains')
        if (value = attributes[:'signing_cert_chains']).is_a?(Array)
          self.signing_cert_chains = value
        end
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'upn_suffixes')
        if (value = attributes[:'upn_suffixes']).is_a?(Array)
          self.upn_suffixes = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @group_map.nil?
        invalid_properties.push('invalid value for "group_map", group_map cannot be nil.')
      end

      if @label.nil?
        invalid_properties.push('invalid value for "label", label cannot be nil.')
      end

      if @signing_cert_chains.nil?
        invalid_properties.push('invalid value for "signing_cert_chains", signing_cert_chains cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @upn_suffixes.nil?
        invalid_properties.push('invalid value for "upn_suffixes", upn_suffixes cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @group_map.nil?
      return false if @label.nil?
      return false if @signing_cert_chains.nil?
      return false if @type.nil?
      return false if @upn_suffixes.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          group_map == o.group_map &&
          label == o.label &&
          signing_cert_chains == o.signing_cert_chains &&
          type == o.type &&
          upn_suffixes == o.upn_suffixes
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [group_map, label, signing_cert_chains, type, upn_suffixes].hash
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
