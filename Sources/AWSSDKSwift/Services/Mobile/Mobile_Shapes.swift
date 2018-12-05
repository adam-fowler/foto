// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension Mobile {

    public struct CreateProjectRequest: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "contents"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "name", location: .querystring(locationName: "name"), required: false, type: .string), 
            AWSShapeMember(label: "contents", required: false, type: .blob), 
            AWSShapeMember(label: "region", location: .querystring(locationName: "region"), required: false, type: .string), 
            AWSShapeMember(label: "snapshotId", location: .querystring(locationName: "snapshotId"), required: false, type: .string)
        ]
        ///  Name of the project. 
        public let name: String?
        ///  ZIP or YAML file which contains configuration settings to be used when creating the project. This may be the contents of the file downloaded from the URL provided in an export project operation. 
        public let contents: Data?
        ///  Default region where project resources should be created. 
        public let region: String?
        ///  Unique identifier for an exported snapshot of project configuration. This snapshot identifier is included in the share URL when a project is exported. 
        public let snapshotId: String?

        public init(name: String? = nil, contents: Data? = nil, region: String? = nil, snapshotId: String? = nil) {
            self.name = name
            self.contents = contents
            self.region = region
            self.snapshotId = snapshotId
        }

        private enum CodingKeys: String, CodingKey {
            case name = "name"
            case contents = "contents"
            case region = "region"
            case snapshotId = "snapshotId"
        }
    }

    public struct ListProjectsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "maxResults", location: .querystring(locationName: "maxResults"), required: false, type: .integer), 
            AWSShapeMember(label: "nextToken", location: .querystring(locationName: "nextToken"), required: false, type: .string)
        ]
        ///  Maximum number of records to list in a single response. 
        public let maxResults: Int32?
        ///  Pagination token. Set to null to start listing projects from start. If non-null pagination token is returned in a result, then pass its value in here in another request to list more projects. 
        public let nextToken: String?

        public init(maxResults: Int32? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "maxResults"
            case nextToken = "nextToken"
        }
    }

    public enum Platform: String, CustomStringConvertible, Codable {
        case osx = "OSX"
        case windows = "WINDOWS"
        case linux = "LINUX"
        case objc = "OBJC"
        case swift = "SWIFT"
        case android = "ANDROID"
        case javascript = "JAVASCRIPT"
        public var description: String { return self.rawValue }
    }

    public struct ExportBundleResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "downloadUrl", required: false, type: .string)
        ]
        ///  URL which contains the custom-generated SDK and tool packages used to integrate the client mobile app or web app with the AWS resources created by the AWS Mobile Hub project. 
        public let downloadUrl: String?

        public init(downloadUrl: String? = nil) {
            self.downloadUrl = downloadUrl
        }

        private enum CodingKeys: String, CodingKey {
            case downloadUrl = "downloadUrl"
        }
    }

    public struct ListProjectsResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "nextToken", required: false, type: .string), 
            AWSShapeMember(label: "projects", required: false, type: .list)
        ]
        public let nextToken: String?
        public let projects: [ProjectSummary]?

        public init(nextToken: String? = nil, projects: [ProjectSummary]? = nil) {
            self.nextToken = nextToken
            self.projects = projects
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case projects = "projects"
        }
    }

    public struct ListBundlesResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "nextToken", required: false, type: .string), 
            AWSShapeMember(label: "bundleList", required: false, type: .list)
        ]
        ///  Pagination token. If non-null pagination token is returned in a result, then pass its value in another request to fetch more entries. 
        public let nextToken: String?
        ///  A list of bundles. 
        public let bundleList: [BundleDetails]?

        public init(nextToken: String? = nil, bundleList: [BundleDetails]? = nil) {
            self.nextToken = nextToken
            self.bundleList = bundleList
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case bundleList = "bundleList"
        }
    }

    public struct ExportProjectRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "projectId", location: .uri(locationName: "projectId"), required: true, type: .string)
        ]
        ///  Unique project identifier. 
        public let projectId: String

        public init(projectId: String) {
            self.projectId = projectId
        }

        private enum CodingKeys: String, CodingKey {
            case projectId = "projectId"
        }
    }

    public struct BundleDetails: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "version", required: false, type: .string), 
            AWSShapeMember(label: "bundleId", required: false, type: .string), 
            AWSShapeMember(label: "iconUrl", required: false, type: .string), 
            AWSShapeMember(label: "description", required: false, type: .string), 
            AWSShapeMember(label: "availablePlatforms", required: false, type: .list), 
            AWSShapeMember(label: "title", required: false, type: .string)
        ]
        public let version: String?
        public let bundleId: String?
        public let iconUrl: String?
        public let description: String?
        public let availablePlatforms: [Platform]?
        public let title: String?

        public init(version: String? = nil, bundleId: String? = nil, iconUrl: String? = nil, description: String? = nil, availablePlatforms: [Platform]? = nil, title: String? = nil) {
            self.version = version
            self.bundleId = bundleId
            self.iconUrl = iconUrl
            self.description = description
            self.availablePlatforms = availablePlatforms
            self.title = title
        }

        private enum CodingKeys: String, CodingKey {
            case version = "version"
            case bundleId = "bundleId"
            case iconUrl = "iconUrl"
            case description = "description"
            case availablePlatforms = "availablePlatforms"
            case title = "title"
        }
    }

    public struct DeleteProjectResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "deletedResources", required: false, type: .list), 
            AWSShapeMember(label: "orphanedResources", required: false, type: .list)
        ]
        ///  Resources which were deleted. 
        public let deletedResources: [Resource]?
        ///  Resources which were not deleted, due to a risk of losing potentially important data or files. 
        public let orphanedResources: [Resource]?

        public init(deletedResources: [Resource]? = nil, orphanedResources: [Resource]? = nil) {
            self.deletedResources = deletedResources
            self.orphanedResources = orphanedResources
        }

        private enum CodingKeys: String, CodingKey {
            case deletedResources = "deletedResources"
            case orphanedResources = "orphanedResources"
        }
    }

    public struct ExportProjectResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "downloadUrl", required: false, type: .string), 
            AWSShapeMember(label: "shareUrl", required: false, type: .string), 
            AWSShapeMember(label: "snapshotId", required: false, type: .string)
        ]
        ///  URL which can be used to download the exported project configuation file(s). 
        public let downloadUrl: String?
        ///  URL which can be shared to allow other AWS users to create their own project in AWS Mobile Hub with the same configuration as the specified project. This URL pertains to a snapshot in time of the project configuration that is created when this API is called. If you want to share additional changes to your project configuration, then you will need to create and share a new snapshot by calling this method again. 
        public let shareUrl: String?
        ///  Unique identifier for the exported snapshot of the project configuration. This snapshot identifier is included in the share URL. 
        public let snapshotId: String?

        public init(downloadUrl: String? = nil, shareUrl: String? = nil, snapshotId: String? = nil) {
            self.downloadUrl = downloadUrl
            self.shareUrl = shareUrl
            self.snapshotId = snapshotId
        }

        private enum CodingKeys: String, CodingKey {
            case downloadUrl = "downloadUrl"
            case shareUrl = "shareUrl"
            case snapshotId = "snapshotId"
        }
    }

    public struct ProjectSummary: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "name", required: false, type: .string), 
            AWSShapeMember(label: "projectId", required: false, type: .string)
        ]
        ///  Name of the project. 
        public let name: String?
        ///  Unique project identifier. 
        public let projectId: String?

        public init(name: String? = nil, projectId: String? = nil) {
            self.name = name
            self.projectId = projectId
        }

        private enum CodingKeys: String, CodingKey {
            case name = "name"
            case projectId = "projectId"
        }
    }

    public struct DescribeBundleRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "bundleId", location: .uri(locationName: "bundleId"), required: true, type: .string)
        ]
        ///  Unique bundle identifier. 
        public let bundleId: String

        public init(bundleId: String) {
            self.bundleId = bundleId
        }

        private enum CodingKeys: String, CodingKey {
            case bundleId = "bundleId"
        }
    }

    public struct CreateProjectResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "details", required: false, type: .structure)
        ]
        ///  Detailed information about the created AWS Mobile Hub project. 
        public let details: ProjectDetails?

        public init(details: ProjectDetails? = nil) {
            self.details = details
        }

        private enum CodingKeys: String, CodingKey {
            case details = "details"
        }
    }

    public struct DescribeBundleResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "details", required: false, type: .structure)
        ]
        ///  The details of the bundle. 
        public let details: BundleDetails?

        public init(details: BundleDetails? = nil) {
            self.details = details
        }

        private enum CodingKeys: String, CodingKey {
            case details = "details"
        }
    }

    public enum ProjectState: String, CustomStringConvertible, Codable {
        case normal = "NORMAL"
        case syncing = "SYNCING"
        case importing = "IMPORTING"
        public var description: String { return self.rawValue }
    }

    public struct ListBundlesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "maxResults", location: .querystring(locationName: "maxResults"), required: false, type: .integer), 
            AWSShapeMember(label: "nextToken", location: .querystring(locationName: "nextToken"), required: false, type: .string)
        ]
        ///  Maximum number of records to list in a single response. 
        public let maxResults: Int32?
        ///  Pagination token. Set to null to start listing bundles from start. If non-null pagination token is returned in a result, then pass its value in here in another request to list more bundles. 
        public let nextToken: String?

        public init(maxResults: Int32? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "maxResults"
            case nextToken = "nextToken"
        }
    }

    public struct ProjectDetails: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "name", required: false, type: .string), 
            AWSShapeMember(label: "projectId", required: false, type: .string), 
            AWSShapeMember(label: "state", required: false, type: .enum), 
            AWSShapeMember(label: "lastUpdatedDate", required: false, type: .timestamp), 
            AWSShapeMember(label: "region", required: false, type: .string), 
            AWSShapeMember(label: "resources", required: false, type: .list), 
            AWSShapeMember(label: "consoleUrl", required: false, type: .string), 
            AWSShapeMember(label: "createdDate", required: false, type: .timestamp)
        ]
        public let name: String?
        public let projectId: String?
        public let state: ProjectState?
        ///  Date of the last modification of the project. 
        public let lastUpdatedDate: TimeStamp?
        public let region: String?
        public let resources: [Resource]?
        ///  Website URL for this project in the AWS Mobile Hub console. 
        public let consoleUrl: String?
        ///  Date the project was created. 
        public let createdDate: TimeStamp?

        public init(name: String? = nil, projectId: String? = nil, state: ProjectState? = nil, lastUpdatedDate: TimeStamp? = nil, region: String? = nil, resources: [Resource]? = nil, consoleUrl: String? = nil, createdDate: TimeStamp? = nil) {
            self.name = name
            self.projectId = projectId
            self.state = state
            self.lastUpdatedDate = lastUpdatedDate
            self.region = region
            self.resources = resources
            self.consoleUrl = consoleUrl
            self.createdDate = createdDate
        }

        private enum CodingKeys: String, CodingKey {
            case name = "name"
            case projectId = "projectId"
            case state = "state"
            case lastUpdatedDate = "lastUpdatedDate"
            case region = "region"
            case resources = "resources"
            case consoleUrl = "consoleUrl"
            case createdDate = "createdDate"
        }
    }

    public struct DescribeProjectResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "details", required: false, type: .structure)
        ]
        public let details: ProjectDetails?

        public init(details: ProjectDetails? = nil) {
            self.details = details
        }

        private enum CodingKeys: String, CodingKey {
            case details = "details"
        }
    }

    public struct DeleteProjectRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "projectId", location: .uri(locationName: "projectId"), required: true, type: .string)
        ]
        ///  Unique project identifier. 
        public let projectId: String

        public init(projectId: String) {
            self.projectId = projectId
        }

        private enum CodingKeys: String, CodingKey {
            case projectId = "projectId"
        }
    }

    public struct UpdateProjectRequest: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "contents"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "projectId", location: .querystring(locationName: "projectId"), required: true, type: .string), 
            AWSShapeMember(label: "contents", required: false, type: .blob)
        ]
        ///  Unique project identifier. 
        public let projectId: String
        ///  ZIP or YAML file which contains project configuration to be updated. This should be the contents of the file downloaded from the URL provided in an export project operation. 
        public let contents: Data?

        public init(projectId: String, contents: Data? = nil) {
            self.projectId = projectId
            self.contents = contents
        }

        private enum CodingKeys: String, CodingKey {
            case projectId = "projectId"
            case contents = "contents"
        }
    }

    public struct DescribeProjectRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "projectId", location: .querystring(locationName: "projectId"), required: true, type: .string), 
            AWSShapeMember(label: "syncFromResources", location: .querystring(locationName: "syncFromResources"), required: false, type: .boolean)
        ]
        ///  Unique project identifier. 
        public let projectId: String
        ///  If set to true, causes AWS Mobile Hub to synchronize information from other services, e.g., update state of AWS CloudFormation stacks in the AWS Mobile Hub project. 
        public let syncFromResources: Bool?

        public init(projectId: String, syncFromResources: Bool? = nil) {
            self.projectId = projectId
            self.syncFromResources = syncFromResources
        }

        private enum CodingKeys: String, CodingKey {
            case projectId = "projectId"
            case syncFromResources = "syncFromResources"
        }
    }

    public struct UpdateProjectResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "details", required: false, type: .structure)
        ]
        ///  Detailed information about the updated AWS Mobile Hub project. 
        public let details: ProjectDetails?

        public init(details: ProjectDetails? = nil) {
            self.details = details
        }

        private enum CodingKeys: String, CodingKey {
            case details = "details"
        }
    }

    public struct Resource: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "type", required: false, type: .string), 
            AWSShapeMember(label: "name", required: false, type: .string), 
            AWSShapeMember(label: "attributes", required: false, type: .map), 
            AWSShapeMember(label: "arn", required: false, type: .string), 
            AWSShapeMember(label: "feature", required: false, type: .string)
        ]
        public let `type`: String?
        public let name: String?
        public let attributes: [String: String]?
        public let arn: String?
        public let feature: String?

        public init(type: String? = nil, name: String? = nil, attributes: [String: String]? = nil, arn: String? = nil, feature: String? = nil) {
            self.`type` = `type`
            self.name = name
            self.attributes = attributes
            self.arn = arn
            self.feature = feature
        }

        private enum CodingKeys: String, CodingKey {
            case `type` = "type"
            case name = "name"
            case attributes = "attributes"
            case arn = "arn"
            case feature = "feature"
        }
    }

    public struct ExportBundleRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "platform", location: .querystring(locationName: "platform"), required: false, type: .enum), 
            AWSShapeMember(label: "projectId", location: .querystring(locationName: "projectId"), required: false, type: .string), 
            AWSShapeMember(label: "bundleId", location: .uri(locationName: "bundleId"), required: true, type: .string)
        ]
        ///  Developer desktop or target application platform. 
        public let platform: Platform?
        ///  Unique project identifier. 
        public let projectId: String?
        ///  Unique bundle identifier. 
        public let bundleId: String

        public init(platform: Platform? = nil, projectId: String? = nil, bundleId: String) {
            self.platform = platform
            self.projectId = projectId
            self.bundleId = bundleId
        }

        private enum CodingKeys: String, CodingKey {
            case platform = "platform"
            case projectId = "projectId"
            case bundleId = "bundleId"
        }
    }

}