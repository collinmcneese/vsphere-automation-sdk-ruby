# VSphereAutomation::VCenter::VcenterIdentityProvidersOauth2CreateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auth_endpoint** | **String** | Authentication/authorization endpoint of the provider | 
**auth_query_params** | [**Array&lt;VcenterHlmRemoteWorkerTrustCreateSpecGroupMap&gt;**](VcenterHlmRemoteWorkerTrustCreateSpecGroupMap.md) | &lt;p&gt;key/value pairs that are to be appended to the authEndpoint request.&lt;/p&gt; &lt;p&gt;How to append to authEndpoint request:&lt;/p&gt; If the map is not empty, a \&quot;?\&quot; is added to the endpoint URL, and combination of each k and each string in the v is added with an \&quot;&amp;\&quot; delimiter. Details:&lt;ul&gt; &lt;li&gt;If the value contains only one string, then the key is added with \&quot;k&#x3D;v\&quot;.&lt;/li&gt; &lt;li&gt;If the value is an empty list, then the key is added without a \&quot;&#x3D;v\&quot;.&lt;/li&gt; &lt;li&gt;If the value contains multiple strings, then the key is repeated in the query-string for each string in the value.&lt;/li&gt;&lt;/ul&gt; | [optional] 
**authentication_method** | [**VcenterIdentityProvidersOauth2AuthenticationMethod**](VcenterIdentityProvidersOauth2AuthenticationMethod.md) |  | 
**claim_map** | [**Array&lt;VcenterIdentityProvidersOauth2CreateSpecClaimMap&gt;**](VcenterIdentityProvidersOauth2CreateSpecClaimMap.md) | The map used to transform an OAuth2 claim to a corresponding claim that vCenter Server understands. Currently only the key \&quot;perms\&quot; is supported. The key \&quot;perms\&quot; is used for mapping the \&quot;perms\&quot; claim of incoming JWT. The value is another map with an external group as the key and a vCenter Server group as value. | 
**client_id** | **String** | Client identifier to connect to the provider | 
**client_secret** | **String** | The secret shared between the client and the provider | 
**issuer** | **String** | The identity provider namespace. It is used to validate the issuer in the acquired OAuth2 token. | 
**public_key_uri** | **String** | Endpoint to retrieve the provider public key for validation | 
**token_endpoint** | **String** | Token endpoint of the provider | 


