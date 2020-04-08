# VSphereAutomation::VCenter::VcenterVmGuestDataSetsInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delete_on_clone** | **Boolean** | If set, the data set is deleted when the virtual machine is cloned. This can avoid unique data from being replicated when a virtual machine is cloned. XXX replaced by diskMode -- left for discussion. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**delete_on_snapshot** | **Boolean** | If set, the data set is deleted when a vritual machine is restored from a snapshot. XXX replaced by diskMode -- left for discussion. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**description** | **String** | A description of how the data set is used by its creator. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**disk_mode** | **Boolean** | If set, the data set is treated like a disk on certain virtual machine operations. The data set is copied when the virtual machine is cloned or a snapshot is taken. Otherwise the data set is considered a property of the virtual machine, and is not included in a a snapshot operation or when the virtual machine is cloned. XXX field name, wording and terminology needs work. &#39;disk&#39; mode (data is cloned &amp; snapshotted) vs &#39;VM&#39; mode was first suggestion. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**guest** | [**VcenterVmGuestDataSetsAccess**](VcenterVmGuestDataSetsAccess.md) |  | 
**host** | [**VcenterVmGuestDataSetsAccess**](VcenterVmGuestDataSetsAccess.md) |  | 
**name** | **String** | The name of the data set.  It is recommended that this value take the form \&quot;com.company.project\&quot; to avoid conflict with other uses.. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**persist** | **Boolean** | If set, the data is persisted across virtual machine power cycles. Otherwise data is cleared when the virtual machine is powered off. XXX is there any real use case? This is basically guestVars. Is it an error if a entry is set in offline mode for a non-persistent data set?. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**restricted** | **Boolean** | If set, the data set is controlled by the virtual machine infrastructure, not via the API, and used for virtual machine configuration, settings and statistics. Attempts to change the attributes of this namespace will fail. XXX add Unsupported (Unauthorized?) to update() and delete() if this stays. XXX name it builtin? internal ?. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**size** | **Integer** | The total size in bytes of the Entry data that can be used by this data set. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 
**used** | **Integer** | The total size in bytes of the Entry data in use by this data set. Warning: This attribute is part of a new feature in development. It may be changed at any time and may not have all supported functionality implemented. | 

