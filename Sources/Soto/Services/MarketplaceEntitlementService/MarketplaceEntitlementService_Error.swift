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

/// Error enum for MarketplaceEntitlementService
public enum MarketplaceEntitlementServiceErrorType: AWSErrorType {
    case internalServiceErrorException(message: String?)
    case invalidParameterException(message: String?)
    case throttlingException(message: String?)
}

extension MarketplaceEntitlementServiceErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InternalServiceErrorException":
            self = .internalServiceErrorException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        default:
            return nil
        }
    }
}

extension MarketplaceEntitlementServiceErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .internalServiceErrorException(let message):
            return "InternalServiceErrorException: \(message ?? "")"
        case .invalidParameterException(let message):
            return "InvalidParameterException: \(message ?? "")"
        case .throttlingException(let message):
            return "ThrottlingException: \(message ?? "")"
        }
    }
}
