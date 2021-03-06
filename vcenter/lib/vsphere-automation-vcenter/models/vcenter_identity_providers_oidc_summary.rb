# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'date'

module VSphereAutomation
  module VCenter
    class VcenterIdentityProvidersOidcSummary
    # Authentication/authorization endpoint of the provider
    attr_accessor :auth_endpoint

    # <p>key/value pairs that are to be appended to the authEndpoint request.</p> <p>How to append to authEndpoint request:</p> If the map is not empty, a \"?\" is added to the endpoint URL, and combination of each k and each string in the v is added with an \"&\" delimiter. Details:<ul> <li>If the value contains only one string, then the key is added with \"k=v\".</li> <li>If the value is an empty list, then the key is added without a \"=v\".</li> <li>If the value contains multiple strings, then the key is repeated in the query-string for each string in the value.</li></ul>
    attr_accessor :auth_query_params

    # The authentication data used as part of request header to acquire or refresh an OAuth2 token. The data format depends on the authentication method used. Example of basic authentication format: Authorization: Basic [base64Encode(clientId + \":\" + secret)]
    attr_accessor :authentication_header

    # Client identifier to connect to the provider
    attr_accessor :client_id

    # Endpoint to retrieve the provider metadata
    attr_accessor :discovery_endpoint

    # The endpoint to use for terminating the user's session at the identity provider. This value is automatically derived from the metadata information provided by the OIDC discovery endpoint.
    attr_accessor :logout_endpoint

    # Token endpoint of the provider
    attr_accessor :token_endpoint

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'auth_endpoint' => :'auth_endpoint',
        :'auth_query_params' => :'auth_query_params',
        :'authentication_header' => :'authentication_header',
        :'client_id' => :'client_id',
        :'discovery_endpoint' => :'discovery_endpoint',
        :'logout_endpoint' => :'logout_endpoint',
        :'token_endpoint' => :'token_endpoint'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'auth_endpoint' => :'String',
        :'auth_query_params' => :'Array<VcenterHlmRemoteWorkerTrustCreateSpecGroupMap>',
        :'authentication_header' => :'String',
        :'client_id' => :'String',
        :'discovery_endpoint' => :'String',
        :'logout_endpoint' => :'String',
        :'token_endpoint' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'auth_endpoint')
        self.auth_endpoint = attributes[:'auth_endpoint']
      end

      if attributes.has_key?(:'auth_query_params')
        if (value = attributes[:'auth_query_params']).is_a?(Array)
          self.auth_query_params = value
        end
      end

      if attributes.has_key?(:'authentication_header')
        self.authentication_header = attributes[:'authentication_header']
      end

      if attributes.has_key?(:'client_id')
        self.client_id = attributes[:'client_id']
      end

      if attributes.has_key?(:'discovery_endpoint')
        self.discovery_endpoint = attributes[:'discovery_endpoint']
      end

      if attributes.has_key?(:'logout_endpoint')
        self.logout_endpoint = attributes[:'logout_endpoint']
      end

      if attributes.has_key?(:'token_endpoint')
        self.token_endpoint = attributes[:'token_endpoint']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @auth_endpoint.nil?
        invalid_properties.push('invalid value for "auth_endpoint", auth_endpoint cannot be nil.')
      end

      if @auth_query_params.nil?
        invalid_properties.push('invalid value for "auth_query_params", auth_query_params cannot be nil.')
      end

      if @authentication_header.nil?
        invalid_properties.push('invalid value for "authentication_header", authentication_header cannot be nil.')
      end

      if @client_id.nil?
        invalid_properties.push('invalid value for "client_id", client_id cannot be nil.')
      end

      if @token_endpoint.nil?
        invalid_properties.push('invalid value for "token_endpoint", token_endpoint cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @auth_endpoint.nil?
      return false if @auth_query_params.nil?
      return false if @authentication_header.nil?
      return false if @client_id.nil?
      return false if @token_endpoint.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          auth_endpoint == o.auth_endpoint &&
          auth_query_params == o.auth_query_params &&
          authentication_header == o.authentication_header &&
          client_id == o.client_id &&
          discovery_endpoint == o.discovery_endpoint &&
          logout_endpoint == o.logout_endpoint &&
          token_endpoint == o.token_endpoint
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [auth_endpoint, auth_query_params, authentication_header, client_id, discovery_endpoint, logout_endpoint, token_endpoint].hash
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
