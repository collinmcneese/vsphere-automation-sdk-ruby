# VSphereAutomation::VCenter::VcenterNamespaceManagementClustersNCPClusterNetworkUpdateSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_ingress_tls_certificate** | **String** | PEM-encoded x509 certificate used by NSX as a default fallback certificate for Kubernetes Ingress services. | [optional] 
**egress_cidrs** | [**Array&lt;VcenterNamespaceManagementIpv4Cidr&gt;**](VcenterNamespaceManagementIpv4Cidr.md) | CIDR blocks from which NSX assigns IP addresses used for performing SNAT from container IPs to external IPs. These ranges should not overlap with those in Clusters.NCPClusterNetworkUpdateSpec.pod-cidrs, vcenter.namespace_management.EnableSpec#serviceCidr, Clusters.NCPClusterNetworkUpdateSpec.ingress-cidrs, or other services running in the datacenter. An update operation only allows for addition of new CIDR blocks to the existing list. If unset, CIDR from which Kubernetes allocates egress IP addresses will not be modified. | [optional] 
**ingress_cidrs** | [**Array&lt;VcenterNamespaceManagementIpv4Cidr&gt;**](VcenterNamespaceManagementIpv4Cidr.md) | CIDR blocks from which NSX assigns IP addresses for Kubernetes Ingresses and Kubernetes Services of type LoadBalancer. These ranges should not overlap with those in Clusters.NCPClusterNetworkUpdateSpec.pod-cidrs, vcenter.namespace_management.EnableSpec#serviceCidr, Clusters.NCPClusterNetworkUpdateSpec.egress-cidrs, or other services running in the datacenter. An update operation only allows for addition of new CIDR blocks to the existing list. If unset, CIDRs from which Kubernetes allocates ingress IP addresses will not be modified. | [optional] 
**pod_cidrs** | [**Array&lt;VcenterNamespaceManagementIpv4Cidr&gt;**](VcenterNamespaceManagementIpv4Cidr.md) | CIDR blocks from which Kubernetes allocates pod IP addresses. This range should not overlap with those in vcenter.namespace_management.EnableSpec#serviceCidr, Clusters.NCPClusterNetworkUpdateSpec.ingress-cidrs, Clusters.NCPClusterNetworkUpdateSpec.egress-cidrs, or other services running in the datacenter. An update operation only allows for addition of new CIDR blocks to the existing list. All Pod CIDR blocks must be of at least subnet size /23. If unset, CIDRs from which Kubernetes allocates pod IP addresses will not be modified. | [optional] 

