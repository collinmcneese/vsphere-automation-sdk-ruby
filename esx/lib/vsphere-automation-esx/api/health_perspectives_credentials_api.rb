# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# esx - No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)


require 'uri'

module VSphereAutomation
  module ESX
  class HealthPerspectivesCredentialsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates server credentials that will be used by the EHP service to perform operations. The credentials are bound to the lifetime of the session of the user which called this method.
    # @param [Hash] opts the optional parameters
    # @option opts [EsxHealthPerspectivesCredentialsNsxConnectionSpec] :request_body 
    # @return [|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|nil]
    def create(opts = {})
      create_with_http_info(opts)
      nil
    end

    # Creates server credentials that will be used by the EHP service to perform operations. The credentials are bound to the lifetime of the session of the user which called this method.
    # @api private
    # @param [Hash] opts the optional parameters
    # @option opts [EsxHealthPerspectivesCredentialsNsxConnectionSpec] :request_body 
    # @return [Array<(|VapiStdErrorsUnauthenticated|VapiStdErrorsUnauthorized|nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HealthPerspectivesCredentialsApi.create ...'
      end
      # resource path
      local_var_path = '/api/esx/health/perspectives/credentials'

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HealthPerspectivesCredentialsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
