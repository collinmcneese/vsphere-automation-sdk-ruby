# VSphereAutomation::Appliance::ApplianceObservabilityConsumersUpdateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**ApplianceObservabilityConsumersStatus**](ApplianceObservabilityConsumersStatus.md) |  | [optional] 
**topics** | **Array&lt;String&gt;** | Topics to which the consumer will be subscribed. if the unset then subscribed topics will not be changed. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: appliance.observability.topic. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: appliance.observability.topic. | [optional] 


