# VSphereAutomation::Appliance::ApplianceTechpreviewNetworkingFirewallAddrInboundFirewallAddressRule

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **String** | IPv4 or IPv6 address. | 
**interface_name** | **String** | The interface to which this rule applies.  An empty string or \&quot;*\&quot; indicates that the rule applies to all interfaces. | 
**policy** | [**ApplianceTechpreviewNetworkingFirewallAddrInboundFirewallRulePolicy**](ApplianceTechpreviewNetworkingFirewallAddrInboundFirewallRulePolicy.md) |  | 
**prefix** | **Integer** | CIDR prefix used to mask address. For example, an IPv4 prefix of 24 ignores the low-order 8 bits of address. | 


