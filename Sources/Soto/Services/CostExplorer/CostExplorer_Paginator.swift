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

extension CostExplorer {

    ///  Retrieves the Savings Plans covered for your account. This enables you to see how much of your cost is covered by a Savings Plan. An organization’s master account can see the coverage of the associated member accounts. This supports dimensions, Cost Categories, and nested expressions. For any time period, you can filter data for Savings Plans usage with the following dimensions:    LINKED_ACCOUNT     REGION     SERVICE     INSTANCE_FAMILY    To determine valid values for a dimension, use the GetDimensionValues operation.
    public func getSavingsPlansCoveragePaginator(
        _ input: GetSavingsPlansCoverageRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetSavingsPlansCoverageResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getSavingsPlansCoverage,
            tokenKey: \GetSavingsPlansCoverageResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves attribute data along with aggregate utilization and savings data for a given time period. This doesn't support granular or grouped data (daily/monthly) in response. You can't retrieve data by dates in a single response similar to GetSavingsPlanUtilization, but you have the option to make multiple calls to GetSavingsPlanUtilizationDetails by providing individual dates. You can use GetDimensionValues in SAVINGS_PLANS to determine the possible dimension values.   GetSavingsPlanUtilizationDetails internally groups data by SavingsPlansArn. 
    public func getSavingsPlansUtilizationDetailsPaginator(
        _ input: GetSavingsPlansUtilizationDetailsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetSavingsPlansUtilizationDetailsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getSavingsPlansUtilizationDetails,
            tokenKey: \GetSavingsPlansUtilizationDetailsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns the name, ARN, NumberOfRules and effective dates of all Cost Categories defined in the account. You have the option to use EffectiveOn to return a list of Cost Categories that were active on a specific date. If there is no EffectiveOn specified, you’ll see Cost Categories that are effective on the current date. If Cost Category is still effective, EffectiveEnd is omitted in the response. ListCostCategoryDefinitions supports pagination. The request can have a MaxResults range up to 100.
    public func listCostCategoryDefinitionsPaginator(
        _ input: ListCostCategoryDefinitionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListCostCategoryDefinitionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCostCategoryDefinitions,
            tokenKey: \ListCostCategoryDefinitionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

}

extension CostExplorer.GetSavingsPlansCoverageRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CostExplorer.GetSavingsPlansCoverageRequest {
        return .init(
            filter: self.filter,
            granularity: self.granularity,
            groupBy: self.groupBy,
            maxResults: self.maxResults,
            metrics: self.metrics,
            nextToken: token,
            timePeriod: self.timePeriod
        )

    }
}

extension CostExplorer.GetSavingsPlansUtilizationDetailsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CostExplorer.GetSavingsPlansUtilizationDetailsRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token,
            timePeriod: self.timePeriod
        )

    }
}

extension CostExplorer.ListCostCategoryDefinitionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CostExplorer.ListCostCategoryDefinitionsRequest {
        return .init(
            effectiveOn: self.effectiveOn,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

