# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'uri'

module VSphereAutomation
  module ESX
  class SettingsInternalSoftwareApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Sets the specified software document as the desired state document for the given cluster identifier. It is not verified whether an entity with the given cluster identifier exists or not.
    # @param cluster Cluster identifier with which the given software document should be associated.
    # @param [Hash] opts the optional parameters
    # @option opts [EsxSettingsSoftwareSpec] :request_body 
    # @return [String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def set_task(cluster, opts = {})
      data, _status_code, _headers = set_task_with_http_info(cluster, opts)
      data
    end

    # Sets the specified software document as the desired state document for the given cluster identifier. It is not verified whether an entity with the given cluster identifier exists or not.
    # @api private
    # @param cluster Cluster identifier with which the given software document should be associated.
    # @param [Hash] opts the optional parameters
    # @option opts [EsxSettingsSoftwareSpec] :request_body 
    # @return [Array<(String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def set_task_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsInternalSoftwareApi.set_task ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling SettingsInternalSoftwareApi.set_task"
      end
      # resource path
      local_var_path = '/api/esx/settings/internal/software/{cluster}?vmw-task=true'.sub('{' + 'cluster' + '}', cluster.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'request_body'])
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '202' => 'ESX::String',
	  '400' => 'ESX::VapiStdErrorsInvalidArgument',
	  '401' => 'ESX::VapiStdErrorsUnauthenticated',
	  '500' => 'ESX::VapiStdErrorsError',
	  '503' => 'ESX::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsInternalSoftwareApi#set_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
