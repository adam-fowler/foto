// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Amazon Elastic Container Service for Kubernetes (Amazon EKS) is a managed service that makes it easy for you to run Kubernetes on AWS without needing to stand up or maintain your own Kubernetes control plane. Kubernetes is an open-source system for automating the deployment, scaling, and management of containerized applications.  Amazon EKS runs up-to-date versions of the open-source Kubernetes software, so you can use all the existing plugins and tooling from the Kubernetes community. Applications running on Amazon EKS are fully compatible with applications running on any standard Kubernetes environment, whether running in on-premises data centers or public clouds. This means that you can easily migrate any standard Kubernetes application to Amazon EKS without any code modification required.
*/
public struct EKS {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "eks",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-11-01",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [EKSErrorType.self]
        )
    }

    ///  Creates an Amazon EKS control plane.  The Amazon EKS control plane consists of control plane instances that run the Kubernetes software, such as etcd and the API server. The control plane runs in an account managed by AWS, and the Kubernetes API is exposed via the Amazon EKS API server endpoint. Each Amazon EKS cluster control plane is single-tenant and unique and runs on its own set of Amazon EC2 instances. The cluster control plane is provisioned across multiple Availability Zones and fronted by an Elastic Load Balancing Network Load Balancer. Amazon EKS also provisions elastic network interfaces in your VPC subnets to provide connectivity from the control plane instances to the worker nodes (for example, to support kubectl exec, logs, and proxy data flows). Amazon EKS worker nodes run in your AWS account and connect to your cluster's control plane via the Kubernetes API server endpoint and a certificate file that is created for your cluster. You can use the endpointPublicAccess and endpointPrivateAccess parameters to enable or disable public and private access to your cluster's Kubernetes API server endpoint. By default, public access is enabled, and private access is disabled. For more information, see Amazon EKS Cluster Endpoint Access Control in the  Amazon EKS User Guide .  You can use the logging parameter to enable or disable exporting the Kubernetes control plane logs for your cluster to CloudWatch Logs. By default, cluster control plane logs aren't exported to CloudWatch Logs. For more information, see Amazon EKS Cluster Control Plane Logs in the  Amazon EKS User Guide .  CloudWatch Logs ingestion, archive storage, and data scanning rates apply to exported control plane logs. For more information, see Amazon CloudWatch Pricing.  Cluster creation typically takes between 10 and 15 minutes. After you create an Amazon EKS cluster, you must configure your Kubernetes tooling to communicate with the API server and launch worker nodes into your cluster. For more information, see Managing Cluster Authentication and Launching Amazon EKS Worker Nodes in the Amazon EKS User Guide.
    public func createCluster(_ input: CreateClusterRequest) throws -> Future<CreateClusterResponse> {
        return try client.send(operation: "CreateCluster", path: "/clusters", httpMethod: "POST", input: input)
    }

    ///  Deletes the Amazon EKS cluster control plane.   If you have active services in your cluster that are associated with a load balancer, you must delete those services before deleting the cluster so that the load balancers are deleted properly. Otherwise, you can have orphaned resources in your VPC that prevent you from being able to delete the VPC. For more information, see Deleting a Cluster in the Amazon EKS User Guide. 
    public func deleteCluster(_ input: DeleteClusterRequest) throws -> Future<DeleteClusterResponse> {
        return try client.send(operation: "DeleteCluster", path: "/clusters/{name}", httpMethod: "DELETE", input: input)
    }

    ///  Returns descriptive information about an Amazon EKS cluster. The API server endpoint and certificate authority data returned by this operation are required for kubelet and kubectl to communicate with your Kubernetes API server. For more information, see Create a kubeconfig for Amazon EKS.  The API server endpoint and certificate authority data aren't available until the cluster reaches the ACTIVE state. 
    public func describeCluster(_ input: DescribeClusterRequest) throws -> Future<DescribeClusterResponse> {
        return try client.send(operation: "DescribeCluster", path: "/clusters/{name}", httpMethod: "GET", input: input)
    }

    ///  Returns descriptive information about an update against your Amazon EKS cluster. When the status of the update is Succeeded, the update is complete. If an update fails, the status is Failed, and an error detail explains the reason for the failure.
    public func describeUpdate(_ input: DescribeUpdateRequest) throws -> Future<DescribeUpdateResponse> {
        return try client.send(operation: "DescribeUpdate", path: "/clusters/{name}/updates/{updateId}", httpMethod: "GET", input: input)
    }

    ///  Lists the Amazon EKS clusters in your AWS account in the specified Region.
    public func listClusters(_ input: ListClustersRequest) throws -> Future<ListClustersResponse> {
        return try client.send(operation: "ListClusters", path: "/clusters", httpMethod: "GET", input: input)
    }

    ///  Lists the updates associated with an Amazon EKS cluster in your AWS account, in the specified Region.
    public func listUpdates(_ input: ListUpdatesRequest) throws -> Future<ListUpdatesResponse> {
        return try client.send(operation: "ListUpdates", path: "/clusters/{name}/updates", httpMethod: "GET", input: input)
    }

    ///  Updates an Amazon EKS cluster configuration. Your cluster continues to function during the update. The response output includes an update ID that you can use to track the status of your cluster update with the DescribeUpdate API operation. You can use this API operation to enable or disable exporting the Kubernetes control plane logs for your cluster to CloudWatch Logs. By default, cluster control plane logs aren't exported to CloudWatch Logs. For more information, see Amazon EKS Cluster Control Plane Logs in the  Amazon EKS User Guide .  CloudWatch Logs ingestion, archive storage, and data scanning rates apply to exported control plane logs. For more information, see Amazon CloudWatch Pricing.  You can also use this API operation to enable or disable public and private access to your cluster's Kubernetes API server endpoint. By default, public access is enabled, and private access is disabled. For more information, see Amazon EKS Cluster Endpoint Access Control in the  Amazon EKS User Guide .   At this time, you can not update the subnets or security group IDs for an existing cluster.  Cluster updates are asynchronous, and they should finish within a few minutes. During an update, the cluster status moves to UPDATING (this status transition is eventually consistent). When the update is complete (either Failed or Successful), the cluster status moves to Active.
    public func updateClusterConfig(_ input: UpdateClusterConfigRequest) throws -> Future<UpdateClusterConfigResponse> {
        return try client.send(operation: "UpdateClusterConfig", path: "/clusters/{name}/update-config", httpMethod: "POST", input: input)
    }

    ///  Updates an Amazon EKS cluster to the specified Kubernetes version. Your cluster continues to function during the update. The response output includes an update ID that you can use to track the status of your cluster update with the DescribeUpdate API operation. Cluster updates are asynchronous, and they should finish within a few minutes. During an update, the cluster status moves to UPDATING (this status transition is eventually consistent). When the update is complete (either Failed or Successful), the cluster status moves to Active.
    public func updateClusterVersion(_ input: UpdateClusterVersionRequest) throws -> Future<UpdateClusterVersionResponse> {
        return try client.send(operation: "UpdateClusterVersion", path: "/clusters/{name}/updates", httpMethod: "POST", input: input)
    }


}