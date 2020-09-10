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

import SotoCore

// MARK: Paginators

extension Glue {

    ///  Lists all classifier objects in the Data Catalog.
    public func getClassifiersPaginator(
        _ input: GetClassifiersRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetClassifiersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getClassifiers,
            tokenKey: \GetClassifiersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a list of connection definitions from the Data Catalog.
    public func getConnectionsPaginator(
        _ input: GetConnectionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetConnectionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getConnections,
            tokenKey: \GetConnectionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves metrics about specified crawlers.
    public func getCrawlerMetricsPaginator(
        _ input: GetCrawlerMetricsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetCrawlerMetricsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getCrawlerMetrics,
            tokenKey: \GetCrawlerMetricsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves metadata for all crawlers defined in the customer account.
    public func getCrawlersPaginator(
        _ input: GetCrawlersRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetCrawlersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getCrawlers,
            tokenKey: \GetCrawlersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves all databases defined in a given Data Catalog.
    public func getDatabasesPaginator(
        _ input: GetDatabasesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetDatabasesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getDatabases,
            tokenKey: \GetDatabasesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves all the development endpoints in this AWS account.  When you create a development endpoint in a virtual private cloud (VPC), AWS Glue returns only a private IP address and the public IP address field is not populated. When you create a non-VPC development endpoint, AWS Glue returns only a public IP address. 
    public func getDevEndpointsPaginator(
        _ input: GetDevEndpointsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetDevEndpointsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getDevEndpoints,
            tokenKey: \GetDevEndpointsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves metadata for all runs of a given job definition.
    public func getJobRunsPaginator(
        _ input: GetJobRunsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetJobRunsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getJobRuns,
            tokenKey: \GetJobRunsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves all current job definitions.
    public func getJobsPaginator(
        _ input: GetJobsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getJobs,
            tokenKey: \GetJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a list of runs for a machine learning transform. Machine learning task runs are asynchronous tasks that AWS Glue runs on your behalf as part of various machine learning workflows. You can get a sortable, filterable list of machine learning task runs by calling GetMLTaskRuns with their parent transform's TransformID and other optional parameters as documented in this section. This operation returns a list of historic runs and must be paginated.
    public func getMLTaskRunsPaginator(
        _ input: GetMLTaskRunsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetMLTaskRunsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getMLTaskRuns,
            tokenKey: \GetMLTaskRunsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a sortable, filterable list of existing AWS Glue machine learning transforms. Machine learning transforms are a special type of transform that use machine learning to learn the details of the transformation to be performed by learning from examples provided by humans. These transformations are then saved by AWS Glue, and you can retrieve their metadata by calling GetMLTransforms.
    public func getMLTransformsPaginator(
        _ input: GetMLTransformsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetMLTransformsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getMLTransforms,
            tokenKey: \GetMLTransformsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves information about the partitions in a table.
    public func getPartitionsPaginator(
        _ input: GetPartitionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetPartitionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getPartitions,
            tokenKey: \GetPartitionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a list of all security configurations.
    public func getSecurityConfigurationsPaginator(
        _ input: GetSecurityConfigurationsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetSecurityConfigurationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getSecurityConfigurations,
            tokenKey: \GetSecurityConfigurationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a list of strings that identify available versions of a specified table.
    public func getTableVersionsPaginator(
        _ input: GetTableVersionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetTableVersionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getTableVersions,
            tokenKey: \GetTableVersionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves the definitions of some or all of the tables in a given Database.
    public func getTablesPaginator(
        _ input: GetTablesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetTablesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getTables,
            tokenKey: \GetTablesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets all the triggers associated with a job.
    public func getTriggersPaginator(
        _ input: GetTriggersRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetTriggersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getTriggers,
            tokenKey: \GetTriggersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves multiple function definitions from the Data Catalog.
    public func getUserDefinedFunctionsPaginator(
        _ input: GetUserDefinedFunctionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetUserDefinedFunctionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getUserDefinedFunctions,
            tokenKey: \GetUserDefinedFunctionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves metadata for all runs of a given workflow.
    public func getWorkflowRunsPaginator(
        _ input: GetWorkflowRunsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetWorkflowRunsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getWorkflowRuns,
            tokenKey: \GetWorkflowRunsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves the names of all crawler resources in this AWS account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names. This operation takes the optional Tags field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.
    public func listCrawlersPaginator(
        _ input: ListCrawlersRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListCrawlersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCrawlers,
            tokenKey: \ListCrawlersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves the names of all DevEndpoint resources in this AWS account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names. This operation takes the optional Tags field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.
    public func listDevEndpointsPaginator(
        _ input: ListDevEndpointsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDevEndpointsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDevEndpoints,
            tokenKey: \ListDevEndpointsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves the names of all job resources in this AWS account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names. This operation takes the optional Tags field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.
    public func listJobsPaginator(
        _ input: ListJobsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listJobs,
            tokenKey: \ListJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Retrieves a sortable, filterable list of existing AWS Glue machine learning transforms in this AWS account, or the resources with the specified tag. This operation takes the optional Tags field, which you can use as a filter of the responses so that tagged resources can be retrieved as a group. If you choose to use tag filtering, only resources with the tags are retrieved. 
    public func listMLTransformsPaginator(
        _ input: ListMLTransformsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListMLTransformsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listMLTransforms,
            tokenKey: \ListMLTransformsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves the names of all trigger resources in this AWS account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names. This operation takes the optional Tags field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.
    public func listTriggersPaginator(
        _ input: ListTriggersRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListTriggersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTriggers,
            tokenKey: \ListTriggersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists names of workflows created in the account.
    public func listWorkflowsPaginator(
        _ input: ListWorkflowsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListWorkflowsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listWorkflows,
            tokenKey: \ListWorkflowsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Searches a set of tables based on properties in the table metadata as well as on the parent database. You can search against text or filter conditions.  You can only get tables that you have access to based on the security policies defined in Lake Formation. You need at least a read-only access to the table for it to be returned. If you do not have access to all the columns in the table, these columns will not be searched against when returning the list of tables back to you. If you have access to the columns but not the data in the columns, those columns and the associated metadata for those columns will be included in the search. 
    public func searchTablesPaginator(
        _ input: SearchTablesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (SearchTablesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: searchTables,
            tokenKey: \SearchTablesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

}

extension Glue.GetClassifiersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glue.GetClassifiersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Glue.GetConnectionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glue.GetConnectionsRequest {
        return .init(
            catalogId: self.catalogId,
            filter: self.filter,
            hidePassword: self.hidePassword,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Glue.GetCrawlerMetricsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glue.GetCrawlerMetricsRequest {
        return .init(
            crawlerNameList: self.crawlerNameList,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Glue.GetCrawlersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glue.GetCrawlersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Glue.GetDatabasesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glue.GetDatabasesRequest {
        return .init(
            catalogId: self.catalogId,
            maxResults: self.maxResults,
            nextToken: token,
            resourceShareType: self.resourceShareType
        )

    }
}

extension Glue.GetDevEndpointsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glue.GetDevEndpointsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Glue.GetJobRunsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glue.GetJobRunsRequest {
        return .init(
            jobName: self.jobName,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Glue.GetJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glue.GetJobsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Glue.GetMLTaskRunsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glue.GetMLTaskRunsRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token,
            sort: self.sort,
            transformId: self.transformId
        )

    }
}

extension Glue.GetMLTransformsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glue.GetMLTransformsRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token,
            sort: self.sort
        )

    }
}

extension Glue.GetPartitionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glue.GetPartitionsRequest {
        return .init(
            catalogId: self.catalogId,
            databaseName: self.databaseName,
            expression: self.expression,
            maxResults: self.maxResults,
            nextToken: token,
            segment: self.segment,
            tableName: self.tableName
        )

    }
}

extension Glue.GetSecurityConfigurationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glue.GetSecurityConfigurationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Glue.GetTableVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glue.GetTableVersionsRequest {
        return .init(
            catalogId: self.catalogId,
            databaseName: self.databaseName,
            maxResults: self.maxResults,
            nextToken: token,
            tableName: self.tableName
        )

    }
}

extension Glue.GetTablesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glue.GetTablesRequest {
        return .init(
            catalogId: self.catalogId,
            databaseName: self.databaseName,
            expression: self.expression,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Glue.GetTriggersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glue.GetTriggersRequest {
        return .init(
            dependentJobName: self.dependentJobName,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Glue.GetUserDefinedFunctionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glue.GetUserDefinedFunctionsRequest {
        return .init(
            catalogId: self.catalogId,
            databaseName: self.databaseName,
            maxResults: self.maxResults,
            nextToken: token,
            pattern: self.pattern
        )

    }
}

extension Glue.GetWorkflowRunsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glue.GetWorkflowRunsRequest {
        return .init(
            includeGraph: self.includeGraph,
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token
        )

    }
}

extension Glue.ListCrawlersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glue.ListCrawlersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            tags: self.tags
        )

    }
}

extension Glue.ListDevEndpointsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glue.ListDevEndpointsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            tags: self.tags
        )

    }
}

extension Glue.ListJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glue.ListJobsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            tags: self.tags
        )

    }
}

extension Glue.ListMLTransformsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glue.ListMLTransformsRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token,
            sort: self.sort,
            tags: self.tags
        )

    }
}

extension Glue.ListTriggersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glue.ListTriggersRequest {
        return .init(
            dependentJobName: self.dependentJobName,
            maxResults: self.maxResults,
            nextToken: token,
            tags: self.tags
        )

    }
}

extension Glue.ListWorkflowsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glue.ListWorkflowsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Glue.SearchTablesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Glue.SearchTablesRequest {
        return .init(
            catalogId: self.catalogId,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            resourceShareType: self.resourceShareType,
            searchText: self.searchText,
            sortCriteria: self.sortCriteria
        )

    }
}

