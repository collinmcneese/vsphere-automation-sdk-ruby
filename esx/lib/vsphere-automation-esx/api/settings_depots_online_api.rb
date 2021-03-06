# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'uri'

module VSphereAutomation
  module ESX
  class SettingsDepotsOnlineApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Adds a new online software depot to the list of currently configured online software depots.
    # @param [Hash] opts the optional parameters
    # @option opts [EsxSettingsDepotsOnlineCreateSpec] :request_body 
    # @return [String|VapiStdErrorsAlreadyExists|VapiStdErrorsUnauthenticated|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def create(opts = {})
      data, _status_code, _headers = create_with_http_info(opts)
      data
    end

    # Adds a new online software depot to the list of currently configured online software depots.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [EsxSettingsDepotsOnlineCreateSpec] :request_body 
    # @return [Array<(String|VapiStdErrorsAlreadyExists|VapiStdErrorsUnauthenticated|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsDepotsOnlineApi.create ...'
      end
      # resource path
      local_var_path = '/api/esx/settings/depots/online'

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
	  '201' => 'ESX::String',
	  '400' => 'ESX::VapiStdErrorsAlreadyExists',
	  '401' => 'ESX::VapiStdErrorsUnauthenticated',
	  '500' => 'ESX::VapiStdErrorsError',
	  '503' => 'ESX::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsDepotsOnlineApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Removes a depot from the list of currently configured online software depots. It will not remove the downloaded metadata and payloads from that depot.
    # @param depot Identifier of the depot to be removed.
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil]
    def delete(depot, opts = {})
      delete_with_http_info(depot, opts)
      nil
    end

    # Removes a depot from the list of currently configured online software depots. It will not remove the downloaded metadata and payloads from that depot.
    # @api private
    # @param depot Identifier of the depot to be removed.
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(depot, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsDepotsOnlineApi.delete ...'
      end
      # verify the required parameter 'depot' is set
      if @api_client.config.client_side_validation && depot.nil?
        fail ArgumentError, "Missing the required parameter 'depot' when calling SettingsDepotsOnlineApi.delete"
      end
      # resource path
      local_var_path = '/api/esx/settings/depots/online/{depot}'.sub('{' + 'depot' + '}', depot.to_s)

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
        @api_client.config.logger.debug "API called: SettingsDepotsOnlineApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets the information about a currently configured online software depot.
    # @param depot Identifier for the depot.
    # @param [Hash] opts the optional parameters
    # @return [EsxSettingsDepotsOnlineInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def get(depot, opts = {})
      data, _status_code, _headers = get_with_http_info(depot, opts)
      data
    end

    # Gets the information about a currently configured online software depot.
    # @api private
    # @param depot Identifier for the depot.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EsxSettingsDepotsOnlineInfo|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(depot, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsDepotsOnlineApi.get ...'
      end
      # verify the required parameter 'depot' is set
      if @api_client.config.client_side_validation && depot.nil?
        fail ArgumentError, "Missing the required parameter 'depot' when calling SettingsDepotsOnlineApi.get"
      end
      # resource path
      local_var_path = '/api/esx/settings/depots/online/{depot}'.sub('{' + 'depot' + '}', depot.to_s)

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
	  '200' => 'ESX::EsxSettingsDepotsOnlineInfo',
	  '401' => 'ESX::VapiStdErrorsUnauthenticated',
	  '404' => 'ESX::VapiStdErrorsNotFound',
	  '500' => 'ESX::VapiStdErrorsError',
	  '503' => 'ESX::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsDepotsOnlineApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns a list of currently configured online software depots.
    # @param [Hash] opts the optional parameters
    # @return [Hash<String, EsxSettingsDepotsOnlineSummary>|VapiStdErrorsUnauthenticated|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns a list of currently configured online software depots.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(Hash<String, EsxSettingsDepotsOnlineSummary>|VapiStdErrorsUnauthenticated|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsDepotsOnlineApi.list ...'
      end
      # resource path
      local_var_path = '/api/esx/settings/depots/online'

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
	  '200' => 'ESX::Hash<String, EsxSettingsDepotsOnlineSummary>',
	  '401' => 'ESX::VapiStdErrorsUnauthenticated',
	  '500' => 'ESX::VapiStdErrorsError',
	  '503' => 'ESX::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsDepotsOnlineApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates the configuration of a currently configured online software depot.
    # @param depot Identifier of the depot to be updated.
    # @param [Hash] opts the optional parameters
    # @option opts [EsxSettingsDepotsOnlineUpdateSpec] :request_body 
    # @return [|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil]
    def update(depot, opts = {})
      update_with_http_info(depot, opts)
      nil
    end

    # Updates the configuration of a currently configured online software depot.
    # @api private
    # @param depot Identifier of the depot to be updated.
    # @param [Hash] opts the optional parameters
    # @option opts [EsxSettingsDepotsOnlineUpdateSpec] :request_body 
    # @return [Array<(|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(depot, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsDepotsOnlineApi.update ...'
      end
      # verify the required parameter 'depot' is set
      if @api_client.config.client_side_validation && depot.nil?
        fail ArgumentError, "Missing the required parameter 'depot' when calling SettingsDepotsOnlineApi.update"
      end
      # resource path
      local_var_path = '/api/esx/settings/depots/online/{depot}'.sub('{' + 'depot' + '}', depot.to_s)

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
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsDepotsOnlineApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
