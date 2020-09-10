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

/// Error enum for Snowball
public enum SnowballErrorType: AWSErrorType {
    case clusterLimitExceededException(message: String?)
    case ec2RequestFailedException(message: String?)
    case invalidAddressException(message: String?)
    case invalidInputCombinationException(message: String?)
    case invalidJobStateException(message: String?)
    case invalidNextTokenException(message: String?)
    case invalidResourceException(message: String?)
    case kMSRequestFailedException(message: String?)
    case unsupportedAddressException(message: String?)
}

extension SnowballErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ClusterLimitExceededException":
            self = .clusterLimitExceededException(message: message)
        case "Ec2RequestFailedException":
            self = .ec2RequestFailedException(message: message)
        case "InvalidAddressException":
            self = .invalidAddressException(message: message)
        case "InvalidInputCombinationException":
            self = .invalidInputCombinationException(message: message)
        case "InvalidJobStateException":
            self = .invalidJobStateException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "InvalidResourceException":
            self = .invalidResourceException(message: message)
        case "KMSRequestFailedException":
            self = .kMSRequestFailedException(message: message)
        case "UnsupportedAddressException":
            self = .unsupportedAddressException(message: message)
        default:
            return nil
        }
    }
}

extension SnowballErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .clusterLimitExceededException(let message):
            return "ClusterLimitExceededException: \(message ?? "")"
        case .ec2RequestFailedException(let message):
            return "Ec2RequestFailedException: \(message ?? "")"
        case .invalidAddressException(let message):
            return "InvalidAddressException: \(message ?? "")"
        case .invalidInputCombinationException(let message):
            return "InvalidInputCombinationException: \(message ?? "")"
        case .invalidJobStateException(let message):
            return "InvalidJobStateException: \(message ?? "")"
        case .invalidNextTokenException(let message):
            return "InvalidNextTokenException: \(message ?? "")"
        case .invalidResourceException(let message):
            return "InvalidResourceException: \(message ?? "")"
        case .kMSRequestFailedException(let message):
            return "KMSRequestFailedException: \(message ?? "")"
        case .unsupportedAddressException(let message):
            return "UnsupportedAddressException: \(message ?? "")"
        }
    }
}
