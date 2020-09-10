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

extension CodeStarNotifications {

    ///  Returns information about the event types available for configuring notifications.
    public func listEventTypesPaginator(
        _ input: ListEventTypesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListEventTypesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listEventTypes,
            tokenKey: \ListEventTypesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of the notification rules for an AWS account.
    public func listNotificationRulesPaginator(
        _ input: ListNotificationRulesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListNotificationRulesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listNotificationRules,
            tokenKey: \ListNotificationRulesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of the notification rule targets for an AWS account.
    public func listTargetsPaginator(
        _ input: ListTargetsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListTargetsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTargets,
            tokenKey: \ListTargetsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

}

extension CodeStarNotifications.ListEventTypesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeStarNotifications.ListEventTypesRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension CodeStarNotifications.ListNotificationRulesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeStarNotifications.ListNotificationRulesRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension CodeStarNotifications.ListTargetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeStarNotifications.ListTargetsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

