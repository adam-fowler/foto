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

extension ResourceGroupsTaggingAPI {

    ///  Returns a table that shows counts of resources that are noncompliant with their tag policies. For more information on tag policies, see Tag Policies in the AWS Organizations User Guide.  You can call this operation only from the organization's master account and from the us-east-1 Region.
    public func getComplianceSummaryPaginator(
        _ input: GetComplianceSummaryInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetComplianceSummaryOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getComplianceSummary,
            tokenKey: \GetComplianceSummaryOutput.paginationToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns all the tagged or previously tagged resources that are located in the specified Region for the AWS account. Depending on what information you want returned, you can also specify the following:    Filters that specify what tags and resource types you want returned. The response includes all tags that are associated with the requested resources.   Information about compliance with the account's effective tag policy. For more information on tag policies, see Tag Policies in the AWS Organizations User Guide.     You can check the PaginationToken response parameter to determine if a query is complete. Queries occasionally return fewer results on a page than allowed. The PaginationToken response parameter value is null only when there are no more results to display.  
    public func getResourcesPaginator(
        _ input: GetResourcesInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetResourcesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getResources,
            tokenKey: \GetResourcesOutput.paginationToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns all tag keys in the specified Region for the AWS account.
    public func getTagKeysPaginator(
        _ input: GetTagKeysInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetTagKeysOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getTagKeys,
            tokenKey: \GetTagKeysOutput.paginationToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns all tag values for the specified key in the specified Region for the AWS account.
    public func getTagValuesPaginator(
        _ input: GetTagValuesInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetTagValuesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getTagValues,
            tokenKey: \GetTagValuesOutput.paginationToken,
            on: eventLoop,
            onPage: onPage
        )
    }

}

extension ResourceGroupsTaggingAPI.GetComplianceSummaryInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ResourceGroupsTaggingAPI.GetComplianceSummaryInput {
        return .init(
            groupBy: self.groupBy,
            maxResults: self.maxResults,
            paginationToken: token,
            regionFilters: self.regionFilters,
            resourceTypeFilters: self.resourceTypeFilters,
            tagKeyFilters: self.tagKeyFilters,
            targetIdFilters: self.targetIdFilters
        )

    }
}

extension ResourceGroupsTaggingAPI.GetResourcesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ResourceGroupsTaggingAPI.GetResourcesInput {
        return .init(
            excludeCompliantResources: self.excludeCompliantResources,
            includeComplianceDetails: self.includeComplianceDetails,
            paginationToken: token,
            resourcesPerPage: self.resourcesPerPage,
            resourceTypeFilters: self.resourceTypeFilters,
            tagFilters: self.tagFilters,
            tagsPerPage: self.tagsPerPage
        )

    }
}

extension ResourceGroupsTaggingAPI.GetTagKeysInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ResourceGroupsTaggingAPI.GetTagKeysInput {
        return .init(
            paginationToken: token
        )

    }
}

extension ResourceGroupsTaggingAPI.GetTagValuesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ResourceGroupsTaggingAPI.GetTagValuesInput {
        return .init(
            key: self.key,
            paginationToken: token
        )

    }
}

