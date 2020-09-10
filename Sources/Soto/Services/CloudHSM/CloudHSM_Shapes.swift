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

extension CloudHSM {
    // MARK: Enums

    public enum ClientVersion: String, CustomStringConvertible, Codable {
        case clientVersion51 = "5.1"
        case clientVersion53 = "5.3"
        public var description: String { return self.rawValue }
    }

    public enum CloudHsmObjectState: String, CustomStringConvertible, Codable {
        case ready = "READY"
        case updating = "UPDATING"
        case degraded = "DEGRADED"
        public var description: String { return self.rawValue }
    }

    public enum HsmStatus: String, CustomStringConvertible, Codable {
        case pending = "PENDING"
        case running = "RUNNING"
        case updating = "UPDATING"
        case suspended = "SUSPENDED"
        case terminating = "TERMINATING"
        case terminated = "TERMINATED"
        case degraded = "DEGRADED"
        public var description: String { return self.rawValue }
    }

    public enum SubscriptionType: String, CustomStringConvertible, Codable {
        case production = "PRODUCTION"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct AddTagsToResourceRequest: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) of the AWS CloudHSM resource to tag.
        public let resourceArn: String
        /// One or more tags.
        public let tagList: [Tag]

        public init(resourceArn: String, tagList: [Tag]) {
            self.resourceArn = resourceArn
            self.tagList = tagList
        }

        public func validate(name: String) throws {
            try validate(self.resourceArn, name: "resourceArn", parent: name, pattern: "[\\w :+=./\\\\-]*")
            try self.tagList.forEach {
                try $0.validate(name: "\(name).tagList[]")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "ResourceArn"
            case tagList = "TagList"
        }
    }

    public struct AddTagsToResourceResponse: AWSDecodableShape {

        /// The status of the operation.
        public let status: String

        public init(status: String) {
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case status = "Status"
        }
    }

    public struct CreateHapgRequest: AWSEncodableShape {

        /// The label of the new high-availability partition group.
        public let label: String

        public init(label: String) {
            self.label = label
        }

        public func validate(name: String) throws {
            try validate(self.label, name: "label", parent: name, pattern: "[a-zA-Z0-9_.-]{1,64}")
        }

        private enum CodingKeys: String, CodingKey {
            case label = "Label"
        }
    }

    public struct CreateHapgResponse: AWSDecodableShape {

        /// The ARN of the high-availability partition group.
        public let hapgArn: String?

        public init(hapgArn: String? = nil) {
            self.hapgArn = hapgArn
        }

        private enum CodingKeys: String, CodingKey {
            case hapgArn = "HapgArn"
        }
    }

    public struct CreateHsmRequest: AWSEncodableShape {

        /// A user-defined token to ensure idempotence. Subsequent calls to this operation with the same token will be ignored.
        public let clientToken: String?
        /// The IP address to assign to the HSM's ENI. If an IP address is not specified, an IP address will be randomly chosen from the CIDR range of the subnet.
        public let eniIp: String?
        /// The external ID from IamRoleArn, if present.
        public let externalId: String?
        /// The ARN of an IAM role to enable the AWS CloudHSM service to allocate an ENI on your behalf.
        public let iamRoleArn: String
        /// The SSH public key to install on the HSM.
        public let sshKey: String
        /// The identifier of the subnet in your VPC in which to place the HSM.
        public let subnetId: String
        public let subscriptionType: SubscriptionType
        /// The IP address for the syslog monitoring server. The AWS CloudHSM service only supports one syslog monitoring server.
        public let syslogIp: String?

        public init(clientToken: String? = nil, eniIp: String? = nil, externalId: String? = nil, iamRoleArn: String, sshKey: String, subnetId: String, subscriptionType: SubscriptionType, syslogIp: String? = nil) {
            self.clientToken = clientToken
            self.eniIp = eniIp
            self.externalId = externalId
            self.iamRoleArn = iamRoleArn
            self.sshKey = sshKey
            self.subnetId = subnetId
            self.subscriptionType = subscriptionType
            self.syslogIp = syslogIp
        }

        public func validate(name: String) throws {
            try validate(self.clientToken, name: "clientToken", parent: name, pattern: "[a-zA-Z0-9]{1,64}")
            try validate(self.eniIp, name: "eniIp", parent: name, pattern: "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}")
            try validate(self.externalId, name: "externalId", parent: name, pattern: "[\\w :+=./-]*")
            try validate(self.iamRoleArn, name: "iamRoleArn", parent: name, pattern: "arn:aws(-iso)?:iam::[0-9]{12}:role/[a-zA-Z0-9_\\+=,\\.\\-@]{1,64}")
            try validate(self.sshKey, name: "sshKey", parent: name, pattern: "[a-zA-Z0-9+/= ._:\\\\@-]*")
            try validate(self.subnetId, name: "subnetId", parent: name, pattern: "subnet-[0-9a-f]{8}")
            try validate(self.syslogIp, name: "syslogIp", parent: name, pattern: "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}")
        }

        private enum CodingKeys: String, CodingKey {
            case clientToken = "ClientToken"
            case eniIp = "EniIp"
            case externalId = "ExternalId"
            case iamRoleArn = "IamRoleArn"
            case sshKey = "SshKey"
            case subnetId = "SubnetId"
            case subscriptionType = "SubscriptionType"
            case syslogIp = "SyslogIp"
        }
    }

    public struct CreateHsmResponse: AWSDecodableShape {

        /// The ARN of the HSM.
        public let hsmArn: String?

        public init(hsmArn: String? = nil) {
            self.hsmArn = hsmArn
        }

        private enum CodingKeys: String, CodingKey {
            case hsmArn = "HsmArn"
        }
    }

    public struct CreateLunaClientRequest: AWSEncodableShape {

        /// The contents of a Base64-Encoded X.509 v3 certificate to be installed on the HSMs used by this client.
        public let certificate: String
        /// The label for the client.
        public let label: String?

        public init(certificate: String, label: String? = nil) {
            self.certificate = certificate
            self.label = label
        }

        public func validate(name: String) throws {
            try validate(self.certificate, name: "certificate", parent: name, max: 2400)
            try validate(self.certificate, name: "certificate", parent: name, min: 600)
            try validate(self.certificate, name: "certificate", parent: name, pattern: "[\\w :+=./\\n-]*")
            try validate(self.label, name: "label", parent: name, pattern: "[a-zA-Z0-9_.-]{2,64}")
        }

        private enum CodingKeys: String, CodingKey {
            case certificate = "Certificate"
            case label = "Label"
        }
    }

    public struct CreateLunaClientResponse: AWSDecodableShape {

        /// The ARN of the client.
        public let clientArn: String?

        public init(clientArn: String? = nil) {
            self.clientArn = clientArn
        }

        private enum CodingKeys: String, CodingKey {
            case clientArn = "ClientArn"
        }
    }

    public struct DeleteHapgRequest: AWSEncodableShape {

        /// The ARN of the high-availability partition group to delete.
        public let hapgArn: String

        public init(hapgArn: String) {
            self.hapgArn = hapgArn
        }

        public func validate(name: String) throws {
            try validate(self.hapgArn, name: "hapgArn", parent: name, pattern: "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hapg-[0-9a-f]{8}")
        }

        private enum CodingKeys: String, CodingKey {
            case hapgArn = "HapgArn"
        }
    }

    public struct DeleteHapgResponse: AWSDecodableShape {

        /// The status of the action.
        public let status: String

        public init(status: String) {
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case status = "Status"
        }
    }

    public struct DeleteHsmRequest: AWSEncodableShape {

        /// The ARN of the HSM to delete.
        public let hsmArn: String

        public init(hsmArn: String) {
            self.hsmArn = hsmArn
        }

        public func validate(name: String) throws {
            try validate(self.hsmArn, name: "hsmArn", parent: name, pattern: "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hsm-[0-9a-f]{8}")
        }

        private enum CodingKeys: String, CodingKey {
            case hsmArn = "HsmArn"
        }
    }

    public struct DeleteHsmResponse: AWSDecodableShape {

        /// The status of the operation.
        public let status: String

        public init(status: String) {
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case status = "Status"
        }
    }

    public struct DeleteLunaClientRequest: AWSEncodableShape {

        /// The ARN of the client to delete.
        public let clientArn: String

        public init(clientArn: String) {
            self.clientArn = clientArn
        }

        public func validate(name: String) throws {
            try validate(self.clientArn, name: "clientArn", parent: name, pattern: "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:client-[0-9a-f]{8}")
        }

        private enum CodingKeys: String, CodingKey {
            case clientArn = "ClientArn"
        }
    }

    public struct DeleteLunaClientResponse: AWSDecodableShape {

        /// The status of the action.
        public let status: String

        public init(status: String) {
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case status = "Status"
        }
    }

    public struct DescribeHapgRequest: AWSEncodableShape {

        /// The ARN of the high-availability partition group to describe.
        public let hapgArn: String

        public init(hapgArn: String) {
            self.hapgArn = hapgArn
        }

        public func validate(name: String) throws {
            try validate(self.hapgArn, name: "hapgArn", parent: name, pattern: "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hapg-[0-9a-f]{8}")
        }

        private enum CodingKeys: String, CodingKey {
            case hapgArn = "HapgArn"
        }
    }

    public struct DescribeHapgResponse: AWSDecodableShape {

        /// The ARN of the high-availability partition group.
        public let hapgArn: String?
        /// The serial number of the high-availability partition group.
        public let hapgSerial: String?
        public let hsmsLastActionFailed: [String]?
        public let hsmsPendingDeletion: [String]?
        public let hsmsPendingRegistration: [String]?
        /// The label for the high-availability partition group.
        public let label: String?
        /// The date and time the high-availability partition group was last modified.
        public let lastModifiedTimestamp: String?
        /// The list of partition serial numbers that belong to the high-availability partition group.
        public let partitionSerialList: [String]?
        /// The state of the high-availability partition group.
        public let state: CloudHsmObjectState?

        public init(hapgArn: String? = nil, hapgSerial: String? = nil, hsmsLastActionFailed: [String]? = nil, hsmsPendingDeletion: [String]? = nil, hsmsPendingRegistration: [String]? = nil, label: String? = nil, lastModifiedTimestamp: String? = nil, partitionSerialList: [String]? = nil, state: CloudHsmObjectState? = nil) {
            self.hapgArn = hapgArn
            self.hapgSerial = hapgSerial
            self.hsmsLastActionFailed = hsmsLastActionFailed
            self.hsmsPendingDeletion = hsmsPendingDeletion
            self.hsmsPendingRegistration = hsmsPendingRegistration
            self.label = label
            self.lastModifiedTimestamp = lastModifiedTimestamp
            self.partitionSerialList = partitionSerialList
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case hapgArn = "HapgArn"
            case hapgSerial = "HapgSerial"
            case hsmsLastActionFailed = "HsmsLastActionFailed"
            case hsmsPendingDeletion = "HsmsPendingDeletion"
            case hsmsPendingRegistration = "HsmsPendingRegistration"
            case label = "Label"
            case lastModifiedTimestamp = "LastModifiedTimestamp"
            case partitionSerialList = "PartitionSerialList"
            case state = "State"
        }
    }

    public struct DescribeHsmRequest: AWSEncodableShape {

        /// The ARN of the HSM. Either the HsmArn or the SerialNumber parameter must be specified.
        public let hsmArn: String?
        /// The serial number of the HSM. Either the HsmArn or the HsmSerialNumber parameter must be specified.
        public let hsmSerialNumber: String?

        public init(hsmArn: String? = nil, hsmSerialNumber: String? = nil) {
            self.hsmArn = hsmArn
            self.hsmSerialNumber = hsmSerialNumber
        }

        public func validate(name: String) throws {
            try validate(self.hsmArn, name: "hsmArn", parent: name, pattern: "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hsm-[0-9a-f]{8}")
            try validate(self.hsmSerialNumber, name: "hsmSerialNumber", parent: name, pattern: "\\d{1,16}")
        }

        private enum CodingKeys: String, CodingKey {
            case hsmArn = "HsmArn"
            case hsmSerialNumber = "HsmSerialNumber"
        }
    }

    public struct DescribeHsmResponse: AWSDecodableShape {

        /// The Availability Zone that the HSM is in.
        public let availabilityZone: String?
        /// The identifier of the elastic network interface (ENI) attached to the HSM.
        public let eniId: String?
        /// The IP address assigned to the HSM's ENI.
        public let eniIp: String?
        /// The ARN of the HSM.
        public let hsmArn: String?
        /// The HSM model type.
        public let hsmType: String?
        /// The ARN of the IAM role assigned to the HSM.
        public let iamRoleArn: String?
        /// The list of partitions on the HSM.
        public let partitions: [String]?
        /// The serial number of the HSM.
        public let serialNumber: String?
        /// The date and time that the server certificate was last updated.
        public let serverCertLastUpdated: String?
        /// The URI of the certificate server.
        public let serverCertUri: String?
        /// The HSM software version.
        public let softwareVersion: String?
        /// The date and time that the SSH key was last updated.
        public let sshKeyLastUpdated: String?
        /// The public SSH key.
        public let sshPublicKey: String?
        /// The status of the HSM.
        public let status: HsmStatus?
        /// Contains additional information about the status of the HSM.
        public let statusDetails: String?
        /// The identifier of the subnet that the HSM is in.
        public let subnetId: String?
        /// The subscription end date.
        public let subscriptionEndDate: String?
        /// The subscription start date.
        public let subscriptionStartDate: String?
        public let subscriptionType: SubscriptionType?
        /// The name of the HSM vendor.
        public let vendorName: String?
        /// The identifier of the VPC that the HSM is in.
        public let vpcId: String?

        public init(availabilityZone: String? = nil, eniId: String? = nil, eniIp: String? = nil, hsmArn: String? = nil, hsmType: String? = nil, iamRoleArn: String? = nil, partitions: [String]? = nil, serialNumber: String? = nil, serverCertLastUpdated: String? = nil, serverCertUri: String? = nil, softwareVersion: String? = nil, sshKeyLastUpdated: String? = nil, sshPublicKey: String? = nil, status: HsmStatus? = nil, statusDetails: String? = nil, subnetId: String? = nil, subscriptionEndDate: String? = nil, subscriptionStartDate: String? = nil, subscriptionType: SubscriptionType? = nil, vendorName: String? = nil, vpcId: String? = nil) {
            self.availabilityZone = availabilityZone
            self.eniId = eniId
            self.eniIp = eniIp
            self.hsmArn = hsmArn
            self.hsmType = hsmType
            self.iamRoleArn = iamRoleArn
            self.partitions = partitions
            self.serialNumber = serialNumber
            self.serverCertLastUpdated = serverCertLastUpdated
            self.serverCertUri = serverCertUri
            self.softwareVersion = softwareVersion
            self.sshKeyLastUpdated = sshKeyLastUpdated
            self.sshPublicKey = sshPublicKey
            self.status = status
            self.statusDetails = statusDetails
            self.subnetId = subnetId
            self.subscriptionEndDate = subscriptionEndDate
            self.subscriptionStartDate = subscriptionStartDate
            self.subscriptionType = subscriptionType
            self.vendorName = vendorName
            self.vpcId = vpcId
        }

        private enum CodingKeys: String, CodingKey {
            case availabilityZone = "AvailabilityZone"
            case eniId = "EniId"
            case eniIp = "EniIp"
            case hsmArn = "HsmArn"
            case hsmType = "HsmType"
            case iamRoleArn = "IamRoleArn"
            case partitions = "Partitions"
            case serialNumber = "SerialNumber"
            case serverCertLastUpdated = "ServerCertLastUpdated"
            case serverCertUri = "ServerCertUri"
            case softwareVersion = "SoftwareVersion"
            case sshKeyLastUpdated = "SshKeyLastUpdated"
            case sshPublicKey = "SshPublicKey"
            case status = "Status"
            case statusDetails = "StatusDetails"
            case subnetId = "SubnetId"
            case subscriptionEndDate = "SubscriptionEndDate"
            case subscriptionStartDate = "SubscriptionStartDate"
            case subscriptionType = "SubscriptionType"
            case vendorName = "VendorName"
            case vpcId = "VpcId"
        }
    }

    public struct DescribeLunaClientRequest: AWSEncodableShape {

        /// The certificate fingerprint.
        public let certificateFingerprint: String?
        /// The ARN of the client.
        public let clientArn: String?

        public init(certificateFingerprint: String? = nil, clientArn: String? = nil) {
            self.certificateFingerprint = certificateFingerprint
            self.clientArn = clientArn
        }

        public func validate(name: String) throws {
            try validate(self.certificateFingerprint, name: "certificateFingerprint", parent: name, pattern: "([0-9a-fA-F][0-9a-fA-F]:){15}[0-9a-fA-F][0-9a-fA-F]")
            try validate(self.clientArn, name: "clientArn", parent: name, pattern: "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:client-[0-9a-f]{8}")
        }

        private enum CodingKeys: String, CodingKey {
            case certificateFingerprint = "CertificateFingerprint"
            case clientArn = "ClientArn"
        }
    }

    public struct DescribeLunaClientResponse: AWSDecodableShape {

        /// The certificate installed on the HSMs used by this client.
        public let certificate: String?
        /// The certificate fingerprint.
        public let certificateFingerprint: String?
        /// The ARN of the client.
        public let clientArn: String?
        /// The label of the client.
        public let label: String?
        /// The date and time the client was last modified.
        public let lastModifiedTimestamp: String?

        public init(certificate: String? = nil, certificateFingerprint: String? = nil, clientArn: String? = nil, label: String? = nil, lastModifiedTimestamp: String? = nil) {
            self.certificate = certificate
            self.certificateFingerprint = certificateFingerprint
            self.clientArn = clientArn
            self.label = label
            self.lastModifiedTimestamp = lastModifiedTimestamp
        }

        private enum CodingKeys: String, CodingKey {
            case certificate = "Certificate"
            case certificateFingerprint = "CertificateFingerprint"
            case clientArn = "ClientArn"
            case label = "Label"
            case lastModifiedTimestamp = "LastModifiedTimestamp"
        }
    }

    public struct GetConfigRequest: AWSEncodableShape {

        /// The ARN of the client.
        public let clientArn: String
        /// The client version.
        public let clientVersion: ClientVersion
        /// A list of ARNs that identify the high-availability partition groups that are associated with the client.
        public let hapgList: [String]

        public init(clientArn: String, clientVersion: ClientVersion, hapgList: [String]) {
            self.clientArn = clientArn
            self.clientVersion = clientVersion
            self.hapgList = hapgList
        }

        public func validate(name: String) throws {
            try validate(self.clientArn, name: "clientArn", parent: name, pattern: "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:client-[0-9a-f]{8}")
            try self.hapgList.forEach {
                try validate($0, name: "hapgList[]", parent: name, pattern: "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hapg-[0-9a-f]{8}")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case clientArn = "ClientArn"
            case clientVersion = "ClientVersion"
            case hapgList = "HapgList"
        }
    }

    public struct GetConfigResponse: AWSDecodableShape {

        /// The certificate file containing the server.pem files of the HSMs.
        public let configCred: String?
        /// The chrystoki.conf configuration file.
        public let configFile: String?
        /// The type of credentials.
        public let configType: String?

        public init(configCred: String? = nil, configFile: String? = nil, configType: String? = nil) {
            self.configCred = configCred
            self.configFile = configFile
            self.configType = configType
        }

        private enum CodingKeys: String, CodingKey {
            case configCred = "ConfigCred"
            case configFile = "ConfigFile"
            case configType = "ConfigType"
        }
    }

    public struct ListAvailableZonesRequest: AWSEncodableShape {


        public init() {
        }

    }

    public struct ListAvailableZonesResponse: AWSDecodableShape {

        /// The list of Availability Zones that have available AWS CloudHSM capacity.
        public let aZList: [String]?

        public init(aZList: [String]? = nil) {
            self.aZList = aZList
        }

        private enum CodingKeys: String, CodingKey {
            case aZList = "AZList"
        }
    }

    public struct ListHapgsRequest: AWSEncodableShape {

        /// The NextToken value from a previous call to ListHapgs. Pass null if this is the first call.
        public let nextToken: String?

        public init(nextToken: String? = nil) {
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try validate(self.nextToken, name: "nextToken", parent: name, pattern: "[a-zA-Z0-9+/]*")
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
        }
    }

    public struct ListHapgsResponse: AWSDecodableShape {

        /// The list of high-availability partition groups.
        public let hapgList: [String]
        /// If not null, more results are available. Pass this value to ListHapgs to retrieve the next set of items.
        public let nextToken: String?

        public init(hapgList: [String], nextToken: String? = nil) {
            self.hapgList = hapgList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case hapgList = "HapgList"
            case nextToken = "NextToken"
        }
    }

    public struct ListHsmsRequest: AWSEncodableShape {

        /// The NextToken value from a previous call to ListHsms. Pass null if this is the first call.
        public let nextToken: String?

        public init(nextToken: String? = nil) {
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try validate(self.nextToken, name: "nextToken", parent: name, pattern: "[a-zA-Z0-9+/]*")
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
        }
    }

    public struct ListHsmsResponse: AWSDecodableShape {

        /// The list of ARNs that identify the HSMs.
        public let hsmList: [String]?
        /// If not null, more results are available. Pass this value to ListHsms to retrieve the next set of items.
        public let nextToken: String?

        public init(hsmList: [String]? = nil, nextToken: String? = nil) {
            self.hsmList = hsmList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case hsmList = "HsmList"
            case nextToken = "NextToken"
        }
    }

    public struct ListLunaClientsRequest: AWSEncodableShape {

        /// The NextToken value from a previous call to ListLunaClients. Pass null if this is the first call.
        public let nextToken: String?

        public init(nextToken: String? = nil) {
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try validate(self.nextToken, name: "nextToken", parent: name, pattern: "[a-zA-Z0-9+/]*")
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
        }
    }

    public struct ListLunaClientsResponse: AWSDecodableShape {

        /// The list of clients.
        public let clientList: [String]
        /// If not null, more results are available. Pass this to ListLunaClients to retrieve the next set of items.
        public let nextToken: String?

        public init(clientList: [String], nextToken: String? = nil) {
            self.clientList = clientList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case clientList = "ClientList"
            case nextToken = "NextToken"
        }
    }

    public struct ListTagsForResourceRequest: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) of the AWS CloudHSM resource.
        public let resourceArn: String

        public init(resourceArn: String) {
            self.resourceArn = resourceArn
        }

        public func validate(name: String) throws {
            try validate(self.resourceArn, name: "resourceArn", parent: name, pattern: "[\\w :+=./\\\\-]*")
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "ResourceArn"
        }
    }

    public struct ListTagsForResourceResponse: AWSDecodableShape {

        /// One or more tags.
        public let tagList: [Tag]

        public init(tagList: [Tag]) {
            self.tagList = tagList
        }

        private enum CodingKeys: String, CodingKey {
            case tagList = "TagList"
        }
    }

    public struct ModifyHapgRequest: AWSEncodableShape {

        /// The ARN of the high-availability partition group to modify.
        public let hapgArn: String
        /// The new label for the high-availability partition group.
        public let label: String?
        /// The list of partition serial numbers to make members of the high-availability partition group.
        public let partitionSerialList: [String]?

        public init(hapgArn: String, label: String? = nil, partitionSerialList: [String]? = nil) {
            self.hapgArn = hapgArn
            self.label = label
            self.partitionSerialList = partitionSerialList
        }

        public func validate(name: String) throws {
            try validate(self.hapgArn, name: "hapgArn", parent: name, pattern: "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hapg-[0-9a-f]{8}")
            try validate(self.label, name: "label", parent: name, pattern: "[a-zA-Z0-9_.-]{1,64}")
            try self.partitionSerialList?.forEach {
                try validate($0, name: "partitionSerialList[]", parent: name, pattern: "\\d{6,12}")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case hapgArn = "HapgArn"
            case label = "Label"
            case partitionSerialList = "PartitionSerialList"
        }
    }

    public struct ModifyHapgResponse: AWSDecodableShape {

        /// The ARN of the high-availability partition group.
        public let hapgArn: String?

        public init(hapgArn: String? = nil) {
            self.hapgArn = hapgArn
        }

        private enum CodingKeys: String, CodingKey {
            case hapgArn = "HapgArn"
        }
    }

    public struct ModifyHsmRequest: AWSEncodableShape {

        /// The new IP address for the elastic network interface (ENI) attached to the HSM. If the HSM is moved to a different subnet, and an IP address is not specified, an IP address will be randomly chosen from the CIDR range of the new subnet.
        public let eniIp: String?
        /// The new external ID.
        public let externalId: String?
        /// The ARN of the HSM to modify.
        public let hsmArn: String
        /// The new IAM role ARN.
        public let iamRoleArn: String?
        /// The new identifier of the subnet that the HSM is in. The new subnet must be in the same Availability Zone as the current subnet.
        public let subnetId: String?
        /// The new IP address for the syslog monitoring server. The AWS CloudHSM service only supports one syslog monitoring server.
        public let syslogIp: String?

        public init(eniIp: String? = nil, externalId: String? = nil, hsmArn: String, iamRoleArn: String? = nil, subnetId: String? = nil, syslogIp: String? = nil) {
            self.eniIp = eniIp
            self.externalId = externalId
            self.hsmArn = hsmArn
            self.iamRoleArn = iamRoleArn
            self.subnetId = subnetId
            self.syslogIp = syslogIp
        }

        public func validate(name: String) throws {
            try validate(self.eniIp, name: "eniIp", parent: name, pattern: "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}")
            try validate(self.externalId, name: "externalId", parent: name, pattern: "[\\w :+=./-]*")
            try validate(self.hsmArn, name: "hsmArn", parent: name, pattern: "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:hsm-[0-9a-f]{8}")
            try validate(self.iamRoleArn, name: "iamRoleArn", parent: name, pattern: "arn:aws(-iso)?:iam::[0-9]{12}:role/[a-zA-Z0-9_\\+=,\\.\\-@]{1,64}")
            try validate(self.subnetId, name: "subnetId", parent: name, pattern: "subnet-[0-9a-f]{8}")
            try validate(self.syslogIp, name: "syslogIp", parent: name, pattern: "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}")
        }

        private enum CodingKeys: String, CodingKey {
            case eniIp = "EniIp"
            case externalId = "ExternalId"
            case hsmArn = "HsmArn"
            case iamRoleArn = "IamRoleArn"
            case subnetId = "SubnetId"
            case syslogIp = "SyslogIp"
        }
    }

    public struct ModifyHsmResponse: AWSDecodableShape {

        /// The ARN of the HSM.
        public let hsmArn: String?

        public init(hsmArn: String? = nil) {
            self.hsmArn = hsmArn
        }

        private enum CodingKeys: String, CodingKey {
            case hsmArn = "HsmArn"
        }
    }

    public struct ModifyLunaClientRequest: AWSEncodableShape {

        /// The new certificate for the client.
        public let certificate: String
        /// The ARN of the client.
        public let clientArn: String

        public init(certificate: String, clientArn: String) {
            self.certificate = certificate
            self.clientArn = clientArn
        }

        public func validate(name: String) throws {
            try validate(self.certificate, name: "certificate", parent: name, max: 2400)
            try validate(self.certificate, name: "certificate", parent: name, min: 600)
            try validate(self.certificate, name: "certificate", parent: name, pattern: "[\\w :+=./\\n-]*")
            try validate(self.clientArn, name: "clientArn", parent: name, pattern: "arn:aws(-iso)?:cloudhsm:[a-zA-Z0-9\\-]*:[0-9]{12}:client-[0-9a-f]{8}")
        }

        private enum CodingKeys: String, CodingKey {
            case certificate = "Certificate"
            case clientArn = "ClientArn"
        }
    }

    public struct ModifyLunaClientResponse: AWSDecodableShape {

        /// The ARN of the client.
        public let clientArn: String?

        public init(clientArn: String? = nil) {
            self.clientArn = clientArn
        }

        private enum CodingKeys: String, CodingKey {
            case clientArn = "ClientArn"
        }
    }

    public struct RemoveTagsFromResourceRequest: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) of the AWS CloudHSM resource.
        public let resourceArn: String
        /// The tag key or keys to remove. Specify only the tag key to remove (not the value). To overwrite the value for an existing tag, use AddTagsToResource.
        public let tagKeyList: [String]

        public init(resourceArn: String, tagKeyList: [String]) {
            self.resourceArn = resourceArn
            self.tagKeyList = tagKeyList
        }

        public func validate(name: String) throws {
            try validate(self.resourceArn, name: "resourceArn", parent: name, pattern: "[\\w :+=./\\\\-]*")
            try self.tagKeyList.forEach {
                try validate($0, name: "tagKeyList[]", parent: name, max: 128)
                try validate($0, name: "tagKeyList[]", parent: name, min: 1)
            }
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "ResourceArn"
            case tagKeyList = "TagKeyList"
        }
    }

    public struct RemoveTagsFromResourceResponse: AWSDecodableShape {

        /// The status of the operation.
        public let status: String

        public init(status: String) {
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case status = "Status"
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
            try validate(self.value, name: "value", parent: name, max: 256)
            try validate(self.value, name: "value", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }
}
