# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'uri'

module VSphereAutomation
  module ESX
  class SettingsClustersSoftwareSolutionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Deletes the given solution from the desired software specification. The deletion will be validated along with the entire software specification before it is committed as new desired spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
    # @param cluster Identifier of the cluster.
    # @param solution Identifier of the solution.
    # @param [Hash] opts the optional parameters
    # @return [String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def delete_task(cluster, solution, opts = {})
      data, _status_code, _headers = delete_task_with_http_info(cluster, solution, opts)
      data
    end

    # Deletes the given solution from the desired software specification. The deletion will be validated along with the entire software specification before it is committed as new desired spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
    # @api private
    # @param cluster Identifier of the cluster.
    # @param solution Identifier of the solution.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def delete_task_with_http_info(cluster, solution, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsClustersSoftwareSolutionsApi.delete_task ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling SettingsClustersSoftwareSolutionsApi.delete_task"
      end
      # verify the required parameter 'solution' is set
      if @api_client.config.client_side_validation && solution.nil?
        fail ArgumentError, "Missing the required parameter 'solution' when calling SettingsClustersSoftwareSolutionsApi.delete_task"
      end
      # resource path
      local_var_path = '/api/esx/settings/clusters/{cluster}/software/solutions/{solution}?vmw-task=true'.sub('{' + 'cluster' + '}', cluster.to_s).sub('{' + 'solution' + '}', solution.to_s)

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
        :auth_names => auth_names,
	:return_type => {
	  '202' => 'ESX::String',
	  '400' => 'ESX::VapiStdErrorsInvalidArgument',
	  '401' => 'ESX::VapiStdErrorsUnauthenticated',
	  '404' => 'ESX::VapiStdErrorsNotFound',
	  '500' => 'ESX::VapiStdErrorsError',
	  '503' => 'ESX::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsClustersSoftwareSolutionsApi#delete_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns components registered for the given solution in the desired software specification.
    # @param cluster Identifier of the cluster.
    # @param solution Identifier of the solution.
    # @param [Hash] opts the optional parameters
    # @return [EsxSettingsSolutionInfo|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def get(cluster, solution, opts = {})
      data, _status_code, _headers = get_with_http_info(cluster, solution, opts)
      data
    end

    # Returns components registered for the given solution in the desired software specification.
    # @api private
    # @param cluster Identifier of the cluster.
    # @param solution Identifier of the solution.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EsxSettingsSolutionInfo|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(cluster, solution, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsClustersSoftwareSolutionsApi.get ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling SettingsClustersSoftwareSolutionsApi.get"
      end
      # verify the required parameter 'solution' is set
      if @api_client.config.client_side_validation && solution.nil?
        fail ArgumentError, "Missing the required parameter 'solution' when calling SettingsClustersSoftwareSolutionsApi.get"
      end
      # resource path
      local_var_path = '/api/esx/settings/clusters/{cluster}/software/solutions/{solution}'.sub('{' + 'cluster' + '}', cluster.to_s).sub('{' + 'solution' + '}', solution.to_s)

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
	  '200' => 'ESX::EsxSettingsSolutionInfo',
	  '400' => 'ESX::VapiStdErrorsInvalidArgument',
	  '401' => 'ESX::VapiStdErrorsUnauthenticated',
	  '404' => 'ESX::VapiStdErrorsNotFound',
	  '500' => 'ESX::VapiStdErrorsError',
	  '503' => 'ESX::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsClustersSoftwareSolutionsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns all solutions in the desired software specification.
    # @param cluster Identifier of the cluster.
    # @param [Hash] opts the optional parameters
    # @return [Hash<String, EsxSettingsSolutionInfo>|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def list(cluster, opts = {})
      data, _status_code, _headers = list_with_http_info(cluster, opts)
      data
    end

    # Returns all solutions in the desired software specification.
    # @api private
    # @param cluster Identifier of the cluster.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Hash<String, EsxSettingsSolutionInfo>|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsClustersSoftwareSolutionsApi.list ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling SettingsClustersSoftwareSolutionsApi.list"
      end
      # resource path
      local_var_path = '/api/esx/settings/clusters/{cluster}/software/solutions'.sub('{' + 'cluster' + '}', cluster.to_s)

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
	  '200' => 'ESX::Hash<String, EsxSettingsSolutionInfo>',
	  '401' => 'ESX::VapiStdErrorsUnauthenticated',
	  '404' => 'ESX::VapiStdErrorsNotFound',
	  '500' => 'ESX::VapiStdErrorsError',
	  '503' => 'ESX::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsClustersSoftwareSolutionsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Sets the components registered for the given solution in the desired software specification. The task will set only one solution specification at a time. Solution constraints would be validated with the current desired software specification before it is committed as new desired spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
    # @param cluster Identifier of the cluster.
    # @param solution Identifier of the solution.
    # @param [Hash] opts the optional parameters
    # @option opts [EsxSettingsSolutionSpec] :request_body 
    # @return [String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|]
    def set_task(cluster, solution, opts = {})
      data, _status_code, _headers = set_task_with_http_info(cluster, solution, opts)
      data
    end

    # Sets the components registered for the given solution in the desired software specification. The task will set only one solution specification at a time. Solution constraints would be validated with the current desired software specification before it is committed as new desired spec. The result of this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the response of this operation.
    # @api private
    # @param cluster Identifier of the cluster.
    # @param solution Identifier of the solution.
    # @param [Hash] opts the optional parameters
    # @option opts [EsxSettingsSolutionSpec] :request_body 
    # @return [Array<(String|VapiStdErrorsInvalidArgument|VapiStdErrorsUnauthenticated|VapiStdErrorsNotFound|VapiStdErrorsError|VapiStdErrorsServiceUnavailable|, Fixnum, Hash)>]  data, response status code and response headers
    def set_task_with_http_info(cluster, solution, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsClustersSoftwareSolutionsApi.set_task ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling SettingsClustersSoftwareSolutionsApi.set_task"
      end
      # verify the required parameter 'solution' is set
      if @api_client.config.client_side_validation && solution.nil?
        fail ArgumentError, "Missing the required parameter 'solution' when calling SettingsClustersSoftwareSolutionsApi.set_task"
      end
      # resource path
      local_var_path = '/api/esx/settings/clusters/{cluster}/software/solutions/{solution}?vmw-task=true'.sub('{' + 'cluster' + '}', cluster.to_s).sub('{' + 'solution' + '}', solution.to_s)

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
	  '404' => 'ESX::VapiStdErrorsNotFound',
	  '500' => 'ESX::VapiStdErrorsError',
	  '503' => 'ESX::VapiStdErrorsServiceUnavailable',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsClustersSoftwareSolutionsApi#set_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
