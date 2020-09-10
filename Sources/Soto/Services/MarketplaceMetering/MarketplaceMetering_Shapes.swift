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

extension MarketplaceMetering {
    // MARK: Enums

    public enum UsageRecordResultStatus: String, CustomStringConvertible, Codable {
        case success = "Success"
        case customernotsubscribed = "CustomerNotSubscribed"
        case duplicaterecord = "DuplicateRecord"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct BatchMeterUsageRequest: AWSEncodableShape {

        /// Product code is used to uniquely identify a product in AWS Marketplace. The product code should be the same as the one used during the publishing of a new product.
        public let productCode: String
        /// The set of UsageRecords to submit. BatchMeterUsage accepts up to 25 UsageRecords at a time.
        public let usageRecords: [UsageRecord]

        public init(productCode: String, usageRecords: [UsageRecord]) {
            self.productCode = productCode
            self.usageRecords = usageRecords
        }

        public func validate(name: String) throws {
            try validate(self.productCode, name: "productCode", parent: name, max: 255)
            try validate(self.productCode, name: "productCode", parent: name, min: 1)
            try self.usageRecords.forEach {
                try $0.validate(name: "\(name).usageRecords[]")
            }
            try validate(self.usageRecords, name: "usageRecords", parent: name, max: 25)
            try validate(self.usageRecords, name: "usageRecords", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case productCode = "ProductCode"
            case usageRecords = "UsageRecords"
        }
    }

    public struct BatchMeterUsageResult: AWSDecodableShape {

        /// Contains all UsageRecords processed by BatchMeterUsage. These records were either honored by AWS Marketplace Metering Service or were invalid.
        public let results: [UsageRecordResult]?
        /// Contains all UsageRecords that were not processed by BatchMeterUsage. This is a list of UsageRecords. You can retry the failed request by making another BatchMeterUsage call with this list as input in the BatchMeterUsageRequest.
        public let unprocessedRecords: [UsageRecord]?

        public init(results: [UsageRecordResult]? = nil, unprocessedRecords: [UsageRecord]? = nil) {
            self.results = results
            self.unprocessedRecords = unprocessedRecords
        }

        private enum CodingKeys: String, CodingKey {
            case results = "Results"
            case unprocessedRecords = "UnprocessedRecords"
        }
    }

    public struct MeterUsageRequest: AWSEncodableShape {

        /// Checks whether you have the permissions required for the action, but does not make the request. If you have the permissions, the request returns DryRunOperation; otherwise, it returns UnauthorizedException. Defaults to false if not specified.
        public let dryRun: Bool?
        /// Product code is used to uniquely identify a product in AWS Marketplace. The product code should be the same as the one used during the publishing of a new product.
        public let productCode: String
        /// Timestamp, in UTC, for which the usage is being reported. Your application can meter usage for up to one hour in the past. Make sure the timestamp value is not before the start of the software usage.
        public let timestamp: TimeStamp
        /// It will be one of the fcp dimension name provided during the publishing of the product.
        public let usageDimension: String
        /// Consumption value for the hour. Defaults to 0 if not specified.
        public let usageQuantity: Int?

        public init(dryRun: Bool? = nil, productCode: String, timestamp: TimeStamp, usageDimension: String, usageQuantity: Int? = nil) {
            self.dryRun = dryRun
            self.productCode = productCode
            self.timestamp = timestamp
            self.usageDimension = usageDimension
            self.usageQuantity = usageQuantity
        }

        public func validate(name: String) throws {
            try validate(self.productCode, name: "productCode", parent: name, max: 255)
            try validate(self.productCode, name: "productCode", parent: name, min: 1)
            try validate(self.usageDimension, name: "usageDimension", parent: name, max: 255)
            try validate(self.usageDimension, name: "usageDimension", parent: name, min: 1)
            try validate(self.usageQuantity, name: "usageQuantity", parent: name, max: 2147483647)
            try validate(self.usageQuantity, name: "usageQuantity", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case dryRun = "DryRun"
            case productCode = "ProductCode"
            case timestamp = "Timestamp"
            case usageDimension = "UsageDimension"
            case usageQuantity = "UsageQuantity"
        }
    }

    public struct MeterUsageResult: AWSDecodableShape {

        /// Metering record id.
        public let meteringRecordId: String?

        public init(meteringRecordId: String? = nil) {
            self.meteringRecordId = meteringRecordId
        }

        private enum CodingKeys: String, CodingKey {
            case meteringRecordId = "MeteringRecordId"
        }
    }

    public struct RegisterUsageRequest: AWSEncodableShape {

        /// (Optional) To scope down the registration to a specific running software instance and guard against replay attacks.
        public let nonce: String?
        /// Product code is used to uniquely identify a product in AWS Marketplace. The product code should be the same as the one used during the publishing of a new product.
        public let productCode: String
        /// Public Key Version provided by AWS Marketplace
        public let publicKeyVersion: Int

        public init(nonce: String? = nil, productCode: String, publicKeyVersion: Int) {
            self.nonce = nonce
            self.productCode = productCode
            self.publicKeyVersion = publicKeyVersion
        }

        public func validate(name: String) throws {
            try validate(self.nonce, name: "nonce", parent: name, max: 255)
            try validate(self.productCode, name: "productCode", parent: name, max: 255)
            try validate(self.productCode, name: "productCode", parent: name, min: 1)
            try validate(self.publicKeyVersion, name: "publicKeyVersion", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case nonce = "Nonce"
            case productCode = "ProductCode"
            case publicKeyVersion = "PublicKeyVersion"
        }
    }

    public struct RegisterUsageResult: AWSDecodableShape {

        /// (Optional) Only included when public key version has expired
        public let publicKeyRotationTimestamp: TimeStamp?
        /// JWT Token
        public let signature: String?

        public init(publicKeyRotationTimestamp: TimeStamp? = nil, signature: String? = nil) {
            self.publicKeyRotationTimestamp = publicKeyRotationTimestamp
            self.signature = signature
        }

        private enum CodingKeys: String, CodingKey {
            case publicKeyRotationTimestamp = "PublicKeyRotationTimestamp"
            case signature = "Signature"
        }
    }

    public struct ResolveCustomerRequest: AWSEncodableShape {

        /// When a buyer visits your website during the registration process, the buyer submits a registration token through the browser. The registration token is resolved to obtain a CustomerIdentifier and product code.
        public let registrationToken: String

        public init(registrationToken: String) {
            self.registrationToken = registrationToken
        }

        public func validate(name: String) throws {
            try validate(self.registrationToken, name: "registrationToken", parent: name, pattern: "\\S+")
        }

        private enum CodingKeys: String, CodingKey {
            case registrationToken = "RegistrationToken"
        }
    }

    public struct ResolveCustomerResult: AWSDecodableShape {

        /// The CustomerIdentifier is used to identify an individual customer in your application. Calls to BatchMeterUsage require CustomerIdentifiers for each UsageRecord.
        public let customerIdentifier: String?
        /// The product code is returned to confirm that the buyer is registering for your product. Subsequent BatchMeterUsage calls should be made using this product code.
        public let productCode: String?

        public init(customerIdentifier: String? = nil, productCode: String? = nil) {
            self.customerIdentifier = customerIdentifier
            self.productCode = productCode
        }

        private enum CodingKeys: String, CodingKey {
            case customerIdentifier = "CustomerIdentifier"
            case productCode = "ProductCode"
        }
    }

    public struct UsageRecord: AWSEncodableShape & AWSDecodableShape {

        /// The CustomerIdentifier is obtained through the ResolveCustomer operation and represents an individual buyer in your application.
        public let customerIdentifier: String
        /// During the process of registering a product on AWS Marketplace, up to eight dimensions are specified. These represent different units of value in your application.
        public let dimension: String
        /// The quantity of usage consumed by the customer for the given dimension and time. Defaults to 0 if not specified.
        public let quantity: Int?
        /// Timestamp, in UTC, for which the usage is being reported. Your application can meter usage for up to one hour in the past. Make sure the timestamp value is not before the start of the software usage.
        public let timestamp: TimeStamp

        public init(customerIdentifier: String, dimension: String, quantity: Int? = nil, timestamp: TimeStamp) {
            self.customerIdentifier = customerIdentifier
            self.dimension = dimension
            self.quantity = quantity
            self.timestamp = timestamp
        }

        public func validate(name: String) throws {
            try validate(self.customerIdentifier, name: "customerIdentifier", parent: name, max: 255)
            try validate(self.customerIdentifier, name: "customerIdentifier", parent: name, min: 1)
            try validate(self.dimension, name: "dimension", parent: name, max: 255)
            try validate(self.dimension, name: "dimension", parent: name, min: 1)
            try validate(self.quantity, name: "quantity", parent: name, max: 2147483647)
            try validate(self.quantity, name: "quantity", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case customerIdentifier = "CustomerIdentifier"
            case dimension = "Dimension"
            case quantity = "Quantity"
            case timestamp = "Timestamp"
        }
    }

    public struct UsageRecordResult: AWSDecodableShape {

        /// The MeteringRecordId is a unique identifier for this metering event.
        public let meteringRecordId: String?
        /// The UsageRecordResult Status indicates the status of an individual UsageRecord processed by BatchMeterUsage.    Success- The UsageRecord was accepted and honored by BatchMeterUsage.    CustomerNotSubscribed- The CustomerIdentifier specified is not subscribed to your product. The UsageRecord was not honored. Future UsageRecords for this customer will fail until the customer subscribes to your product.    DuplicateRecord- Indicates that the UsageRecord was invalid and not honored. A previously metered UsageRecord had the same customer, dimension, and time, but a different quantity.  
        public let status: UsageRecordResultStatus?
        /// The UsageRecord that was part of the BatchMeterUsage request.
        public let usageRecord: UsageRecord?

        public init(meteringRecordId: String? = nil, status: UsageRecordResultStatus? = nil, usageRecord: UsageRecord? = nil) {
            self.meteringRecordId = meteringRecordId
            self.status = status
            self.usageRecord = usageRecord
        }

        private enum CodingKeys: String, CodingKey {
            case meteringRecordId = "MeteringRecordId"
            case status = "Status"
            case usageRecord = "UsageRecord"
        }
    }
}
