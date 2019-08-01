// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS Auto Scaling Use AWS Auto Scaling to quickly discover all the scalable AWS resources for your application and configure dynamic scaling and predictive scaling for your resources using scaling plans. Use this service in conjunction with the Amazon EC2 Auto Scaling, Application Auto Scaling, Amazon CloudWatch, and AWS CloudFormation services.  Currently, predictive scaling is only available for Amazon EC2 Auto Scaling groups. For more information about AWS Auto Scaling, including information about granting IAM users required permissions for AWS Auto Scaling actions, see the AWS Auto Scaling User Guide.
*/
public struct AutoScalingPlans {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "AnyScaleScalingPlannerFrontendService",
            service: "autoscaling",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-01-06",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [AutoScalingPlansErrorType.self]
        )
    }

    ///  Creates a scaling plan.
    public func createScalingPlan(_ input: CreateScalingPlanRequest) throws -> Future<CreateScalingPlanResponse> {
        return try client.send(operation: "CreateScalingPlan", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified scaling plan. Deleting a scaling plan deletes the underlying ScalingInstruction for all of the scalable resources that are covered by the plan. If the plan has launched resources or has scaling activities in progress, you must delete those resources separately.
    public func deleteScalingPlan(_ input: DeleteScalingPlanRequest) throws -> Future<DeleteScalingPlanResponse> {
        return try client.send(operation: "DeleteScalingPlan", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the scalable resources in the specified scaling plan.
    public func describeScalingPlanResources(_ input: DescribeScalingPlanResourcesRequest) throws -> Future<DescribeScalingPlanResourcesResponse> {
        return try client.send(operation: "DescribeScalingPlanResources", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes one or more of your scaling plans.
    public func describeScalingPlans(_ input: DescribeScalingPlansRequest) throws -> Future<DescribeScalingPlansResponse> {
        return try client.send(operation: "DescribeScalingPlans", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the forecast data for a scalable resource. Capacity forecasts are represented as predicted values, or data points, that are calculated using historical data points from a specified CloudWatch load metric. Data points are available for up to 56 days. 
    public func getScalingPlanResourceForecastData(_ input: GetScalingPlanResourceForecastDataRequest) throws -> Future<GetScalingPlanResourceForecastDataResponse> {
        return try client.send(operation: "GetScalingPlanResourceForecastData", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the specified scaling plan. You cannot update a scaling plan if it is in the process of being created, updated, or deleted.
    public func updateScalingPlan(_ input: UpdateScalingPlanRequest) throws -> Future<UpdateScalingPlanResponse> {
        return try client.send(operation: "UpdateScalingPlan", path: "/", httpMethod: "POST", input: input)
    }
}
