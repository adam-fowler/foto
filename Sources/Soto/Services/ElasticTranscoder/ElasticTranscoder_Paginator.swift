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

extension ElasticTranscoder {

    ///  The ListJobsByPipeline operation gets a list of the jobs currently in a pipeline. Elastic Transcoder returns all of the jobs currently in the specified pipeline. The response body contains one element for each job that satisfies the search criteria.
    public func listJobsByPipelinePaginator(
        _ input: ListJobsByPipelineRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListJobsByPipelineResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listJobsByPipeline,
            tokenKey: \ListJobsByPipelineResponse.nextPageToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  The ListJobsByStatus operation gets a list of jobs that have a specified status. The response body contains one element for each job that satisfies the search criteria.
    public func listJobsByStatusPaginator(
        _ input: ListJobsByStatusRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListJobsByStatusResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listJobsByStatus,
            tokenKey: \ListJobsByStatusResponse.nextPageToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  The ListPipelines operation gets a list of the pipelines associated with the current AWS account.
    public func listPipelinesPaginator(
        _ input: ListPipelinesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListPipelinesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPipelines,
            tokenKey: \ListPipelinesResponse.nextPageToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  The ListPresets operation gets a list of the default presets included with Elastic Transcoder and the presets that you've added in an AWS region.
    public func listPresetsPaginator(
        _ input: ListPresetsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListPresetsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPresets,
            tokenKey: \ListPresetsResponse.nextPageToken,
            on: eventLoop,
            onPage: onPage
        )
    }

}

extension ElasticTranscoder.ListJobsByPipelineRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticTranscoder.ListJobsByPipelineRequest {
        return .init(
            ascending: self.ascending,
            pageToken: token,
            pipelineId: self.pipelineId
        )

    }
}

extension ElasticTranscoder.ListJobsByStatusRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticTranscoder.ListJobsByStatusRequest {
        return .init(
            ascending: self.ascending,
            pageToken: token,
            status: self.status
        )

    }
}

extension ElasticTranscoder.ListPipelinesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticTranscoder.ListPipelinesRequest {
        return .init(
            ascending: self.ascending,
            pageToken: token
        )

    }
}

extension ElasticTranscoder.ListPresetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticTranscoder.ListPresetsRequest {
        return .init(
            ascending: self.ascending,
            pageToken: token
        )

    }
}
