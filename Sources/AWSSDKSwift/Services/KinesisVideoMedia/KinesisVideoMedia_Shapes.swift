// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension KinesisVideoMedia {

    public struct GetMediaInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "StartSelector", required: true, type: .structure), 
            AWSShapeMember(label: "StreamARN", required: false, type: .string), 
            AWSShapeMember(label: "StreamName", required: false, type: .string)
        ]

        /// Identifies the starting chunk to get from the specified stream. 
        public let startSelector: StartSelector
        /// The ARN of the stream from where you want to get the media content. If you don't specify the streamARN, you must specify the streamName.
        public let streamARN: String?
        /// The Kinesis video stream name from where you want to get the media content. If you don't specify the streamName, you must specify the streamARN.
        public let streamName: String?

        public init(startSelector: StartSelector, streamARN: String? = nil, streamName: String? = nil) {
            self.startSelector = startSelector
            self.streamARN = streamARN
            self.streamName = streamName
        }

        public func validate() throws {
            try startSelector.validate()
            try validate(streamARN, name:"streamARN", max: 1024)
            try validate(streamARN, name:"streamARN", min: 1)
            try validate(streamARN, name:"streamARN", pattern: "arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+")
            try validate(streamName, name:"streamName", max: 256)
            try validate(streamName, name:"streamName", min: 1)
            try validate(streamName, name:"streamName", pattern: "[a-zA-Z0-9_.-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case startSelector = "StartSelector"
            case streamARN = "StreamARN"
            case streamName = "StreamName"
        }
    }

    public struct GetMediaOutput: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "Payload"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ContentType", location: .header(locationName: "Content-Type"), required: false, type: .string), 
            AWSShapeMember(label: "Payload", required: false, type: .blob)
        ]

        /// The content type of the requested media.
        public let contentType: String?
        ///  The payload Kinesis Video Streams returns is a sequence of chunks from the specified stream. For information about the chunks, see . The chunks that Kinesis Video Streams returns in the GetMedia call also include the following additional Matroska (MKV) tags:    AWS_KINESISVIDEO_CONTINUATION_TOKEN (UTF-8 string) - In the event your GetMedia call terminates, you can use this continuation token in your next request to get the next chunk where the last request terminated.   AWS_KINESISVIDEO_MILLIS_BEHIND_NOW (UTF-8 string) - Client applications can use this tag value to determine how far behind the chunk returned in the response is from the latest chunk on the stream.    AWS_KINESISVIDEO_FRAGMENT_NUMBER - Fragment number returned in the chunk.   AWS_KINESISVIDEO_SERVER_TIMESTAMP - Server timestamp of the fragment.   AWS_KINESISVIDEO_PRODUCER_TIMESTAMP - Producer timestamp of the fragment.   The following tags will be present if an error occurs:   AWS_KINESISVIDEO_ERROR_CODE - String description of an error that caused GetMedia to stop.   AWS_KINESISVIDEO_ERROR_ID: Integer code of the error.   The error codes are as follows:   3002 - Error writing to the stream   4000 - Requested fragment is not found   4500 - Access denied for the stream's KMS key   4501 - Stream's KMS key is disabled   4502 - Validation error on the stream's KMS key   4503 - KMS key specified in the stream is unavailable   4504 - Invalid usage of the KMS key specified in the stream   4505 - Invalid state of the KMS key specified in the stream   4506 - Unable to find the KMS key specified in the stream   5000 - Internal error  
        public let payload: Data?

        public init(contentType: String? = nil, payload: Data? = nil) {
            self.contentType = contentType
            self.payload = payload
        }

        public func validate() throws {
            try validate(contentType, name:"contentType", max: 128)
            try validate(contentType, name:"contentType", min: 1)
            try validate(contentType, name:"contentType", pattern: "^[a-zA-Z0-9_\\.\\-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case contentType = "Content-Type"
            case payload = "Payload"
        }
    }

    public struct StartSelector: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AfterFragmentNumber", required: false, type: .string), 
            AWSShapeMember(label: "ContinuationToken", required: false, type: .string), 
            AWSShapeMember(label: "StartSelectorType", required: true, type: .enum), 
            AWSShapeMember(label: "StartTimestamp", required: false, type: .timestamp)
        ]

        /// Specifies the fragment number from where you want the GetMedia API to start returning the fragments. 
        public let afterFragmentNumber: String?
        /// Continuation token that Kinesis Video Streams returned in the previous GetMedia response. The GetMedia API then starts with the chunk identified by the continuation token.
        public let continuationToken: String?
        /// Identifies the fragment on the Kinesis video stream where you want to start getting the data from.   NOW - Start with the latest chunk on the stream.   EARLIEST - Start with earliest available chunk on the stream.   FRAGMENT_NUMBER - Start with the chunk after a specific fragment. You must also specify the AfterFragmentNumber parameter.   PRODUCER_TIMESTAMP or SERVER_TIMESTAMP - Start with the chunk containing a fragment with the specified producer or server timestamp. You specify the timestamp by adding StartTimestamp.    CONTINUATION_TOKEN - Read using the specified continuation token.     If you choose the NOW, EARLIEST, or CONTINUATION_TOKEN as the startSelectorType, you don't provide any additional information in the startSelector. 
        public let startSelectorType: StartSelectorType
        /// A timestamp value. This value is required if you choose the PRODUCER_TIMESTAMP or the SERVER_TIMESTAMP as the startSelectorType. The GetMedia API then starts with the chunk containing the fragment that has the specified timestamp.
        public let startTimestamp: TimeStamp?

        public init(afterFragmentNumber: String? = nil, continuationToken: String? = nil, startSelectorType: StartSelectorType, startTimestamp: TimeStamp? = nil) {
            self.afterFragmentNumber = afterFragmentNumber
            self.continuationToken = continuationToken
            self.startSelectorType = startSelectorType
            self.startTimestamp = startTimestamp
        }

        public func validate() throws {
            try validate(afterFragmentNumber, name:"afterFragmentNumber", max: 128)
            try validate(afterFragmentNumber, name:"afterFragmentNumber", min: 1)
            try validate(afterFragmentNumber, name:"afterFragmentNumber", pattern: "^[0-9]+$")
            try validate(continuationToken, name:"continuationToken", max: 128)
            try validate(continuationToken, name:"continuationToken", min: 1)
            try validate(continuationToken, name:"continuationToken", pattern: "^[a-zA-Z0-9_\\.\\-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case afterFragmentNumber = "AfterFragmentNumber"
            case continuationToken = "ContinuationToken"
            case startSelectorType = "StartSelectorType"
            case startTimestamp = "StartTimestamp"
        }
    }

    public enum StartSelectorType: String, CustomStringConvertible, Codable {
        case fragmentNumber = "FRAGMENT_NUMBER"
        case serverTimestamp = "SERVER_TIMESTAMP"
        case producerTimestamp = "PRODUCER_TIMESTAMP"
        case now = "NOW"
        case earliest = "EARLIEST"
        case continuationToken = "CONTINUATION_TOKEN"
        public var description: String { return self.rawValue }
    }
}
