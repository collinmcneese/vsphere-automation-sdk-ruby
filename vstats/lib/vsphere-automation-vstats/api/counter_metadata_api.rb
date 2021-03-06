# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# stats - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'uri'

module VSphereAutomation
  module VStats
  class CounterMetadataApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns information about a specific CounterMetadata. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @param cid Counter ID. The parameter must be an identifier for the resource type: vstats.model.Counter.
    # @param mid CounterMetadata ID. The parameter must be an identifier for the resource type: vstats.model.CounterMetadata.
    # @param [Hash] opts the optional parameters
    # @return [VstatsCounterMetadataInfo|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get(cid, mid, opts = {})
      data, _status_code, _headers = get_with_http_info(cid, mid, opts)
      data
    end

    # Returns information about a specific CounterMetadata. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @api private
    # @param cid Counter ID. The parameter must be an identifier for the resource type: vstats.model.Counter.
    # @param mid CounterMetadata ID. The parameter must be an identifier for the resource type: vstats.model.CounterMetadata.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VstatsCounterMetadataInfo|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(cid, mid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CounterMetadataApi.get ...'
      end
      # verify the required parameter 'cid' is set
      if @api_client.config.client_side_validation && cid.nil?
        fail ArgumentError, "Missing the required parameter 'cid' when calling CounterMetadataApi.get"
      end
      # verify the required parameter 'mid' is set
      if @api_client.config.client_side_validation && mid.nil?
        fail ArgumentError, "Missing the required parameter 'mid' when calling CounterMetadataApi.get"
      end
      # resource path
      local_var_path = '/api/stats/counters/{cid}/metadata/{mid}'.sub('{' + 'cid' + '}', cid.to_s).sub('{' + 'mid' + '}', mid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VStats::VstatsCounterMetadataInfo',
	  '400' => 'VStats::VapiStdErrorsInvalidArgument',
	  '401' => 'VStats::VapiStdErrorsUnauthenticated',
	  '403' => 'VStats::VapiStdErrorsUnauthorized',
	  '404' => 'VStats::VapiStdErrorsNotFound',
	  '500' => 'VStats::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CounterMetadataApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # This operation returns the \"default\" CounterMetadata. A Counter has at least one related metadata object. Usually, stats providers (for example hosts) are in agreement about the default metadata. In this case the returned list has a single metadata object.   Sometimes, when providers are in \"disagreement\" about the default, then the returned list would include all the possible \"defaults\". This potential ambiguity isn't a real issue because consumers of the vStats API rarely need to specify the \"mid\" of metadata. Therefore, this API is used primarily for informational purposes. . Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @param cid Counter ID. The parameter must be an identifier for the resource type: vstats.model.Counter.
    # @param [Hash] opts the optional parameters
    # @return [Array<VstatsCounterMetadataInfo>|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get_default(cid, opts = {})
      data, _status_code, _headers = get_default_with_http_info(cid, opts)
      data
    end

    # This operation returns the \&quot;default\&quot; CounterMetadata. A Counter has at least one related metadata object. Usually, stats providers (for example hosts) are in agreement about the default metadata. In this case the returned list has a single metadata object.   Sometimes, when providers are in \&quot;disagreement\&quot; about the default, then the returned list would include all the possible \&quot;defaults\&quot;. This potential ambiguity isn&#39;t a real issue because consumers of the vStats API rarely need to specify the \&quot;mid\&quot; of metadata. Therefore, this API is used primarily for informational purposes. . Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @api private
    # @param cid Counter ID. The parameter must be an identifier for the resource type: vstats.model.Counter.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<VstatsCounterMetadataInfo>|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_default_with_http_info(cid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CounterMetadataApi.get_default ...'
      end
      # verify the required parameter 'cid' is set
      if @api_client.config.client_side_validation && cid.nil?
        fail ArgumentError, "Missing the required parameter 'cid' when calling CounterMetadataApi.get_default"
      end
      # resource path
      local_var_path = '/api/stats/counters/{cid}/metadata/default'.sub('{' + 'cid' + '}', cid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VStats::Array<VstatsCounterMetadataInfo>',
	  '400' => 'VStats::VapiStdErrorsInvalidArgument',
	  '401' => 'VStats::VapiStdErrorsUnauthenticated',
	  '403' => 'VStats::VapiStdErrorsUnauthorized',
	  '404' => 'VStats::VapiStdErrorsNotFound',
	  '500' => 'VStats::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CounterMetadataApi#get_default\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about all counter metadata records for a specific Counter. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @param cid Counter ID. The parameter must be an identifier for the resource type: vstats.model.Counter.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Counter metadata status. Warning: This enumeration is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @return [Array<VstatsCounterMetadataInfo>|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def list(cid, opts = {})
      data, _status_code, _headers = list_with_http_info(cid, opts)
      data
    end

    # Returns information about all counter metadata records for a specific Counter. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @api private
    # @param cid Counter ID. The parameter must be an identifier for the resource type: vstats.model.Counter.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Counter metadata status. Warning: This enumeration is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @return [Array<(Array<VstatsCounterMetadataInfo>|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(cid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CounterMetadataApi.list ...'
      end
      # verify the required parameter 'cid' is set
      if @api_client.config.client_side_validation && cid.nil?
        fail ArgumentError, "Missing the required parameter 'cid' when calling CounterMetadataApi.list"
      end
      if @api_client.config.client_side_validation && opts[:'status'] && !['DEFAULT', 'CURRENT', 'DEPRECATED', 'EXPERIMENTAL', 'REMOVED'].include?(opts[:'status'])
        fail ArgumentError, 'invalid value for "status", must be one of DEFAULT, CURRENT, DEPRECATED, EXPERIMENTAL, REMOVED'
      end
      # resource path
      local_var_path = '/api/stats/counters/{cid}/metadata'.sub('{' + 'cid' + '}', cid.to_s)

      # query parameters
      query_params = {}
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'VStats::Array<VstatsCounterMetadataInfo>',
	  '400' => 'VStats::VapiStdErrorsInvalidArgument',
	  '401' => 'VStats::VapiStdErrorsUnauthenticated',
	  '403' => 'VStats::VapiStdErrorsUnauthorized',
	  '404' => 'VStats::VapiStdErrorsNotFound',
	  '500' => 'VStats::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CounterMetadataApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
