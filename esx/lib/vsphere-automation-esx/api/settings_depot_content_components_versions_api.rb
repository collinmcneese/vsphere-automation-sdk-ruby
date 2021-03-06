# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'uri'

module VSphereAutomation
  module ESX
  class SettingsDepotContentComponentsVersionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns information about a given component version in the depot.
    # @param name Name of the component
    # @param version Version of the component
    # @param [Hash] opts the optional parameters
    # @return [EsxSettingsDepotContentComponentsVersionsInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def get(name, version, opts = {})
      data, _status_code, _headers = get_with_http_info(name, version, opts)
      data
    end

    # Returns information about a given component version in the depot.
    # @api private
    # @param name Name of the component
    # @param version Version of the component
    # @param [Hash] opts the optional parameters
    # @return [Array<(EsxSettingsDepotContentComponentsVersionsInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(name, version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsDepotContentComponentsVersionsApi.get ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SettingsDepotContentComponentsVersionsApi.get"
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling SettingsDepotContentComponentsVersionsApi.get"
      end
      # resource path
      local_var_path = '/api/esx/settings/depot-content/components/{name}/versions/{version}'.sub('{' + 'name' + '}', name.to_s).sub('{' + 'version' + '}', version.to_s)

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
	  '200' => 'ESX::EsxSettingsDepotContentComponentsVersionsInfo',
	  '401' => 'ESX::VapiStdErrorsUnauthenticated',
	  '404' => 'ESX::VapiStdErrorsNotFound',
	  '500' => 'ESX::VapiStdErrorsError',
	  '503' => 'ESX::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsDepotContentComponentsVersionsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
