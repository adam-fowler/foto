// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Use the AWS Elemental MediaTailor SDK to configure scalable ad insertion for your live and VOD content. With AWS Elemental MediaTailor, you can serve targeted ads to viewers while maintaining broadcast quality in over-the-top (OTT) video applications. For information about using the service, including detailed information about the settings covered in this guide, see the AWS Elemental MediaTailor User Guide.Through the SDK, you manage AWS Elemental MediaTailor configurations the same as you do through the console. For example, you specify ad insertion behavior and mapping information for the origin server and the ad decision server (ADS).
*/
public struct MediaTailor {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "api.mediatailor",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-04-23",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [MediaTailorErrorType.self]
        )
    }

    ///  Deletes the playback configuration for the specified name. 
    public func deletePlaybackConfiguration(_ input: DeletePlaybackConfigurationRequest) throws -> Future<DeletePlaybackConfigurationResponse> {
        return try client.send(operation: "DeletePlaybackConfiguration", path: "/playbackConfiguration/{Name}", httpMethod: "DELETE", input: input)
    }

    ///  Returns the playback configuration for the specified name. 
    public func getPlaybackConfiguration(_ input: GetPlaybackConfigurationRequest) throws -> Future<GetPlaybackConfigurationResponse> {
        return try client.send(operation: "GetPlaybackConfiguration", path: "/playbackConfiguration/{Name}", httpMethod: "GET", input: input)
    }

    ///  Returns a list of the playback configurations defined in AWS Elemental MediaTailor. You can specify a maximum number of configurations to return at a time. The default maximum is 50. Results are returned in pagefuls. If MediaTailor has more configurations than the specified maximum, it provides parameters in the response that you can use to retrieve the next pageful. 
    public func listPlaybackConfigurations(_ input: ListPlaybackConfigurationsRequest) throws -> Future<ListPlaybackConfigurationsResponse> {
        return try client.send(operation: "ListPlaybackConfigurations", path: "/playbackConfigurations", httpMethod: "GET", input: input)
    }

    ///  Returns a list of the tags assigned to the specified playback configuration resource. 
    public func listTagsForResource(_ input: ListTagsForResourceRequest) throws -> Future<ListTagsForResourceResponse> {
        return try client.send(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: "GET", input: input)
    }

    ///  Adds a new playback configuration to AWS Elemental MediaTailor. 
    public func putPlaybackConfiguration(_ input: PutPlaybackConfigurationRequest) throws -> Future<PutPlaybackConfigurationResponse> {
        return try client.send(operation: "PutPlaybackConfiguration", path: "/playbackConfiguration", httpMethod: "PUT", input: input)
    }

    ///  Adds tags to the specified playback configuration resource. You can specify one or more tags to add. 
    @discardableResult public func tagResource(_ input: TagResourceRequest) throws -> Future<Void> {
        return try client.send(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: "POST", input: input)
    }

    ///  Removes tags from the specified playback configuration resource. You can specify one or more tags to remove. 
    @discardableResult public func untagResource(_ input: UntagResourceRequest) throws -> Future<Void> {
        return try client.send(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: "DELETE", input: input)
    }


}