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

extension SSO {
    // MARK: Enums

    // MARK: Shapes

    public struct AccountInfo: AWSDecodableShape {

        /// The identifier of the AWS account that is assigned to the user.
        public let accountId: String?
        /// The display name of the AWS account that is assigned to the user.
        public let accountName: String?
        /// The email address of the AWS account that is assigned to the user.
        public let emailAddress: String?

        public init(accountId: String? = nil, accountName: String? = nil, emailAddress: String? = nil) {
            self.accountId = accountId
            self.accountName = accountName
            self.emailAddress = emailAddress
        }

        private enum CodingKeys: String, CodingKey {
            case accountId = "accountId"
            case accountName = "accountName"
            case emailAddress = "emailAddress"
        }
    }

    public struct GetRoleCredentialsRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "accessToken", location: .header(locationName: "x-amz-sso_bearer_token")), 
            AWSMemberEncoding(label: "accountId", location: .querystring(locationName: "account_id")), 
            AWSMemberEncoding(label: "roleName", location: .querystring(locationName: "role_name"))
        ]

        /// The token issued by the CreateToken API call. For more information, see CreateToken in the AWS SSO OIDC API Reference Guide.
        public let accessToken: String
        /// The identifier for the AWS account that is assigned to the user.
        public let accountId: String
        /// The friendly name of the role that is assigned to the user.
        public let roleName: String

        public init(accessToken: String, accountId: String, roleName: String) {
            self.accessToken = accessToken
            self.accountId = accountId
            self.roleName = roleName
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetRoleCredentialsResponse: AWSDecodableShape {

        /// The credentials for the role that is assigned to the user.
        public let roleCredentials: RoleCredentials?

        public init(roleCredentials: RoleCredentials? = nil) {
            self.roleCredentials = roleCredentials
        }

        private enum CodingKeys: String, CodingKey {
            case roleCredentials = "roleCredentials"
        }
    }

    public struct ListAccountRolesRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "accessToken", location: .header(locationName: "x-amz-sso_bearer_token")), 
            AWSMemberEncoding(label: "accountId", location: .querystring(locationName: "account_id")), 
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "max_result")), 
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "next_token"))
        ]

        /// The token issued by the CreateToken API call. For more information, see CreateToken in the AWS SSO OIDC API Reference Guide.
        public let accessToken: String
        /// The identifier for the AWS account that is assigned to the user.
        public let accountId: String
        /// The number of items that clients can request per page.
        public let maxResults: Int?
        /// The page token from the previous response output when you request subsequent pages.
        public let nextToken: String?

        public init(accessToken: String, accountId: String, maxResults: Int? = nil, nextToken: String? = nil) {
            self.accessToken = accessToken
            self.accountId = accountId
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try validate(self.maxResults, name: "maxResults", parent: name, min: 1)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListAccountRolesResponse: AWSDecodableShape {

        /// The page token client that is used to retrieve the list of accounts.
        public let nextToken: String?
        /// A paginated response with the list of roles and the next token if more results are available.
        public let roleList: [RoleInfo]?

        public init(nextToken: String? = nil, roleList: [RoleInfo]? = nil) {
            self.nextToken = nextToken
            self.roleList = roleList
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case roleList = "roleList"
        }
    }

    public struct ListAccountsRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "accessToken", location: .header(locationName: "x-amz-sso_bearer_token")), 
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "max_result")), 
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "next_token"))
        ]

        /// The token issued by the CreateToken API call. For more information, see CreateToken in the AWS SSO OIDC API Reference Guide.
        public let accessToken: String
        /// This is the number of items clients can request per page.
        public let maxResults: Int?
        /// (Optional) When requesting subsequent pages, this is the page token from the previous response output.
        public let nextToken: String?

        public init(accessToken: String, maxResults: Int? = nil, nextToken: String? = nil) {
            self.accessToken = accessToken
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try validate(self.maxResults, name: "maxResults", parent: name, min: 1)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListAccountsResponse: AWSDecodableShape {

        /// A paginated response with the list of account information and the next token if more results are available.
        public let accountList: [AccountInfo]?
        /// The page token client that is used to retrieve the list of accounts.
        public let nextToken: String?

        public init(accountList: [AccountInfo]? = nil, nextToken: String? = nil) {
            self.accountList = accountList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case accountList = "accountList"
            case nextToken = "nextToken"
        }
    }

    public struct LogoutRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "accessToken", location: .header(locationName: "x-amz-sso_bearer_token"))
        ]

        /// The token issued by the CreateToken API call. For more information, see CreateToken in the AWS SSO OIDC API Reference Guide.
        public let accessToken: String

        public init(accessToken: String) {
            self.accessToken = accessToken
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct RoleCredentials: AWSDecodableShape {

        /// The identifier used for the temporary security credentials. For more information, see Using Temporary Security Credentials to Request Access to AWS Resources in the AWS IAM User Guide.
        public let accessKeyId: String?
        /// The date on which temporary security credentials expire.
        public let expiration: Int64?
        /// The key that is used to sign the request. For more information, see Using Temporary Security Credentials to Request Access to AWS Resources in the AWS IAM User Guide.
        public let secretAccessKey: String?
        /// The token used for temporary credentials. For more information, see Using Temporary Security Credentials to Request Access to AWS Resources in the AWS IAM User Guide.
        public let sessionToken: String?

        public init(accessKeyId: String? = nil, expiration: Int64? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil) {
            self.accessKeyId = accessKeyId
            self.expiration = expiration
            self.secretAccessKey = secretAccessKey
            self.sessionToken = sessionToken
        }

        private enum CodingKeys: String, CodingKey {
            case accessKeyId = "accessKeyId"
            case expiration = "expiration"
            case secretAccessKey = "secretAccessKey"
            case sessionToken = "sessionToken"
        }
    }

    public struct RoleInfo: AWSDecodableShape {

        /// The identifier of the AWS account assigned to the user.
        public let accountId: String?
        /// The friendly name of the role that is assigned to the user.
        public let roleName: String?

        public init(accountId: String? = nil, roleName: String? = nil) {
            self.accountId = accountId
            self.roleName = roleName
        }

        private enum CodingKeys: String, CodingKey {
            case accountId = "accountId"
            case roleName = "roleName"
        }
    }
}
