# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content - VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


require 'uri'

module VSphereAutomation
  module Content
  class LibraryItemFileApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieves the information for a single file in a library item by its name.
    # @param library_item_id Identifier of the library item whose file information should be returned.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemFileResp|VapiStdErrorsNotFoundError|]
    def get(library_item_id, request_body, opts = {})
      data, _status_code, _headers = get_with_http_info(library_item_id, request_body, opts)
      data
    end

    # Retrieves the information for a single file in a library item by its name.
    # @api private
    # @param library_item_id Identifier of the library item whose file information should be returned.
    # @param request_body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemFileResp|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(library_item_id, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemFileApi.get ...'
      end
      # verify the required parameter 'library_item_id' is set
      if @api_client.config.client_side_validation && library_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'library_item_id' when calling LibraryItemFileApi.get"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling LibraryItemFileApi.get"
      end
      # resource path
      local_var_path = '/rest/com/vmware/content/library/item/file/id:{library_item_id}?~action=get'.sub('{' + 'library_item_id' + '}', library_item_id.to_s)

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
	  '200' => 'Content::ContentLibraryItemFileResp',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemFileApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists all of the files that are stored within a given library item.
    # @param library_item_id Identifier of the library item whose files should be listed.
    # @param [Hash] opts the optional parameters
    # @return [ContentLibraryItemFileListResp|VapiStdErrorsNotFoundError|]
    def list(library_item_id, opts = {})
      data, _status_code, _headers = list_with_http_info(library_item_id, opts)
      data
    end

    # Lists all of the files that are stored within a given library item.
    # @api private
    # @param library_item_id Identifier of the library item whose files should be listed.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContentLibraryItemFileListResp|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(library_item_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LibraryItemFileApi.list ...'
      end
      # verify the required parameter 'library_item_id' is set
      if @api_client.config.client_side_validation && library_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'library_item_id' when calling LibraryItemFileApi.list"
      end
      # resource path
      local_var_path = '/rest/com/vmware/content/library/item/file'

      # query parameters
      query_params = {}
      query_params[:'library_item_id'] = library_item_id

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
	  '200' => 'Content::ContentLibraryItemFileListResp',
	  '404' => 'Content::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LibraryItemFileApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
