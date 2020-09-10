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
import Foundation

extension IoTSecureTunneling {
    // MARK: Enums

    public enum ConnectionStatus: String, CustomStringConvertible, Codable {
        case connected = "CONNECTED"
        case disconnected = "DISCONNECTED"
        public var description: String { return self.rawValue }
    }

    public enum TunnelStatus: String, CustomStringConvertible, Codable {
        case open = "OPEN"
        case closed = "CLOSED"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct CloseTunnelRequest: AWSEncodableShape {

        /// When set to true, AWS IoT Secure Tunneling deletes the tunnel data immediately.
        public let delete: Bool?
        /// The ID of the tunnel to close.
        public let tunnelId: String

        public init(delete: Bool? = nil, tunnelId: String) {
            self.delete = delete
            self.tunnelId = tunnelId
        }

        public func validate(name: String) throws {
            try validate(self.tunnelId, name: "tunnelId", parent: name, pattern: "[a-zA-Z0-9_\\-+=:]{1,128}")
        }

        private enum CodingKeys: String, CodingKey {
            case delete = "delete"
            case tunnelId = "tunnelId"
        }
    }

    public struct CloseTunnelResponse: AWSDecodableShape {


        public init() {
        }

    }

    public struct ConnectionState: AWSDecodableShape {

        /// The last time the connection status was updated.
        public let lastUpdatedAt: TimeStamp?
        /// The connection status of the tunnel. Valid values are CONNECTED and DISCONNECTED.
        public let status: ConnectionStatus?

        public init(lastUpdatedAt: TimeStamp? = nil, status: ConnectionStatus? = nil) {
            self.lastUpdatedAt = lastUpdatedAt
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case lastUpdatedAt = "lastUpdatedAt"
            case status = "status"
        }
    }

    public struct DescribeTunnelRequest: AWSEncodableShape {

        /// The tunnel to describe.
        public let tunnelId: String

        public init(tunnelId: String) {
            self.tunnelId = tunnelId
        }

        public func validate(name: String) throws {
            try validate(self.tunnelId, name: "tunnelId", parent: name, pattern: "[a-zA-Z0-9_\\-+=:]{1,128}")
        }

        private enum CodingKeys: String, CodingKey {
            case tunnelId = "tunnelId"
        }
    }

    public struct DescribeTunnelResponse: AWSDecodableShape {

        /// The tunnel being described.
        public let tunnel: Tunnel?

        public init(tunnel: Tunnel? = nil) {
            self.tunnel = tunnel
        }

        private enum CodingKeys: String, CodingKey {
            case tunnel = "tunnel"
        }
    }

    public struct DestinationConfig: AWSEncodableShape & AWSDecodableShape {

        /// A list of service names that identity the target application. Currently, you can only specify a single name. The AWS IoT client running on the destination device reads this value and uses it to look up a port or an IP address and a port. The AWS IoT client instantiates the local proxy which uses this information to connect to the destination application.
        public let services: [String]
        /// The name of the IoT thing to which you want to connect.
        public let thingName: String

        public init(services: [String], thingName: String) {
            self.services = services
            self.thingName = thingName
        }

        public func validate(name: String) throws {
            try self.services.forEach {
                try validate($0, name: "services[]", parent: name, max: 8)
                try validate($0, name: "services[]", parent: name, min: 1)
                try validate($0, name: "services[]", parent: name, pattern: "[a-zA-Z0-9:_-]+")
            }
            try validate(self.services, name: "services", parent: name, max: 1)
            try validate(self.services, name: "services", parent: name, min: 1)
            try validate(self.thingName, name: "thingName", parent: name, max: 128)
            try validate(self.thingName, name: "thingName", parent: name, min: 1)
            try validate(self.thingName, name: "thingName", parent: name, pattern: "[a-zA-Z0-9:_-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case services = "services"
            case thingName = "thingName"
        }
    }

    public struct ListTagsForResourceRequest: AWSEncodableShape {

        /// The resource ARN.
        public let resourceArn: String

        public init(resourceArn: String) {
            self.resourceArn = resourceArn
        }

        public func validate(name: String) throws {
            try validate(self.resourceArn, name: "resourceArn", parent: name, max: 1011)
            try validate(self.resourceArn, name: "resourceArn", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "resourceArn"
        }
    }

    public struct ListTagsForResourceResponse: AWSDecodableShape {

        /// The tags for the specified resource.
        public let tags: [Tag]?

        public init(tags: [Tag]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "tags"
        }
    }

    public struct ListTunnelsRequest: AWSEncodableShape {

        /// The maximum number of results to return at once.
        public let maxResults: Int?
        /// A token to retrieve the next set of results.
        public let nextToken: String?
        /// The name of the IoT thing associated with the destination device.
        public let thingName: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil, thingName: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.thingName = thingName
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try validate(self.nextToken, name: "nextToken", parent: name, pattern: "[a-zA-Z0-9_=-]{1,4096}")
            try validate(self.thingName, name: "thingName", parent: name, max: 128)
            try validate(self.thingName, name: "thingName", parent: name, min: 1)
            try validate(self.thingName, name: "thingName", parent: name, pattern: "[a-zA-Z0-9:_-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "maxResults"
            case nextToken = "nextToken"
            case thingName = "thingName"
        }
    }

    public struct ListTunnelsResponse: AWSDecodableShape {

        /// A token to used to retrieve the next set of results.
        public let nextToken: String?
        /// A short description of the tunnels in an AWS account.
        public let tunnelSummaries: [TunnelSummary]?

        public init(nextToken: String? = nil, tunnelSummaries: [TunnelSummary]? = nil) {
            self.nextToken = nextToken
            self.tunnelSummaries = tunnelSummaries
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case tunnelSummaries = "tunnelSummaries"
        }
    }

    public struct OpenTunnelRequest: AWSEncodableShape {

        /// A short text description of the tunnel. 
        public let description: String?
        /// The destination configuration for the OpenTunnel request.
        public let destinationConfig: DestinationConfig?
        /// A collection of tag metadata.
        public let tags: [Tag]?
        /// Timeout configuration for a tunnel.
        public let timeoutConfig: TimeoutConfig?

        public init(description: String? = nil, destinationConfig: DestinationConfig? = nil, tags: [Tag]? = nil, timeoutConfig: TimeoutConfig? = nil) {
            self.description = description
            self.destinationConfig = destinationConfig
            self.tags = tags
            self.timeoutConfig = timeoutConfig
        }

        public func validate(name: String) throws {
            try validate(self.description, name: "description", parent: name, pattern: "[^\\p{C}]{1,2048}")
            try self.destinationConfig?.validate(name: "\(name).destinationConfig")
            try self.tags?.forEach {
                try $0.validate(name: "\(name).tags[]")
            }
            try validate(self.tags, name: "tags", parent: name, max: 200)
            try validate(self.tags, name: "tags", parent: name, min: 1)
            try self.timeoutConfig?.validate(name: "\(name).timeoutConfig")
        }

        private enum CodingKeys: String, CodingKey {
            case description = "description"
            case destinationConfig = "destinationConfig"
            case tags = "tags"
            case timeoutConfig = "timeoutConfig"
        }
    }

    public struct OpenTunnelResponse: AWSDecodableShape {

        /// The access token the destination local proxy uses to connect to AWS IoT Secure Tunneling.
        public let destinationAccessToken: String?
        /// The access token the source local proxy uses to connect to AWS IoT Secure Tunneling.
        public let sourceAccessToken: String?
        /// The Amazon Resource Name for the tunnel. The tunnel ARN format is arn:aws:tunnel:&lt;region&gt;:&lt;account-id&gt;:tunnel/&lt;tunnel-id&gt; 
        public let tunnelArn: String?
        /// A unique alpha-numeric tunnel ID.
        public let tunnelId: String?

        public init(destinationAccessToken: String? = nil, sourceAccessToken: String? = nil, tunnelArn: String? = nil, tunnelId: String? = nil) {
            self.destinationAccessToken = destinationAccessToken
            self.sourceAccessToken = sourceAccessToken
            self.tunnelArn = tunnelArn
            self.tunnelId = tunnelId
        }

        private enum CodingKeys: String, CodingKey {
            case destinationAccessToken = "destinationAccessToken"
            case sourceAccessToken = "sourceAccessToken"
            case tunnelArn = "tunnelArn"
            case tunnelId = "tunnelId"
        }
    }

    public struct Tag: AWSEncodableShape & AWSDecodableShape {

        /// The key of the tag.
        public let key: String
        /// The value of the tag.
        public let value: String

        public init(key: String, value: String) {
            self.key = key
            self.value = value
        }

        public func validate(name: String) throws {
            try validate(self.key, name: "key", parent: name, max: 128)
            try validate(self.key, name: "key", parent: name, min: 1)
            try validate(self.key, name: "key", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")
            try validate(self.value, name: "value", parent: name, max: 256)
            try validate(self.value, name: "value", parent: name, min: 0)
            try validate(self.value, name: "value", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")
        }

        private enum CodingKeys: String, CodingKey {
            case key = "key"
            case value = "value"
        }
    }

    public struct TagResourceRequest: AWSEncodableShape {

        /// The ARN of the resource.
        public let resourceArn: String
        /// The tags for the resource.
        public let tags: [Tag]

        public init(resourceArn: String, tags: [Tag]) {
            self.resourceArn = resourceArn
            self.tags = tags
        }

        public func validate(name: String) throws {
            try validate(self.resourceArn, name: "resourceArn", parent: name, max: 1011)
            try validate(self.resourceArn, name: "resourceArn", parent: name, min: 1)
            try self.tags.forEach {
                try $0.validate(name: "\(name).tags[]")
            }
            try validate(self.tags, name: "tags", parent: name, max: 200)
            try validate(self.tags, name: "tags", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "resourceArn"
            case tags = "tags"
        }
    }

    public struct TagResourceResponse: AWSDecodableShape {


        public init() {
        }

    }

    public struct TimeoutConfig: AWSEncodableShape & AWSDecodableShape {

        /// The maximum amount of time (in minutes) a tunnel can remain open. If not specified, maxLifetimeTimeoutMinutes defaults to 720 minutes. Valid values are from 1 minute to 12 hours (720 minutes) 
        public let maxLifetimeTimeoutMinutes: Int?

        public init(maxLifetimeTimeoutMinutes: Int? = nil) {
            self.maxLifetimeTimeoutMinutes = maxLifetimeTimeoutMinutes
        }

        public func validate(name: String) throws {
            try validate(self.maxLifetimeTimeoutMinutes, name: "maxLifetimeTimeoutMinutes", parent: name, max: 720)
            try validate(self.maxLifetimeTimeoutMinutes, name: "maxLifetimeTimeoutMinutes", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case maxLifetimeTimeoutMinutes = "maxLifetimeTimeoutMinutes"
        }
    }

    public struct Tunnel: AWSDecodableShape {

        /// The time when the tunnel was created.
        public let createdAt: TimeStamp?
        /// A description of the tunnel.
        public let description: String?
        /// The destination configuration that specifies the thing name of the destination device and a service name that the local proxy uses to connect to the destination application.
        public let destinationConfig: DestinationConfig?
        /// The connection state of the destination application.
        public let destinationConnectionState: ConnectionState?
        /// The last time the tunnel was updated.
        public let lastUpdatedAt: TimeStamp?
        /// The connection state of the source application.
        public let sourceConnectionState: ConnectionState?
        /// The status of a tunnel. Valid values are: Open and Closed.
        public let status: TunnelStatus?
        /// A list of tag metadata associated with the secure tunnel.
        public let tags: [Tag]?
        /// Timeout configuration for the tunnel.
        public let timeoutConfig: TimeoutConfig?
        /// The Amazon Resource Name (ARN) of a tunnel. The tunnel ARN format is arn:aws:tunnel:&lt;region&gt;:&lt;account-id&gt;:tunnel/&lt;tunnel-id&gt; 
        public let tunnelArn: String?
        /// A unique alpha-numeric ID that identifies a tunnel.
        public let tunnelId: String?

        public init(createdAt: TimeStamp? = nil, description: String? = nil, destinationConfig: DestinationConfig? = nil, destinationConnectionState: ConnectionState? = nil, lastUpdatedAt: TimeStamp? = nil, sourceConnectionState: ConnectionState? = nil, status: TunnelStatus? = nil, tags: [Tag]? = nil, timeoutConfig: TimeoutConfig? = nil, tunnelArn: String? = nil, tunnelId: String? = nil) {
            self.createdAt = createdAt
            self.description = description
            self.destinationConfig = destinationConfig
            self.destinationConnectionState = destinationConnectionState
            self.lastUpdatedAt = lastUpdatedAt
            self.sourceConnectionState = sourceConnectionState
            self.status = status
            self.tags = tags
            self.timeoutConfig = timeoutConfig
            self.tunnelArn = tunnelArn
            self.tunnelId = tunnelId
        }

        private enum CodingKeys: String, CodingKey {
            case createdAt = "createdAt"
            case description = "description"
            case destinationConfig = "destinationConfig"
            case destinationConnectionState = "destinationConnectionState"
            case lastUpdatedAt = "lastUpdatedAt"
            case sourceConnectionState = "sourceConnectionState"
            case status = "status"
            case tags = "tags"
            case timeoutConfig = "timeoutConfig"
            case tunnelArn = "tunnelArn"
            case tunnelId = "tunnelId"
        }
    }

    public struct TunnelSummary: AWSDecodableShape {

        /// The time the tunnel was created.
        public let createdAt: TimeStamp?
        /// A description of the tunnel.
        public let description: String?
        /// The time the tunnel was last updated.
        public let lastUpdatedAt: TimeStamp?
        /// The status of a tunnel. Valid values are: Open and Closed.
        public let status: TunnelStatus?
        /// The Amazon Resource Name of the tunnel. The tunnel ARN format is arn:aws:tunnel:&lt;region&gt;:&lt;account-id&gt;:tunnel/&lt;tunnel-id&gt; 
        public let tunnelArn: String?
        /// The unique alpha-numeric identifier for the tunnel.
        public let tunnelId: String?

        public init(createdAt: TimeStamp? = nil, description: String? = nil, lastUpdatedAt: TimeStamp? = nil, status: TunnelStatus? = nil, tunnelArn: String? = nil, tunnelId: String? = nil) {
            self.createdAt = createdAt
            self.description = description
            self.lastUpdatedAt = lastUpdatedAt
            self.status = status
            self.tunnelArn = tunnelArn
            self.tunnelId = tunnelId
        }

        private enum CodingKeys: String, CodingKey {
            case createdAt = "createdAt"
            case description = "description"
            case lastUpdatedAt = "lastUpdatedAt"
            case status = "status"
            case tunnelArn = "tunnelArn"
            case tunnelId = "tunnelId"
        }
    }

    public struct UntagResourceRequest: AWSEncodableShape {

        /// The resource ARN.
        public let resourceArn: String
        /// The keys of the tags to remove.
        public let tagKeys: [String]

        public init(resourceArn: String, tagKeys: [String]) {
            self.resourceArn = resourceArn
            self.tagKeys = tagKeys
        }

        public func validate(name: String) throws {
            try validate(self.resourceArn, name: "resourceArn", parent: name, max: 1011)
            try validate(self.resourceArn, name: "resourceArn", parent: name, min: 1)
            try self.tagKeys.forEach {
                try validate($0, name: "tagKeys[]", parent: name, max: 128)
                try validate($0, name: "tagKeys[]", parent: name, min: 1)
                try validate($0, name: "tagKeys[]", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")
            }
            try validate(self.tagKeys, name: "tagKeys", parent: name, max: 200)
            try validate(self.tagKeys, name: "tagKeys", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "resourceArn"
            case tagKeys = "tagKeys"
        }
    }

    public struct UntagResourceResponse: AWSDecodableShape {


        public init() {
        }

    }
}
