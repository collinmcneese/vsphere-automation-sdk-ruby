# VSphereAutomation::VStats::VstatsResourceAddressesListResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_next** | **String** | Used to retrieve paged data for larger result sets. Token is generated by server. The value of this field should be supplied in a subsequent call to ResourceAddresses.list operation. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. unset when there are no more pages of data to be retrieved. | [optional] 
**rsrc_addrs** | [**Array&lt;VstatsResourceAddressesInfo&gt;**](VstatsResourceAddressesInfo.md) | List of Resource Addresses received. Warning: This attribute is available as Technology Preview. These are early access APIs provided to test, automate and provide feedback on the feature. Since this can change based on feedback, VMware does not guarantee backwards compatibility and recommends against using them in production environments. Some Technology Preview APIs might only be applicable to specific environments. | 


