# VSphereAutomation::Content::ContentLibrarySubscriptionInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authentication_method** | [**ContentLibrarySubscriptionInfoAuthenticationMethod**](ContentLibrarySubscriptionInfoAuthenticationMethod.md) |  | [optional] 
**automatic_sync_enabled** | **BOOLEAN** | Whether the library should participate in automatic library synchronization. In order for automatic synchronization to happen, the global {@link ConfigurationModel#automaticSyncEnabled} option must also be true. The subscription is still active even when automatic synchronization is turned off, but synchronization is only activated with an explicit call to {@link SubscribedLibrary#sync} or {@link SubscribedItem#sync}. In other words, manual synchronization is still available even when automatic synchronization is disabled. | [optional] 
**on_demand** | **BOOLEAN** | Indicates whether a library item&#39;s content will be synchronized only on demand. &lt;p&gt; If this is set to {@code true}, then the library item&#39;s metadata will be synchronized but the item&#39;s content (its files) will not be synchronized. The Content Library Service will synchronize the content upon request only. This can cause the first use of the content to have a noticeable delay. &lt;p&gt; Items without synchronized content can be forcefully synchronized in advance using the {@link SubscribedItem#sync} call with {@param.name forceSyncContent} set to true. Once content has been synchronized, the content can removed with the {@link SubscribedItem#evict} call. &lt;p&gt; If this value is set to {@code false}, all content will be synchronized in advance. | [optional] 
**password** | **String** | The password to use when authenticating. &lt;p&gt; The password must be set when using a password-based authentication method; empty strings are not allowed. | [optional] 
**ssl_thumbprint** | **String** | An optional SHA-1 hash of the SSL certificate for the remote endpoint. &lt;p&gt; If this value is defined the SSL certificate will be verified by comparing it to the SSL thumbprint. The SSL certificate must verify against the thumbprint. When specified, the standard certificate chain validation behavior is not used. The certificate chain is validated normally if this value is {@term unset}. | [optional] 
**subscription_url** | **String** | The URL of the endpoint where the metadata for the remotely published library is being served. &lt;p&gt; This URL can be the {@link PublishInfo#publishUrl} of the published library (for example, https://server/path/lib.json). &lt;p&gt; If the source content comes from a published library with {@link PublishInfo#persistJsonEnabled}, the subscription URL can be a URL pointing to the library JSON file on a datastore or remote file system. The supported formats are: &lt;p&gt; vSphere 6.5 &lt;ul&gt; &lt;li&gt;ds:///vmfs/volumes/{uuid}/mylibrary/lib.json (for datastore)&lt;/li&gt; &lt;li&gt;nfs://server/path/mylibrary/lib.json (for NFSv3 server on vCenter Server Appliance)&lt;/li&gt; &lt;li&gt;nfs://server/path/mylibrary/lib.json?version&#x3D;4 (for NFSv4 server on vCenter Server Appliance) &lt;/li&gt; &lt;li&gt;smb://server/path/mylibrary/lib.json (for SMB server)&lt;/li&gt; &lt;/ul&gt; &lt;p&gt; vSphere 6.0 &lt;ul&gt; &lt;li&gt;file://server/mylibrary/lib.json (for UNC server on vCenter Server for Windows)&lt;/li&gt; &lt;li&gt;file:///path/mylibrary/lib.json (for local file system)&lt;/li&gt; &lt;/ul&gt; &lt;p&gt; When you specify a DS subscription URL, the datastore must be on the same vCenter Server as the subscribed library. When you specify an NFS or SMB subscription URL, the {@link StorageBacking#storageUri} of the subscribed library must be on the same remote file server and should share a common parent path with the subscription URL. | [optional] 
**user_name** | **String** | The username to use when authenticating. &lt;p&gt; The username must be set when using a password-based authentication method. Empty strings are allowed for usernames. | [optional] 

