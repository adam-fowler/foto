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

extension EBS {

    ///  Returns the block indexes and block tokens for blocks that are different between two Amazon Elastic Block Store snapshots of the same volume/snapshot lineage.
    public func listChangedBlocksPaginator(
        _ input: ListChangedBlocksRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListChangedBlocksResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listChangedBlocks,
            tokenKey: \ListChangedBlocksResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns the block indexes and block tokens for blocks in an Amazon Elastic Block Store snapshot.
    public func listSnapshotBlocksPaginator(
        _ input: ListSnapshotBlocksRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListSnapshotBlocksResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSnapshotBlocks,
            tokenKey: \ListSnapshotBlocksResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

}

extension EBS.ListChangedBlocksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EBS.ListChangedBlocksRequest {
        return .init(
            firstSnapshotId: self.firstSnapshotId,
            maxResults: self.maxResults,
            nextToken: token,
            secondSnapshotId: self.secondSnapshotId,
            startingBlockIndex: self.startingBlockIndex
        )

    }
}

extension EBS.ListSnapshotBlocksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EBS.ListSnapshotBlocksRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            snapshotId: self.snapshotId,
            startingBlockIndex: self.startingBlockIndex
        )

    }
}

