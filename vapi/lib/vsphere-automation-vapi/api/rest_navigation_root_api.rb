# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi - vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


require 'uri'

module VSphereAutomation
  module VAPI
  class RestNavigationRootApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieves information about a vAPI REST Root.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :base_url Base URL. The {param.name baseUrl} parameter is used by the service to produce absolute URLs. If unset then the service will produce relative URLs.
    # @return [VapiRestNavigationRootResp|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Retrieves information about a vAPI REST Root.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [String] :base_url Base URL. The {param.name baseUrl} parameter is used by the service to produce absolute URLs. If unset then the service will produce relative URLs.
    # @return [Array<(VapiRestNavigationRootResp|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RestNavigationRootApi.get ...'
      end
      # resource path
      local_var_path = '/rest/com/vmware/vapi/rest/navigation/root'

      # query parameters
      query_params = {}
      query_params[:'base_url'] = opts[:'base_url'] if !opts[:'base_url'].nil?

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
	  '200' => 'VAPI::VapiRestNavigationRootResp',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RestNavigationRootApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
