# VSphereAutomation::VStats::RetentionPlansApi

All URIs are relative to *https://&lt;vcenter&gt;*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_default**](RetentionPlansApi.md#get_default) | **GET** /api/stats/retentions/default | Returns the default retention plan. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.


# **get_default**
> VstatsRetentionPlansInfo get_default

Returns the default retention plan. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.

### Example
```ruby
# load the gem
require 'vsphere-automation-vstats'
# setup authorization
VSphereAutomation::Configuration.new.tap do |config|
  # Configure API key authorization: api_key
  config.api_key['vmware-api-session-id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['vmware-api-session-id'] = 'Bearer'
end

api_instance = VSphereAutomation::VStats::RetentionPlansApi.new

begin
  #Returns the default retention plan. Warning: This operation is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments.
  result = api_instance.get_default
  p result
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling RetentionPlansApi->get_default: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VstatsRetentionPlansInfo**](VstatsRetentionPlansInfo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



