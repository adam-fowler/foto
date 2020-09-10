//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import SotoCore

/*
Client object for interacting with AWS IoTSiteWise service.

Welcome to the AWS IoT SiteWise API Reference. AWS IoT SiteWise is an AWS service that connects Industrial Internet of Things (IIoT) devices to the power of the AWS Cloud. For more information, see the AWS IoT SiteWise User Guide. For information about AWS IoT SiteWise quotas, see Quotas in the AWS IoT SiteWise User Guide.
*/
public struct IoTSiteWise: AWSService {

    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the IoTSiteWise client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "iotsitewise",
            serviceProtocol: .restjson,
            apiVersion: "2019-12-02",
            endpoint: endpoint,
            possibleErrorTypes: [IoTSiteWiseErrorType.self],
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }
    
    // MARK: API Calls

    ///  Associates a child asset with the given parent asset through a hierarchy defined in the parent asset's model. For more information, see Associating Assets in the AWS IoT SiteWise User Guide.
    @discardableResult public func associateAssets(_ input: AssociateAssetsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "AssociateAssets", path: "/assets/{assetId}/associate", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Associates a group (batch) of assets with an AWS IoT SiteWise Monitor project.
    public func batchAssociateProjectAssets(_ input: BatchAssociateProjectAssetsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchAssociateProjectAssetsResponse> {
        return self.client.execute(operation: "BatchAssociateProjectAssets", path: "/projects/{projectId}/assets/associate", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Disassociates a group (batch) of assets from an AWS IoT SiteWise Monitor project.
    public func batchDisassociateProjectAssets(_ input: BatchDisassociateProjectAssetsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchDisassociateProjectAssetsResponse> {
        return self.client.execute(operation: "BatchDisassociateProjectAssets", path: "/projects/{projectId}/assets/disassociate", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Sends a list of asset property values to AWS IoT SiteWise. Each value is a timestamp-quality-value (TQV) data point. For more information, see Ingesting Data Using the API in the AWS IoT SiteWise User Guide. To identify an asset property, you must specify one of the following:   The assetId and propertyId of an asset property.   A propertyAlias, which is a data stream alias (for example, /company/windfarm/3/turbine/7/temperature). To define an asset property's alias, see UpdateAssetProperty.    With respect to Unix epoch time, AWS IoT SiteWise accepts only TQVs that have a timestamp of no more than 15 minutes in the past and no more than 5 minutes in the future. AWS IoT SiteWise rejects timestamps outside of the inclusive range of [-15, +5] minutes and returns a TimestampOutOfRangeException error. For each asset property, AWS IoT SiteWise overwrites TQVs with duplicate timestamps unless the newer TQV has a different quality. For example, if you store a TQV {T1, GOOD, V1}, then storing {T1, GOOD, V2} replaces the existing TQV. 
    public func batchPutAssetPropertyValue(_ input: BatchPutAssetPropertyValueRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchPutAssetPropertyValueResponse> {
        return self.client.execute(operation: "BatchPutAssetPropertyValue", path: "/properties", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates an access policy that grants the specified AWS Single Sign-On user or group access to the specified AWS IoT SiteWise Monitor portal or project resource.
    public func createAccessPolicy(_ input: CreateAccessPolicyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateAccessPolicyResponse> {
        return self.client.execute(operation: "CreateAccessPolicy", path: "/access-policies", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates an asset from an existing asset model. For more information, see Creating Assets in the AWS IoT SiteWise User Guide.
    public func createAsset(_ input: CreateAssetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateAssetResponse> {
        return self.client.execute(operation: "CreateAsset", path: "/assets", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates an asset model from specified property and hierarchy definitions. You create assets from asset models. With asset models, you can easily create assets of the same type that have standardized definitions. Each asset created from a model inherits the asset model's property and hierarchy definitions. For more information, see Defining Asset Models in the AWS IoT SiteWise User Guide.
    public func createAssetModel(_ input: CreateAssetModelRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateAssetModelResponse> {
        return self.client.execute(operation: "CreateAssetModel", path: "/asset-models", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a dashboard in an AWS IoT SiteWise Monitor project.
    public func createDashboard(_ input: CreateDashboardRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateDashboardResponse> {
        return self.client.execute(operation: "CreateDashboard", path: "/dashboards", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a gateway, which is a virtual or edge device that delivers industrial data streams from local servers to AWS IoT SiteWise. For more information, see Ingesting data using a gateway in the AWS IoT SiteWise User Guide.
    public func createGateway(_ input: CreateGatewayRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateGatewayResponse> {
        return self.client.execute(operation: "CreateGateway", path: "/20200301/gateways", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a portal, which can contain projects and dashboards. Before you can create a portal, you must configure AWS Single Sign-On in the current Region. AWS IoT SiteWise Monitor uses AWS SSO to manage user permissions. For more information, see Enabling AWS SSO in the AWS IoT SiteWise User Guide.  Before you can sign in to a new portal, you must add at least one AWS SSO user or group to that portal. For more information, see Adding or Removing Portal Administrators in the AWS IoT SiteWise User Guide. 
    public func createPortal(_ input: CreatePortalRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreatePortalResponse> {
        return self.client.execute(operation: "CreatePortal", path: "/portals", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a project in the specified portal.
    public func createProject(_ input: CreateProjectRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateProjectResponse> {
        return self.client.execute(operation: "CreateProject", path: "/projects", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an access policy that grants the specified AWS Single Sign-On identity access to the specified AWS IoT SiteWise Monitor resource. You can use this operation to revoke access to an AWS IoT SiteWise Monitor resource.
    public func deleteAccessPolicy(_ input: DeleteAccessPolicyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteAccessPolicyResponse> {
        return self.client.execute(operation: "DeleteAccessPolicy", path: "/access-policies/{accessPolicyId}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an asset. This action can't be undone. For more information, see Deleting Assets and Models in the AWS IoT SiteWise User Guide.   You can't delete an asset that's associated to another asset. For more information, see DisassociateAssets. 
    public func deleteAsset(_ input: DeleteAssetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteAssetResponse> {
        return self.client.execute(operation: "DeleteAsset", path: "/assets/{assetId}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an asset model. This action can't be undone. You must delete all assets created from an asset model before you can delete the model. Also, you can't delete an asset model if a parent asset model exists that contains a property formula expression that depends on the asset model that you want to delete. For more information, see Deleting Assets and Models in the AWS IoT SiteWise User Guide.
    public func deleteAssetModel(_ input: DeleteAssetModelRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteAssetModelResponse> {
        return self.client.execute(operation: "DeleteAssetModel", path: "/asset-models/{assetModelId}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a dashboard from AWS IoT SiteWise Monitor.
    public func deleteDashboard(_ input: DeleteDashboardRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteDashboardResponse> {
        return self.client.execute(operation: "DeleteDashboard", path: "/dashboards/{dashboardId}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a gateway from AWS IoT SiteWise. When you delete a gateway, some of the gateway's files remain in your gateway's file system. For more information, see Data retention in the AWS IoT SiteWise User Guide.
    @discardableResult public func deleteGateway(_ input: DeleteGatewayRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteGateway", path: "/20200301/gateways/{gatewayId}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a portal from AWS IoT SiteWise Monitor.
    public func deletePortal(_ input: DeletePortalRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeletePortalResponse> {
        return self.client.execute(operation: "DeletePortal", path: "/portals/{portalId}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a project from AWS IoT SiteWise Monitor.
    public func deleteProject(_ input: DeleteProjectRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteProjectResponse> {
        return self.client.execute(operation: "DeleteProject", path: "/projects/{projectId}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes an access policy, which specifies an AWS SSO user or group's access to an AWS IoT SiteWise Monitor portal or project.
    public func describeAccessPolicy(_ input: DescribeAccessPolicyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeAccessPolicyResponse> {
        return self.client.execute(operation: "DescribeAccessPolicy", path: "/access-policies/{accessPolicyId}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves information about an asset.
    public func describeAsset(_ input: DescribeAssetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeAssetResponse> {
        return self.client.execute(operation: "DescribeAsset", path: "/assets/{assetId}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves information about an asset model.
    public func describeAssetModel(_ input: DescribeAssetModelRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeAssetModelResponse> {
        return self.client.execute(operation: "DescribeAssetModel", path: "/asset-models/{assetModelId}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves information about an asset's property.
    public func describeAssetProperty(_ input: DescribeAssetPropertyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeAssetPropertyResponse> {
        return self.client.execute(operation: "DescribeAssetProperty", path: "/assets/{assetId}/properties/{propertyId}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves information about a dashboard.
    public func describeDashboard(_ input: DescribeDashboardRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeDashboardResponse> {
        return self.client.execute(operation: "DescribeDashboard", path: "/dashboards/{dashboardId}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves information about a gateway.
    public func describeGateway(_ input: DescribeGatewayRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeGatewayResponse> {
        return self.client.execute(operation: "DescribeGateway", path: "/20200301/gateways/{gatewayId}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves information about a gateway capability configuration. Each gateway capability defines data sources for a gateway. A capability configuration can contain multiple data source configurations. If you define OPC-UA sources for a gateway in the AWS IoT SiteWise console, all of your OPC-UA sources are stored in one capability configuration. To list all capability configurations for a gateway, use DescribeGateway.
    public func describeGatewayCapabilityConfiguration(_ input: DescribeGatewayCapabilityConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeGatewayCapabilityConfigurationResponse> {
        return self.client.execute(operation: "DescribeGatewayCapabilityConfiguration", path: "/20200301/gateways/{gatewayId}/capability/{capabilityNamespace}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves the current AWS IoT SiteWise logging options.
    public func describeLoggingOptions(_ input: DescribeLoggingOptionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeLoggingOptionsResponse> {
        return self.client.execute(operation: "DescribeLoggingOptions", path: "/logging", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves information about a portal.
    public func describePortal(_ input: DescribePortalRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribePortalResponse> {
        return self.client.execute(operation: "DescribePortal", path: "/portals/{portalId}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves information about a project.
    public func describeProject(_ input: DescribeProjectRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeProjectResponse> {
        return self.client.execute(operation: "DescribeProject", path: "/projects/{projectId}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Disassociates a child asset from the given parent asset through a hierarchy defined in the parent asset's model.
    @discardableResult public func disassociateAssets(_ input: DisassociateAssetsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DisassociateAssets", path: "/assets/{assetId}/disassociate", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets aggregated values for an asset property. For more information, see Querying Aggregated Property Values in the AWS IoT SiteWise User Guide. To identify an asset property, you must specify one of the following:   The assetId and propertyId of an asset property.   A propertyAlias, which is a data stream alias (for example, /company/windfarm/3/turbine/7/temperature). To define an asset property's alias, see UpdateAssetProperty.  
    public func getAssetPropertyAggregates(_ input: GetAssetPropertyAggregatesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetAssetPropertyAggregatesResponse> {
        return self.client.execute(operation: "GetAssetPropertyAggregates", path: "/properties/aggregates", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets an asset property's current value. For more information, see Querying Current Property Values in the AWS IoT SiteWise User Guide. To identify an asset property, you must specify one of the following:   The assetId and propertyId of an asset property.   A propertyAlias, which is a data stream alias (for example, /company/windfarm/3/turbine/7/temperature). To define an asset property's alias, see UpdateAssetProperty.  
    public func getAssetPropertyValue(_ input: GetAssetPropertyValueRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetAssetPropertyValueResponse> {
        return self.client.execute(operation: "GetAssetPropertyValue", path: "/properties/latest", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the history of an asset property's values. For more information, see Querying Historical Property Values in the AWS IoT SiteWise User Guide. To identify an asset property, you must specify one of the following:   The assetId and propertyId of an asset property.   A propertyAlias, which is a data stream alias (for example, /company/windfarm/3/turbine/7/temperature). To define an asset property's alias, see UpdateAssetProperty.  
    public func getAssetPropertyValueHistory(_ input: GetAssetPropertyValueHistoryRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetAssetPropertyValueHistoryResponse> {
        return self.client.execute(operation: "GetAssetPropertyValueHistory", path: "/properties/history", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves a paginated list of access policies for an AWS SSO identity (a user or group) or an AWS IoT SiteWise Monitor resource (a portal or project).
    public func listAccessPolicies(_ input: ListAccessPoliciesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListAccessPoliciesResponse> {
        return self.client.execute(operation: "ListAccessPolicies", path: "/access-policies", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves a paginated list of summaries of all asset models.
    public func listAssetModels(_ input: ListAssetModelsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListAssetModelsResponse> {
        return self.client.execute(operation: "ListAssetModels", path: "/asset-models", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves a paginated list of asset summaries. You can use this operation to do the following:   List assets based on a specific asset model.   List top-level assets.   You can't use this operation to list all assets. To retrieve summaries for all of your assets, use ListAssetModels to get all of your asset model IDs. Then, use ListAssets to get all assets for each asset model.
    public func listAssets(_ input: ListAssetsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListAssetsResponse> {
        return self.client.execute(operation: "ListAssets", path: "/assets", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves a paginated list of the assets associated to a parent asset (assetId) by a given hierarchy (hierarchyId).
    public func listAssociatedAssets(_ input: ListAssociatedAssetsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListAssociatedAssetsResponse> {
        return self.client.execute(operation: "ListAssociatedAssets", path: "/assets/{assetId}/hierarchies", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves a paginated list of dashboards for an AWS IoT SiteWise Monitor project.
    public func listDashboards(_ input: ListDashboardsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListDashboardsResponse> {
        return self.client.execute(operation: "ListDashboards", path: "/dashboards", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves a paginated list of gateways.
    public func listGateways(_ input: ListGatewaysRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListGatewaysResponse> {
        return self.client.execute(operation: "ListGateways", path: "/20200301/gateways", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves a paginated list of AWS IoT SiteWise Monitor portals.
    public func listPortals(_ input: ListPortalsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListPortalsResponse> {
        return self.client.execute(operation: "ListPortals", path: "/portals", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves a paginated list of assets associated with an AWS IoT SiteWise Monitor project.
    public func listProjectAssets(_ input: ListProjectAssetsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListProjectAssetsResponse> {
        return self.client.execute(operation: "ListProjectAssets", path: "/projects/{projectId}/assets", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves a paginated list of projects for an AWS IoT SiteWise Monitor portal.
    public func listProjects(_ input: ListProjectsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListProjectsResponse> {
        return self.client.execute(operation: "ListProjects", path: "/projects", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves the list of tags for an AWS IoT SiteWise resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Sets logging options for AWS IoT SiteWise.
    public func putLoggingOptions(_ input: PutLoggingOptionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutLoggingOptionsResponse> {
        return self.client.execute(operation: "PutLoggingOptions", path: "/logging", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds tags to an AWS IoT SiteWise resource. If a tag already exists for the resource, this operation updates the tag's value.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes a tag from an AWS IoT SiteWise resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an existing access policy that specifies an AWS SSO user or group's access to an AWS IoT SiteWise Monitor portal or project resource.
    public func updateAccessPolicy(_ input: UpdateAccessPolicyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateAccessPolicyResponse> {
        return self.client.execute(operation: "UpdateAccessPolicy", path: "/access-policies/{accessPolicyId}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an asset's name. For more information, see Updating Assets and Models in the AWS IoT SiteWise User Guide.
    public func updateAsset(_ input: UpdateAssetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateAssetResponse> {
        return self.client.execute(operation: "UpdateAsset", path: "/assets/{assetId}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an asset model and all of the assets that were created from the model. Each asset created from the model inherits the updated asset model's property and hierarchy definitions. For more information, see Updating Assets and Models in the AWS IoT SiteWise User Guide.  This operation overwrites the existing model with the provided model. To avoid deleting your asset model's properties or hierarchies, you must include their IDs and definitions in the updated asset model payload. For more information, see DescribeAssetModel. If you remove a property from an asset model or update a property's formula expression, AWS IoT SiteWise deletes all previous data for that property. If you remove a hierarchy definition from an asset model, AWS IoT SiteWise disassociates every asset associated with that hierarchy. You can't change the type or data type of an existing property. 
    public func updateAssetModel(_ input: UpdateAssetModelRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateAssetModelResponse> {
        return self.client.execute(operation: "UpdateAssetModel", path: "/asset-models/{assetModelId}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an asset property's alias and notification state.  This operation overwrites the property's existing alias and notification state. To keep your existing property's alias or notification state, you must include the existing values in the UpdateAssetProperty request. For more information, see DescribeAssetProperty. 
    @discardableResult public func updateAssetProperty(_ input: UpdateAssetPropertyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UpdateAssetProperty", path: "/assets/{assetId}/properties/{propertyId}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an AWS IoT SiteWise Monitor dashboard.
    public func updateDashboard(_ input: UpdateDashboardRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateDashboardResponse> {
        return self.client.execute(operation: "UpdateDashboard", path: "/dashboards/{dashboardId}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a gateway's name.
    @discardableResult public func updateGateway(_ input: UpdateGatewayRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UpdateGateway", path: "/20200301/gateways/{gatewayId}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a gateway capability configuration or defines a new capability configuration. Each gateway capability defines data sources for a gateway. A capability configuration can contain multiple data source configurations. If you define OPC-UA sources for a gateway in the AWS IoT SiteWise console, all of your OPC-UA sources are stored in one capability configuration. To list all capability configurations for a gateway, use DescribeGateway.
    public func updateGatewayCapabilityConfiguration(_ input: UpdateGatewayCapabilityConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateGatewayCapabilityConfigurationResponse> {
        return self.client.execute(operation: "UpdateGatewayCapabilityConfiguration", path: "/20200301/gateways/{gatewayId}/capability", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an AWS IoT SiteWise Monitor portal.
    public func updatePortal(_ input: UpdatePortalRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdatePortalResponse> {
        return self.client.execute(operation: "UpdatePortal", path: "/portals/{portalId}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an AWS IoT SiteWise Monitor project.
    public func updateProject(_ input: UpdateProjectRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateProjectResponse> {
        return self.client.execute(operation: "UpdateProject", path: "/projects/{projectId}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }
}
