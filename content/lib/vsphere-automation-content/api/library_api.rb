# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content - VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


require 'uri'

module VSphereAutomation
  module Content
  class LibraryApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns a list of all the visible (as determined by authorization policy) libraries matching the requested {@link Library.FindSpec}.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryFindResp|VapiStdErrorsInvalidArgumentError|]
    def find(request_body, opts = {})
      data, _status_code, _headers = find_with_http_info(request_body, opts)
      data
    end

    # Returns a list of all the visible (as determined by authorization policy) libraries matching the requested {@link Library.FindSpec}.
    # @api private
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryFindResp|VapiStdErrorsInvalidArgumentError|, Fixnum, Hash)>]  data, response status code and response headers
    def find_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryApi.find ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling LibraryApi.find"
      end
      # resource path
      local_var_path = '/rest/com/vmware/content/library?~action=find'

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
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'Content::ContentLibraryFindResp',
	  '400' => 'Content::VapiStdErrorsInvalidArgumentError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryApi#find\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns a given {@link LibraryModel}.
    # @param library_id Identifier of the library to return.
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryResp|VapiStdErrorsNotFoundError|]
    def get(library_id, opts = {})
      data, _status_code, _headers = get_with_http_info(library_id, opts)
      data
    end

    # Returns a given {@link LibraryModel}.
    # @api private
    # @param library_id Identifier of the library to return.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryResp|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(library_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryApi.get ...'
      end
      # verify the required parameter 'library_id' is set
      if @api_client.config.client_side_validation && library_id.nil?
        fail ArgumentError, "Missing the required parameter 'library_id' when calling LibraryApi.get"
      end
      # resource path
      local_var_path = '/rest/com/vmware/content/library/id:{library_id}'.sub('{' + 'library_id' + '}', library_id.to_s)

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
	  '200' => 'Content::ContentLibraryResp',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the identifiers of all libraries of any type in the Content Library.
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryListResp|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns the identifiers of all libraries of any type in the Content Library.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryListResp|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryApi.list ...'
      end
      # resource path
      local_var_path = '/rest/com/vmware/content/library'

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
	  '200' => 'Content::ContentLibraryListResp',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates the properties of a library. <p> This is an incremental update to the library. Any {@term field} in the {@link LibraryModel} {@term structure} that is {@term unset} will not be modified. <p> This {@term operation} will only update the common properties for all library types. This will not, for example, update the {@link LibraryModel#publishInfo} of a local library, nor the {@link LibraryModel#subscriptionInfo} of a subscribed library. Specific properties are updated in {@link LocalLibrary#update} and {@link SubscribedLibrary#update}.
    # @param library_id Identifier of the library to update.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsInvalidArgumentError|VapiStdErrorsNotFoundError|nil]
    def update(library_id, request_body, opts = {})
      update_with_http_info(library_id, request_body, opts)
      nil
    end

    # Updates the properties of a library. &lt;p&gt; This is an incremental update to the library. Any {@term field} in the {@link LibraryModel} {@term structure} that is {@term unset} will not be modified. &lt;p&gt; This {@term operation} will only update the common properties for all library types. This will not, for example, update the {@link LibraryModel#publishInfo} of a local library, nor the {@link LibraryModel#subscriptionInfo} of a subscribed library. Specific properties are updated in {@link LocalLibrary#update} and {@link SubscribedLibrary#update}.
    # @api private
    # @param library_id Identifier of the library to update.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsInvalidArgumentError|VapiStdErrorsNotFoundError|nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(library_id, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryApi.update ...'
      end
      # verify the required parameter 'library_id' is set
      if @api_client.config.client_side_validation && library_id.nil?
        fail ArgumentError, "Missing the required parameter 'library_id' when calling LibraryApi.update"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling LibraryApi.update"
      end
      # resource path
      local_var_path = '/rest/com/vmware/content/library/id:{library_id}'.sub('{' + 'library_id' + '}', library_id.to_s)

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
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
