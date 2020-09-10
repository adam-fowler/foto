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

extension FraudDetector {

    ///  Gets all of the model versions for the specified model type or for the specified model type and model ID. You can also get details for a single, specified model version. 
    public func describeModelVersionsPaginator(
        _ input: DescribeModelVersionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeModelVersionsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeModelVersions,
            tokenKey: \DescribeModelVersionsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets all detectors or a single detector if a detectorId is specified. This is a paginated API. If you provide a null maxResults, this action retrieves a maximum of 10 records per page. If you provide a maxResults, the value must be between 5 and 10. To get the next page results, provide the pagination token from the GetDetectorsResponse as part of your request. A null pagination token fetches the records from the beginning. 
    public func getDetectorsPaginator(
        _ input: GetDetectorsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetDetectorsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getDetectors,
            tokenKey: \GetDetectorsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets all entity types or a specific entity type if a name is specified. This is a paginated API. If you provide a null maxResults, this action retrieves a maximum of 10 records per page. If you provide a maxResults, the value must be between 5 and 10. To get the next page results, provide the pagination token from the GetEntityTypesResponse as part of your request. A null pagination token fetches the records from the beginning. 
    public func getEntityTypesPaginator(
        _ input: GetEntityTypesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetEntityTypesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getEntityTypes,
            tokenKey: \GetEntityTypesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets all event types or a specific event type if name is provided. This is a paginated API. If you provide a null maxResults, this action retrieves a maximum of 10 records per page. If you provide a maxResults, the value must be between 5 and 10. To get the next page results, provide the pagination token from the GetEventTypesResponse as part of your request. A null pagination token fetches the records from the beginning. 
    public func getEventTypesPaginator(
        _ input: GetEventTypesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetEventTypesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getEventTypes,
            tokenKey: \GetEventTypesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets the details for one or more Amazon SageMaker models that have been imported into the service. This is a paginated API. If you provide a null maxResults, this actions retrieves a maximum of 10 records per page. If you provide a maxResults, the value must be between 5 and 10. To get the next page results, provide the pagination token from the GetExternalModelsResult as part of your request. A null pagination token fetches the records from the beginning. 
    public func getExternalModelsPaginator(
        _ input: GetExternalModelsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetExternalModelsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getExternalModels,
            tokenKey: \GetExternalModelsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets all labels or a specific label if name is provided. This is a paginated API. If you provide a null maxResults, this action retrieves a maximum of 50 records per page. If you provide a maxResults, the value must be between 10 and 50. To get the next page results, provide the pagination token from the GetGetLabelsResponse as part of your request. A null pagination token fetches the records from the beginning. 
    public func getLabelsPaginator(
        _ input: GetLabelsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetLabelsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getLabels,
            tokenKey: \GetLabelsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets one or more models. Gets all models for the AWS account if no model type and no model id provided. Gets all models for the AWS account and model type, if the model type is specified but model id is not provided. Gets a specific model if (model type, model id) tuple is specified.  This is a paginated API. If you provide a null maxResults, this action retrieves a maximum of 10 records per page. If you provide a maxResults, the value must be between 1 and 10. To get the next page results, provide the pagination token from the response as part of your request. A null pagination token fetches the records from the beginning.
    public func getModelsPaginator(
        _ input: GetModelsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetModelsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getModels,
            tokenKey: \GetModelsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets one or more outcomes. This is a paginated API. If you provide a null maxResults, this actions retrieves a maximum of 100 records per page. If you provide a maxResults, the value must be between 50 and 100. To get the next page results, provide the pagination token from the GetOutcomesResult as part of your request. A null pagination token fetches the records from the beginning. 
    public func getOutcomesPaginator(
        _ input: GetOutcomesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetOutcomesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getOutcomes,
            tokenKey: \GetOutcomesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Get all rules for a detector (paginated) if ruleId and ruleVersion are not specified. Gets all rules for the detector and the ruleId if present (paginated). Gets a specific rule if both the ruleId and the ruleVersion are specified. This is a paginated API. Providing null maxResults results in retrieving maximum of 100 records per page. If you provide maxResults the value must be between 50 and 100. To get the next page result, a provide a pagination token from GetRulesResult as part of your request. Null pagination token fetches the records from the beginning.
    public func getRulesPaginator(
        _ input: GetRulesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetRulesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getRules,
            tokenKey: \GetRulesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets all of the variables or the specific variable. This is a paginated API. Providing null maxSizePerPage results in retrieving maximum of 100 records per page. If you provide maxSizePerPage the value must be between 50 and 100. To get the next page result, a provide a pagination token from GetVariablesResult as part of your request. Null pagination token fetches the records from the beginning. 
    public func getVariablesPaginator(
        _ input: GetVariablesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetVariablesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getVariables,
            tokenKey: \GetVariablesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all tags associated with the resource. This is a paginated API. To get the next page results, provide the pagination token from the response as part of your request. A null pagination token fetches the records from the beginning. 
    public func listTagsForResourcePaginator(
        _ input: ListTagsForResourceRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListTagsForResourceResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTagsForResource,
            tokenKey: \ListTagsForResourceResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

}

extension FraudDetector.DescribeModelVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FraudDetector.DescribeModelVersionsRequest {
        return .init(
            maxResults: self.maxResults,
            modelId: self.modelId,
            modelType: self.modelType,
            modelVersionNumber: self.modelVersionNumber,
            nextToken: token
        )

    }
}

extension FraudDetector.GetDetectorsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FraudDetector.GetDetectorsRequest {
        return .init(
            detectorId: self.detectorId,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension FraudDetector.GetEntityTypesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FraudDetector.GetEntityTypesRequest {
        return .init(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token
        )

    }
}

extension FraudDetector.GetEventTypesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FraudDetector.GetEventTypesRequest {
        return .init(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token
        )

    }
}

extension FraudDetector.GetExternalModelsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FraudDetector.GetExternalModelsRequest {
        return .init(
            maxResults: self.maxResults,
            modelEndpoint: self.modelEndpoint,
            nextToken: token
        )

    }
}

extension FraudDetector.GetLabelsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FraudDetector.GetLabelsRequest {
        return .init(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token
        )

    }
}

extension FraudDetector.GetModelsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FraudDetector.GetModelsRequest {
        return .init(
            maxResults: self.maxResults,
            modelId: self.modelId,
            modelType: self.modelType,
            nextToken: token
        )

    }
}

extension FraudDetector.GetOutcomesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FraudDetector.GetOutcomesRequest {
        return .init(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token
        )

    }
}

extension FraudDetector.GetRulesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FraudDetector.GetRulesRequest {
        return .init(
            detectorId: self.detectorId,
            maxResults: self.maxResults,
            nextToken: token,
            ruleId: self.ruleId,
            ruleVersion: self.ruleVersion
        )

    }
}

extension FraudDetector.GetVariablesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FraudDetector.GetVariablesRequest {
        return .init(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token
        )

    }
}

extension FraudDetector.ListTagsForResourceRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FraudDetector.ListTagsForResourceRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceARN: self.resourceARN
        )

    }
}

