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

extension Schemas {

    ///  List the discoverers.
    public func listDiscoverersPaginator(
        _ input: ListDiscoverersRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDiscoverersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDiscoverers,
            tokenKey: \ListDiscoverersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List the registries.
    public func listRegistriesPaginator(
        _ input: ListRegistriesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListRegistriesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRegistries,
            tokenKey: \ListRegistriesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Provides a list of the schema versions and related information.
    public func listSchemaVersionsPaginator(
        _ input: ListSchemaVersionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListSchemaVersionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSchemaVersions,
            tokenKey: \ListSchemaVersionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List the schemas.
    public func listSchemasPaginator(
        _ input: ListSchemasRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListSchemasResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSchemas,
            tokenKey: \ListSchemasResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Search the schemas
    public func searchSchemasPaginator(
        _ input: SearchSchemasRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (SearchSchemasResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: searchSchemas,
            tokenKey: \SearchSchemasResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

}

extension Schemas.ListDiscoverersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Schemas.ListDiscoverersRequest {
        return .init(
            discovererIdPrefix: self.discovererIdPrefix,
            limit: self.limit,
            nextToken: token,
            sourceArnPrefix: self.sourceArnPrefix
        )

    }
}

extension Schemas.ListRegistriesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Schemas.ListRegistriesRequest {
        return .init(
            limit: self.limit,
            nextToken: token,
            registryNamePrefix: self.registryNamePrefix,
            scope: self.scope
        )

    }
}

extension Schemas.ListSchemaVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Schemas.ListSchemaVersionsRequest {
        return .init(
            limit: self.limit,
            nextToken: token,
            registryName: self.registryName,
            schemaName: self.schemaName
        )

    }
}

extension Schemas.ListSchemasRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Schemas.ListSchemasRequest {
        return .init(
            limit: self.limit,
            nextToken: token,
            registryName: self.registryName,
            schemaNamePrefix: self.schemaNamePrefix
        )

    }
}

extension Schemas.SearchSchemasRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Schemas.SearchSchemasRequest {
        return .init(
            keywords: self.keywords,
            limit: self.limit,
            nextToken: token,
            registryName: self.registryName
        )

    }
}

