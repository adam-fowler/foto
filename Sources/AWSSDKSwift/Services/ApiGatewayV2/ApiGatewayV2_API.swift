// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Amazon API Gateway V2
*/
public struct ApiGatewayV2 {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "apigateway",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-11-29",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [ApiGatewayV2ErrorType.self]
        )
    }

    ///  Creates an Api resource.
    public func createApi(_ input: CreateApiRequest) throws -> Future<CreateApiResponse> {
        return try client.send(operation: "CreateApi", path: "/v2/apis", httpMethod: "POST", input: input)
    }

    ///  Creates an API mapping.
    public func createApiMapping(_ input: CreateApiMappingRequest) throws -> Future<CreateApiMappingResponse> {
        return try client.send(operation: "CreateApiMapping", path: "/v2/domainnames/{domainName}/apimappings", httpMethod: "POST", input: input)
    }

    ///  Creates an Authorizer for an API.
    public func createAuthorizer(_ input: CreateAuthorizerRequest) throws -> Future<CreateAuthorizerResponse> {
        return try client.send(operation: "CreateAuthorizer", path: "/v2/apis/{apiId}/authorizers", httpMethod: "POST", input: input)
    }

    ///  Creates a Deployment for an API.
    public func createDeployment(_ input: CreateDeploymentRequest) throws -> Future<CreateDeploymentResponse> {
        return try client.send(operation: "CreateDeployment", path: "/v2/apis/{apiId}/deployments", httpMethod: "POST", input: input)
    }

    ///  Creates a domain name.
    public func createDomainName(_ input: CreateDomainNameRequest) throws -> Future<CreateDomainNameResponse> {
        return try client.send(operation: "CreateDomainName", path: "/v2/domainnames", httpMethod: "POST", input: input)
    }

    ///  Creates an Integration.
    public func createIntegration(_ input: CreateIntegrationRequest) throws -> Future<CreateIntegrationResult> {
        return try client.send(operation: "CreateIntegration", path: "/v2/apis/{apiId}/integrations", httpMethod: "POST", input: input)
    }

    ///  Creates an IntegrationResponses.
    public func createIntegrationResponse(_ input: CreateIntegrationResponseRequest) throws -> Future<CreateIntegrationResponseResponse> {
        return try client.send(operation: "CreateIntegrationResponse", path: "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses", httpMethod: "POST", input: input)
    }

    ///  Creates a Model for an API.
    public func createModel(_ input: CreateModelRequest) throws -> Future<CreateModelResponse> {
        return try client.send(operation: "CreateModel", path: "/v2/apis/{apiId}/models", httpMethod: "POST", input: input)
    }

    ///  Creates a Route for an API.
    public func createRoute(_ input: CreateRouteRequest) throws -> Future<CreateRouteResult> {
        return try client.send(operation: "CreateRoute", path: "/v2/apis/{apiId}/routes", httpMethod: "POST", input: input)
    }

    ///  Creates a RouteResponse for a Route.
    public func createRouteResponse(_ input: CreateRouteResponseRequest) throws -> Future<CreateRouteResponseResponse> {
        return try client.send(operation: "CreateRouteResponse", path: "/v2/apis/{apiId}/routes/{routeId}/routeresponses", httpMethod: "POST", input: input)
    }

    ///  Creates a Stage for an API.
    public func createStage(_ input: CreateStageRequest) throws -> Future<CreateStageResponse> {
        return try client.send(operation: "CreateStage", path: "/v2/apis/{apiId}/stages", httpMethod: "POST", input: input)
    }

    ///  Deletes an Api resource.
    @discardableResult public func deleteApi(_ input: DeleteApiRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteApi", path: "/v2/apis/{apiId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an API mapping.
    @discardableResult public func deleteApiMapping(_ input: DeleteApiMappingRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteApiMapping", path: "/v2/domainnames/{domainName}/apimappings/{apiMappingId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an Authorizer.
    @discardableResult public func deleteAuthorizer(_ input: DeleteAuthorizerRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteAuthorizer", path: "/v2/apis/{apiId}/authorizers/{authorizerId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a Deployment.
    @discardableResult public func deleteDeployment(_ input: DeleteDeploymentRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteDeployment", path: "/v2/apis/{apiId}/deployments/{deploymentId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a domain name.
    @discardableResult public func deleteDomainName(_ input: DeleteDomainNameRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteDomainName", path: "/v2/domainnames/{domainName}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an Integration.
    @discardableResult public func deleteIntegration(_ input: DeleteIntegrationRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteIntegration", path: "/v2/apis/{apiId}/integrations/{integrationId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an IntegrationResponses.
    @discardableResult public func deleteIntegrationResponse(_ input: DeleteIntegrationResponseRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteIntegrationResponse", path: "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses/{integrationResponseId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a Model.
    @discardableResult public func deleteModel(_ input: DeleteModelRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteModel", path: "/v2/apis/{apiId}/models/{modelId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a Route.
    @discardableResult public func deleteRoute(_ input: DeleteRouteRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteRoute", path: "/v2/apis/{apiId}/routes/{routeId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a RouteResponse.
    @discardableResult public func deleteRouteResponse(_ input: DeleteRouteResponseRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteRouteResponse", path: "/v2/apis/{apiId}/routes/{routeId}/routeresponses/{routeResponseId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a Stage.
    @discardableResult public func deleteStage(_ input: DeleteStageRequest) throws -> Future<Void> {
        return try client.send(operation: "DeleteStage", path: "/v2/apis/{apiId}/stages/{stageName}", httpMethod: "DELETE", input: input)
    }

    ///  Gets an Api resource.
    public func getApi(_ input: GetApiRequest) throws -> Future<GetApiResponse> {
        return try client.send(operation: "GetApi", path: "/v2/apis/{apiId}", httpMethod: "GET", input: input)
    }

    ///  The API mapping.
    public func getApiMapping(_ input: GetApiMappingRequest) throws -> Future<GetApiMappingResponse> {
        return try client.send(operation: "GetApiMapping", path: "/v2/domainnames/{domainName}/apimappings/{apiMappingId}", httpMethod: "GET", input: input)
    }

    ///  The API mappings.
    public func getApiMappings(_ input: GetApiMappingsRequest) throws -> Future<GetApiMappingsResponse> {
        return try client.send(operation: "GetApiMappings", path: "/v2/domainnames/{domainName}/apimappings", httpMethod: "GET", input: input)
    }

    ///  Gets a collection of Api resources.
    public func getApis(_ input: GetApisRequest) throws -> Future<GetApisResponse> {
        return try client.send(operation: "GetApis", path: "/v2/apis", httpMethod: "GET", input: input)
    }

    ///  Gets an Authorizer.
    public func getAuthorizer(_ input: GetAuthorizerRequest) throws -> Future<GetAuthorizerResponse> {
        return try client.send(operation: "GetAuthorizer", path: "/v2/apis/{apiId}/authorizers/{authorizerId}", httpMethod: "GET", input: input)
    }

    ///  Gets the Authorizers for an API.
    public func getAuthorizers(_ input: GetAuthorizersRequest) throws -> Future<GetAuthorizersResponse> {
        return try client.send(operation: "GetAuthorizers", path: "/v2/apis/{apiId}/authorizers", httpMethod: "GET", input: input)
    }

    ///  Gets a Deployment.
    public func getDeployment(_ input: GetDeploymentRequest) throws -> Future<GetDeploymentResponse> {
        return try client.send(operation: "GetDeployment", path: "/v2/apis/{apiId}/deployments/{deploymentId}", httpMethod: "GET", input: input)
    }

    ///  Gets the Deployments for an API.
    public func getDeployments(_ input: GetDeploymentsRequest) throws -> Future<GetDeploymentsResponse> {
        return try client.send(operation: "GetDeployments", path: "/v2/apis/{apiId}/deployments", httpMethod: "GET", input: input)
    }

    ///  Gets a domain name.
    public func getDomainName(_ input: GetDomainNameRequest) throws -> Future<GetDomainNameResponse> {
        return try client.send(operation: "GetDomainName", path: "/v2/domainnames/{domainName}", httpMethod: "GET", input: input)
    }

    ///  Gets the domain names for an AWS account.
    public func getDomainNames(_ input: GetDomainNamesRequest) throws -> Future<GetDomainNamesResponse> {
        return try client.send(operation: "GetDomainNames", path: "/v2/domainnames", httpMethod: "GET", input: input)
    }

    ///  Gets an Integration.
    public func getIntegration(_ input: GetIntegrationRequest) throws -> Future<GetIntegrationResult> {
        return try client.send(operation: "GetIntegration", path: "/v2/apis/{apiId}/integrations/{integrationId}", httpMethod: "GET", input: input)
    }

    ///  Gets an IntegrationResponses.
    public func getIntegrationResponse(_ input: GetIntegrationResponseRequest) throws -> Future<GetIntegrationResponseResponse> {
        return try client.send(operation: "GetIntegrationResponse", path: "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses/{integrationResponseId}", httpMethod: "GET", input: input)
    }

    ///  Gets the IntegrationResponses for an Integration.
    public func getIntegrationResponses(_ input: GetIntegrationResponsesRequest) throws -> Future<GetIntegrationResponsesResponse> {
        return try client.send(operation: "GetIntegrationResponses", path: "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses", httpMethod: "GET", input: input)
    }

    ///  Gets the Integrations for an API.
    public func getIntegrations(_ input: GetIntegrationsRequest) throws -> Future<GetIntegrationsResponse> {
        return try client.send(operation: "GetIntegrations", path: "/v2/apis/{apiId}/integrations", httpMethod: "GET", input: input)
    }

    ///  Gets a Model.
    public func getModel(_ input: GetModelRequest) throws -> Future<GetModelResponse> {
        return try client.send(operation: "GetModel", path: "/v2/apis/{apiId}/models/{modelId}", httpMethod: "GET", input: input)
    }

    ///  Gets a model template.
    public func getModelTemplate(_ input: GetModelTemplateRequest) throws -> Future<GetModelTemplateResponse> {
        return try client.send(operation: "GetModelTemplate", path: "/v2/apis/{apiId}/models/{modelId}/template", httpMethod: "GET", input: input)
    }

    ///  Gets the Models for an API.
    public func getModels(_ input: GetModelsRequest) throws -> Future<GetModelsResponse> {
        return try client.send(operation: "GetModels", path: "/v2/apis/{apiId}/models", httpMethod: "GET", input: input)
    }

    ///  Gets a Route.
    public func getRoute(_ input: GetRouteRequest) throws -> Future<GetRouteResult> {
        return try client.send(operation: "GetRoute", path: "/v2/apis/{apiId}/routes/{routeId}", httpMethod: "GET", input: input)
    }

    ///  Gets a RouteResponse.
    public func getRouteResponse(_ input: GetRouteResponseRequest) throws -> Future<GetRouteResponseResponse> {
        return try client.send(operation: "GetRouteResponse", path: "/v2/apis/{apiId}/routes/{routeId}/routeresponses/{routeResponseId}", httpMethod: "GET", input: input)
    }

    ///  Gets the RouteResponses for a Route.
    public func getRouteResponses(_ input: GetRouteResponsesRequest) throws -> Future<GetRouteResponsesResponse> {
        return try client.send(operation: "GetRouteResponses", path: "/v2/apis/{apiId}/routes/{routeId}/routeresponses", httpMethod: "GET", input: input)
    }

    ///  Gets the Routes for an API.
    public func getRoutes(_ input: GetRoutesRequest) throws -> Future<GetRoutesResponse> {
        return try client.send(operation: "GetRoutes", path: "/v2/apis/{apiId}/routes", httpMethod: "GET", input: input)
    }

    ///  Gets a Stage.
    public func getStage(_ input: GetStageRequest) throws -> Future<GetStageResponse> {
        return try client.send(operation: "GetStage", path: "/v2/apis/{apiId}/stages/{stageName}", httpMethod: "GET", input: input)
    }

    ///  Gets the Stages for an API.
    public func getStages(_ input: GetStagesRequest) throws -> Future<GetStagesResponse> {
        return try client.send(operation: "GetStages", path: "/v2/apis/{apiId}/stages", httpMethod: "GET", input: input)
    }

    ///  Updates an Api resource.
    public func updateApi(_ input: UpdateApiRequest) throws -> Future<UpdateApiResponse> {
        return try client.send(operation: "UpdateApi", path: "/v2/apis/{apiId}", httpMethod: "PATCH", input: input)
    }

    ///  The API mapping.
    public func updateApiMapping(_ input: UpdateApiMappingRequest) throws -> Future<UpdateApiMappingResponse> {
        return try client.send(operation: "UpdateApiMapping", path: "/v2/domainnames/{domainName}/apimappings/{apiMappingId}", httpMethod: "PATCH", input: input)
    }

    ///  Updates an Authorizer.
    public func updateAuthorizer(_ input: UpdateAuthorizerRequest) throws -> Future<UpdateAuthorizerResponse> {
        return try client.send(operation: "UpdateAuthorizer", path: "/v2/apis/{apiId}/authorizers/{authorizerId}", httpMethod: "PATCH", input: input)
    }

    ///  Updates a Deployment.
    public func updateDeployment(_ input: UpdateDeploymentRequest) throws -> Future<UpdateDeploymentResponse> {
        return try client.send(operation: "UpdateDeployment", path: "/v2/apis/{apiId}/deployments/{deploymentId}", httpMethod: "PATCH", input: input)
    }

    ///  Updates a domain name.
    public func updateDomainName(_ input: UpdateDomainNameRequest) throws -> Future<UpdateDomainNameResponse> {
        return try client.send(operation: "UpdateDomainName", path: "/v2/domainnames/{domainName}", httpMethod: "PATCH", input: input)
    }

    ///  Updates an Integration.
    public func updateIntegration(_ input: UpdateIntegrationRequest) throws -> Future<UpdateIntegrationResult> {
        return try client.send(operation: "UpdateIntegration", path: "/v2/apis/{apiId}/integrations/{integrationId}", httpMethod: "PATCH", input: input)
    }

    ///  Updates an IntegrationResponses.
    public func updateIntegrationResponse(_ input: UpdateIntegrationResponseRequest) throws -> Future<UpdateIntegrationResponseResponse> {
        return try client.send(operation: "UpdateIntegrationResponse", path: "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses/{integrationResponseId}", httpMethod: "PATCH", input: input)
    }

    ///  Updates a Model.
    public func updateModel(_ input: UpdateModelRequest) throws -> Future<UpdateModelResponse> {
        return try client.send(operation: "UpdateModel", path: "/v2/apis/{apiId}/models/{modelId}", httpMethod: "PATCH", input: input)
    }

    ///  Updates a Route.
    public func updateRoute(_ input: UpdateRouteRequest) throws -> Future<UpdateRouteResult> {
        return try client.send(operation: "UpdateRoute", path: "/v2/apis/{apiId}/routes/{routeId}", httpMethod: "PATCH", input: input)
    }

    ///  Updates a RouteResponse.
    public func updateRouteResponse(_ input: UpdateRouteResponseRequest) throws -> Future<UpdateRouteResponseResponse> {
        return try client.send(operation: "UpdateRouteResponse", path: "/v2/apis/{apiId}/routes/{routeId}/routeresponses/{routeResponseId}", httpMethod: "PATCH", input: input)
    }

    ///  Updates a Stage.
    public func updateStage(_ input: UpdateStageRequest) throws -> Future<UpdateStageResponse> {
        return try client.send(operation: "UpdateStage", path: "/v2/apis/{apiId}/stages/{stageName}", httpMethod: "PATCH", input: input)
    }


}