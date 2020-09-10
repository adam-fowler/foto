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

extension XRay {

    ///  Retrieves a list of traces specified by ID. Each trace is a collection of segment documents that originates from a single request. Use GetTraceSummaries to get a list of trace IDs.
    public func batchGetTracesPaginator(
        _ input: BatchGetTracesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (BatchGetTracesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: batchGetTraces,
            tokenKey: \BatchGetTracesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves all active group details.
    public func getGroupsPaginator(
        _ input: GetGroupsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetGroupsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getGroups,
            tokenKey: \GetGroupsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves all sampling rules.
    public func getSamplingRulesPaginator(
        _ input: GetSamplingRulesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetSamplingRulesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getSamplingRules,
            tokenKey: \GetSamplingRulesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves information about recent sampling results for all sampling rules.
    public func getSamplingStatisticSummariesPaginator(
        _ input: GetSamplingStatisticSummariesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetSamplingStatisticSummariesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getSamplingStatisticSummaries,
            tokenKey: \GetSamplingStatisticSummariesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a document that describes services that process incoming requests, and downstream services that they call as a result. Root services process incoming requests and make calls to downstream services. Root services are applications that use the AWS X-Ray SDK. Downstream services can be other applications, AWS resources, HTTP web APIs, or SQL databases.
    public func getServiceGraphPaginator(
        _ input: GetServiceGraphRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetServiceGraphResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getServiceGraph,
            tokenKey: \GetServiceGraphResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Get an aggregation of service statistics defined by a specific time range.
    public func getTimeSeriesServiceStatisticsPaginator(
        _ input: GetTimeSeriesServiceStatisticsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetTimeSeriesServiceStatisticsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getTimeSeriesServiceStatistics,
            tokenKey: \GetTimeSeriesServiceStatisticsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a service graph for one or more specific trace IDs.
    public func getTraceGraphPaginator(
        _ input: GetTraceGraphRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetTraceGraphResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getTraceGraph,
            tokenKey: \GetTraceGraphResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves IDs and annotations for traces available for a specified time frame using an optional filter. To get the full traces, pass the trace IDs to BatchGetTraces. A filter expression can target traced requests that hit specific service nodes or edges, have errors, or come from a known user. For example, the following filter expression targets traces that pass through api.example.com:  service("api.example.com")  This filter expression finds traces that have an annotation named account with the value 12345:  annotation.account = "12345"  For a full list of indexed fields and keywords that you can use in filter expressions, see Using Filter Expressions in the AWS X-Ray Developer Guide.
    public func getTraceSummariesPaginator(
        _ input: GetTraceSummariesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetTraceSummariesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getTraceSummaries,
            tokenKey: \GetTraceSummariesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

}

extension XRay.BatchGetTracesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> XRay.BatchGetTracesRequest {
        return .init(
            nextToken: token,
            traceIds: self.traceIds
        )

    }
}

extension XRay.GetGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> XRay.GetGroupsRequest {
        return .init(
            nextToken: token
        )

    }
}

extension XRay.GetSamplingRulesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> XRay.GetSamplingRulesRequest {
        return .init(
            nextToken: token
        )

    }
}

extension XRay.GetSamplingStatisticSummariesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> XRay.GetSamplingStatisticSummariesRequest {
        return .init(
            nextToken: token
        )

    }
}

extension XRay.GetServiceGraphRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> XRay.GetServiceGraphRequest {
        return .init(
            endTime: self.endTime,
            groupARN: self.groupARN,
            groupName: self.groupName,
            nextToken: token,
            startTime: self.startTime
        )

    }
}

extension XRay.GetTimeSeriesServiceStatisticsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> XRay.GetTimeSeriesServiceStatisticsRequest {
        return .init(
            endTime: self.endTime,
            entitySelectorExpression: self.entitySelectorExpression,
            groupARN: self.groupARN,
            groupName: self.groupName,
            nextToken: token,
            period: self.period,
            startTime: self.startTime
        )

    }
}

extension XRay.GetTraceGraphRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> XRay.GetTraceGraphRequest {
        return .init(
            nextToken: token,
            traceIds: self.traceIds
        )

    }
}

extension XRay.GetTraceSummariesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> XRay.GetTraceSummariesRequest {
        return .init(
            endTime: self.endTime,
            filterExpression: self.filterExpression,
            nextToken: token,
            sampling: self.sampling,
            samplingStrategy: self.samplingStrategy,
            startTime: self.startTime,
            timeRangeType: self.timeRangeType
        )

    }
}

