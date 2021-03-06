# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'uri'

module VSphereAutomation
  module ESX
  class SettingsDepotsOfflineApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Imports a new offline software depot. This will also import the metadata and payloads from this offline depot. The returned task will fail and no Offline Depot would be created if there are any issues during import. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
    # @param [Hash] opts the optional parameters
    # @option opts [EsxSettingsDepotsOfflineCreateSpec] :request_body 
    # @return [String|VapiStdErrorsAlreadyExists|VapiStdErrorsUnauthenticated|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def create_task(opts = {})
      data, _status_code, _headers = create_task_with_http_info(opts)
      data
    end

    # Imports a new offline software depot. This will also import the metadata and payloads from this offline depot. The returned task will fail and no Offline Depot would be created if there are any issues during import. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [EsxSettingsDepotsOfflineCreateSpec] :request_body 
    # @return [Array<(String|VapiStdErrorsAlreadyExists|VapiStdErrorsUnauthenticated|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def create_task_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsDepotsOfflineApi.create_task ...'
      end
      # resource path
      local_var_path = '/api/esx/settings/depots/offline?vmw-task=true'

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '202' => 'ESX::String',
	  '400' => 'ESX::VapiStdErrorsAlreadyExists',
	  '401' => 'ESX::VapiStdErrorsUnauthenticated',
	  '500' => 'ESX::VapiStdErrorsError',
	  '503' => 'ESX::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsDepotsOfflineApi#create_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Removes a depot from the list of imported offline software depots.
    # @param depot Identifier of the depot to be removed.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil]
    def delete(depot, opts = {})
      delete_with_http_info(depot, opts)
      nil
    end

    # Removes a depot from the list of imported offline software depots.
    # @api private
    # @param depot Identifier of the depot to be removed.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(depot, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsDepotsOfflineApi.delete ...'
      end
      # verify the required parameter 'depot' is set
      if @api_client.config.client_side_validation && depot.nil?
        fail ArgumentError, "Missing the required parameter 'depot' when calling SettingsDepotsOfflineApi.delete"
      end
      # resource path
      local_var_path = '/api/esx/settings/depots/offline/{depot}'.sub('{' + 'depot' + '}', depot.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsDepotsOfflineApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets the information about an imported offline software depot.
    # @param depot Identifier for the depot.
    # @param [Hash] opts the optional parameters
    # @return [EsxSettingsDepotsOfflineInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def get(depot, opts = {})
      data, _status_code, _headers = get_with_http_info(depot, opts)
      data
    end

    # Gets the information about an imported offline software depot.
    # @api private
    # @param depot Identifier for the depot.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EsxSettingsDepotsOfflineInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(depot, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsDepotsOfflineApi.get ...'
      end
      # verify the required parameter 'depot' is set
      if @api_client.config.client_side_validation && depot.nil?
        fail ArgumentError, "Missing the required parameter 'depot' when calling SettingsDepotsOfflineApi.get"
      end
      # resource path
      local_var_path = '/api/esx/settings/depots/offline/{depot}'.sub('{' + 'depot' + '}', depot.to_s)

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
	  '200' => 'ESX::EsxSettingsDepotsOfflineInfo',
	  '401' => 'ESX::VapiStdErrorsUnauthenticated',
	  '404' => 'ESX::VapiStdErrorsNotFound',
	  '500' => 'ESX::VapiStdErrorsError',
	  '503' => 'ESX::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsDepotsOfflineApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns currently imported offline software depots.
    # @param [Hash] opts the optional parameters
    # @return [Hash<String, EsxSettingsDepotsOfflineSummary>|VapiStdErrorsUnauthenticated|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns currently imported offline software depots.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(Hash<String, EsxSettingsDepotsOfflineSummary>|VapiStdErrorsUnauthenticated|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsDepotsOfflineApi.list ...'
      end
      # resource path
      local_var_path = '/api/esx/settings/depots/offline'

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
	  '200' => 'ESX::Hash<String, EsxSettingsDepotsOfflineSummary>',
	  '401' => 'ESX::VapiStdErrorsUnauthenticated',
	  '500' => 'ESX::VapiStdErrorsError',
	  '503' => 'ESX::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsDepotsOfflineApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
