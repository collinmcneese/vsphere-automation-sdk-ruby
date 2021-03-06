# VSphereAutomation::CIS::TaggingCategoryVMApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](TaggingCategoryVMApi.md#list) | **GET** /rest/cis/tagging/category/vm | Returns information about the categories that have virtual machines as an attachable type. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.


# **list**
> CisTaggingCategoryVMListResp list

Returns information about the categories that have virtual machines as an attachable type. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.

### Example
```ruby
# load the gem
require 'vsphere-automation-cis'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::CIS::TaggingCategoryVMApi.new

begin
  #Returns information about the categories that have virtual machines as an attachable type. Warning: This operation is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented.
  result = api_instance.list
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling TaggingCategoryVMApi->list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CisTaggingCategoryVMListResp**](CisTaggingCategoryVMListResp.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



