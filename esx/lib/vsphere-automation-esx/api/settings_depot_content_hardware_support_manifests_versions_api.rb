# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'uri'

module VSphereAutomation
  module ESX
  class SettingsDepotContentHardwareSupportManifestsVersionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns a complete description of a Hardware Support Package (HSP) manifest in the depot (including component lists)
    # @param manifest name of the target HSP manifest
    # @param version version of the target HSP manifest
    # @param [Hash] opts the optional parameters
    # @return [EsxSettingsDepotContentHardwareSupportManifestsVersionsInfo|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def get(manifest, version, opts = {})
      data, _status_code, _headers = get_with_http_info(manifest, version, opts)
      data
    end

    # Returns a complete description of a Hardware Support Package (HSP) manifest in the depot (including component lists)
    # @api private
    # @param manifest name of the target HSP manifest
    # @param version version of the target HSP manifest
    # @param [Hash] opts the optional parameters
    # @return [Array<(EsxSettingsDepotContentHardwareSupportManifestsVersionsInfo|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(manifest, version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsDepotContentHardwareSupportManifestsVersionsApi.get ...'
      end
      # verify the required parameter 'manifest' is set
      if @api_client.config.client_side_validation && manifest.nil?
        fail ArgumentError, "Missing the required parameter 'manifest' when calling SettingsDepotContentHardwareSupportManifestsVersionsApi.get"
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling SettingsDepotContentHardwareSupportManifestsVersionsApi.get"
      end
      # resource path
      local_var_path = '/api/esx/settings/depot-content/hardware-support/manifests/{manifest}/versions/{version}'.sub('{' + 'manifest' + '}', manifest.to_s).sub('{' + 'version' + '}', version.to_s)

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
	  '200' => 'ESX::EsxSettingsDepotContentHardwareSupportManifestsVersionsInfo',
	  '400' => 'ESX::VapiStdErrorsInvalidArgument',
	  '401' => 'ESX::VapiStdErrorsUnauthenticated',
	  '403' => 'ESX::VapiStdErrorsUnauthorized',
	  '404' => 'ESX::VapiStdErrorsNotFound',
	  '500' => 'ESX::VapiStdErrorsError',
	  '503' => 'ESX::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsDepotContentHardwareSupportManifestsVersionsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
