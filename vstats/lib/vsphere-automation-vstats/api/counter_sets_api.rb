# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# stats - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'uri'

module VSphereAutomation
  module VStats
  class CounterSetsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns information about a specific counter set. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @param counter_set identifier of the counter set to retrieve. The parameter must be an identifier for the resource type: vstats.model.CounterSet.
    # @param [Hash] opts the optional parameters
    # @return [VstatsCounterSetsInfo|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|]
    def get(counter_set, opts = {})
      data, _status_code, _headers = get_with_http_info(counter_set, opts)
      data
    end

    # Returns information about a specific counter set. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @api private
    # @param counter_set identifier of the counter set to retrieve. The parameter must be an identifier for the resource type: vstats.model.CounterSet.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VstatsCounterSetsInfo|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(counter_set, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CounterSetsApi.get ...'
      end
      # verify the required parameter 'counter_set' is set
      if @api_client.config.client_side_validation && counter_set.nil?
        fail ArgumentError, "Missing the required parameter 'counter_set' when calling CounterSetsApi.get"
      end
      # resource path
      local_var_path = '/api/stats/counter-sets/{counter_set}'.sub('{' + 'counter_set' + '}', counter_set.to_s)

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
	  '200' => 'VStats::VstatsCounterSetsInfo',
	  '400' => 'VStats::VapiStdErrorsInvalidArgument',
	  '401' => 'VStats::VapiStdErrorsUnauthenticated',
	  '403' => 'VStats::VapiStdErrorsUnauthorized',
	  '404' => 'VStats::VapiStdErrorsNotFound',
	  '500' => 'VStats::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CounterSetsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about all the counter sets. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @param [Hash] opts the optional parameters
    # @return [Array<VstatsCounterSetsInfo>|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsError|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns information about all the counter sets. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<VstatsCounterSetsInfo>|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CounterSetsApi.list ...'
      end
      # resource path
      local_var_path = '/api/stats/counter-sets'

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
	  '200' => 'VStats::Array<VstatsCounterSetsInfo>',
	  '401' => 'VStats::VapiStdErrorsUnauthenticated',
	  '403' => 'VStats::VapiStdErrorsUnauthorized',
	  '500' => 'VStats::VapiStdErrorsError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CounterSetsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
