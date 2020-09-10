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

extension WorkLink {

    ///  Retrieves a list of devices registered with the specified fleet.
    public func listDevicesPaginator(
        _ input: ListDevicesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDevicesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDevices,
            tokenKey: \ListDevicesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a list of domains associated to a specified fleet.
    public func listDomainsPaginator(
        _ input: ListDomainsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDomainsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDomains,
            tokenKey: \ListDomainsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a list of fleets for the current account and Region.
    public func listFleetsPaginator(
        _ input: ListFleetsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListFleetsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listFleets,
            tokenKey: \ListFleetsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a list of website authorization providers associated with a specified fleet.
    public func listWebsiteAuthorizationProvidersPaginator(
        _ input: ListWebsiteAuthorizationProvidersRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListWebsiteAuthorizationProvidersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listWebsiteAuthorizationProviders,
            tokenKey: \ListWebsiteAuthorizationProvidersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a list of certificate authorities added for the current account and Region.
    public func listWebsiteCertificateAuthoritiesPaginator(
        _ input: ListWebsiteCertificateAuthoritiesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListWebsiteCertificateAuthoritiesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listWebsiteCertificateAuthorities,
            tokenKey: \ListWebsiteCertificateAuthoritiesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

}

extension WorkLink.ListDevicesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WorkLink.ListDevicesRequest {
        return .init(
            fleetArn: self.fleetArn,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension WorkLink.ListDomainsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WorkLink.ListDomainsRequest {
        return .init(
            fleetArn: self.fleetArn,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension WorkLink.ListFleetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WorkLink.ListFleetsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension WorkLink.ListWebsiteAuthorizationProvidersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WorkLink.ListWebsiteAuthorizationProvidersRequest {
        return .init(
            fleetArn: self.fleetArn,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension WorkLink.ListWebsiteCertificateAuthoritiesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WorkLink.ListWebsiteCertificateAuthoritiesRequest {
        return .init(
            fleetArn: self.fleetArn,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

