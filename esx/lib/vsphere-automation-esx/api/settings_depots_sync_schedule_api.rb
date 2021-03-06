# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'uri'

module VSphereAutomation
  module ESX
  class SettingsDepotsSyncScheduleApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the currently configured software depot sync schedule.
    # @param [Hash] opts the optional parameters
    # @return [EsxSettingsDepotsSyncScheduleSpec|VapiStdErrorsUnauthenticated|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Returns the currently configured software depot sync schedule.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(EsxSettingsDepotsSyncScheduleSpec|VapiStdErrorsUnauthenticated|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsDepotsSyncScheduleApi.get ...'
      end
      # resource path
      local_var_path = '/api/esx/settings/depots/sync-schedule'

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
	  '200' => 'ESX::EsxSettingsDepotsSyncScheduleSpec',
	  '401' => 'ESX::VapiStdErrorsUnauthenticated',
	  '500' => 'ESX::VapiStdErrorsError',
	  '503' => 'ESX::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsDepotsSyncScheduleApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Sets the software depot sync schedule.
    # @param [Hash] opts the optional parameters
    # @option opts [EsxSettingsDepotsSyncScheduleSpec] :request_body 
    # @return [|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil]
    def set(opts = {})
      set_with_http_info(opts)
      nil
    end

    # Sets the software depot sync schedule.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [EsxSettingsDepotsSyncScheduleSpec] :request_body 
    # @return [Array<(|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsDepotsSyncScheduleApi.set ...'
      end
      # resource path
      local_var_path = '/api/esx/settings/depots/sync-schedule'

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsDepotsSyncScheduleApi#set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
