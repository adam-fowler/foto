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

extension CodeArtifact {

    ///   Returns a list of  DomainSummary  objects for all domains owned by the AWS account that makes this call. Each returned DomainSummary object contains information about a domain. 
    public func listDomainsPaginator(
        _ input: ListDomainsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDomainsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDomains,
            tokenKey: \ListDomainsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of  AssetSummary  objects for assets in a package version. 
    public func listPackageVersionAssetsPaginator(
        _ input: ListPackageVersionAssetsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListPackageVersionAssetsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPackageVersionAssets,
            tokenKey: \ListPackageVersionAssetsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of  PackageVersionSummary  objects for package versions in a repository that match the request parameters. 
    public func listPackageVersionsPaginator(
        _ input: ListPackageVersionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListPackageVersionsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPackageVersions,
            tokenKey: \ListPackageVersionsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of  PackageSummary  objects for packages in a repository that match the request parameters. 
    public func listPackagesPaginator(
        _ input: ListPackagesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListPackagesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPackages,
            tokenKey: \ListPackagesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of  RepositorySummary  objects. Each RepositorySummary contains information about a repository in the specified AWS account and that matches the input parameters. 
    public func listRepositoriesPaginator(
        _ input: ListRepositoriesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListRepositoriesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRepositories,
            tokenKey: \ListRepositoriesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of  RepositorySummary  objects. Each RepositorySummary contains information about a repository in the specified domain and that matches the input parameters. 
    public func listRepositoriesInDomainPaginator(
        _ input: ListRepositoriesInDomainRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListRepositoriesInDomainResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRepositoriesInDomain,
            tokenKey: \ListRepositoriesInDomainResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

}

extension CodeArtifact.ListDomainsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeArtifact.ListDomainsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension CodeArtifact.ListPackageVersionAssetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeArtifact.ListPackageVersionAssetsRequest {
        return .init(
            domain: self.domain,
            domainOwner: self.domainOwner,
            format: self.format,
            maxResults: self.maxResults,
            namespace: self.namespace,
            nextToken: token,
            package: self.package,
            packageVersion: self.packageVersion,
            repository: self.repository
        )

    }
}

extension CodeArtifact.ListPackageVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeArtifact.ListPackageVersionsRequest {
        return .init(
            domain: self.domain,
            domainOwner: self.domainOwner,
            format: self.format,
            maxResults: self.maxResults,
            namespace: self.namespace,
            nextToken: token,
            package: self.package,
            repository: self.repository,
            sortBy: self.sortBy,
            status: self.status
        )

    }
}

extension CodeArtifact.ListPackagesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeArtifact.ListPackagesRequest {
        return .init(
            domain: self.domain,
            domainOwner: self.domainOwner,
            format: self.format,
            maxResults: self.maxResults,
            namespace: self.namespace,
            nextToken: token,
            packagePrefix: self.packagePrefix,
            repository: self.repository
        )

    }
}

extension CodeArtifact.ListRepositoriesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeArtifact.ListRepositoriesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            repositoryPrefix: self.repositoryPrefix
        )

    }
}

extension CodeArtifact.ListRepositoriesInDomainRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeArtifact.ListRepositoriesInDomainRequest {
        return .init(
            administratorAccount: self.administratorAccount,
            domain: self.domain,
            domainOwner: self.domainOwner,
            maxResults: self.maxResults,
            nextToken: token,
            repositoryPrefix: self.repositoryPrefix
        )

    }
}

