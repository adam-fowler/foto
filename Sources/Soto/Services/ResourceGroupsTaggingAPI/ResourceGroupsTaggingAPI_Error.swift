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

/// Error enum for ResourceGroupsTaggingAPI
public enum ResourceGroupsTaggingAPIErrorType: AWSErrorType {
    case concurrentModificationException(message: String?)
    case constraintViolationException(message: String?)
    case internalServiceException(message: String?)
    case invalidParameterException(message: String?)
    case paginationTokenExpiredException(message: String?)
    case throttledException(message: String?)
}

extension ResourceGroupsTaggingAPIErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "ConstraintViolationException":
            self = .constraintViolationException(message: message)
        case "InternalServiceException":
            self = .internalServiceException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "PaginationTokenExpiredException":
            self = .paginationTokenExpiredException(message: message)
        case "ThrottledException":
            self = .throttledException(message: message)
        default:
            return nil
        }
    }
}

extension ResourceGroupsTaggingAPIErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .concurrentModificationException(let message):
            return "ConcurrentModificationException: \(message ?? "")"
        case .constraintViolationException(let message):
            return "ConstraintViolationException: \(message ?? "")"
        case .internalServiceException(let message):
            return "InternalServiceException: \(message ?? "")"
        case .invalidParameterException(let message):
            return "InvalidParameterException: \(message ?? "")"
        case .paginationTokenExpiredException(let message):
            return "PaginationTokenExpiredException: \(message ?? "")"
        case .throttledException(let message):
            return "ThrottledException: \(message ?? "")"
        }
    }
}
