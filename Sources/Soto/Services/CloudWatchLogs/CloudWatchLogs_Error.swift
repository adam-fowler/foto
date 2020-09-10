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

/// Error enum for CloudWatchLogs
public enum CloudWatchLogsErrorType: AWSErrorType {
    case dataAlreadyAcceptedException(message: String?)
    case invalidOperationException(message: String?)
    case invalidParameterException(message: String?)
    case invalidSequenceTokenException(message: String?)
    case limitExceededException(message: String?)
    case malformedQueryException(message: String?)
    case operationAbortedException(message: String?)
    case resourceAlreadyExistsException(message: String?)
    case resourceNotFoundException(message: String?)
    case serviceUnavailableException(message: String?)
    case unrecognizedClientException(message: String?)
}

extension CloudWatchLogsErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "DataAlreadyAcceptedException":
            self = .dataAlreadyAcceptedException(message: message)
        case "InvalidOperationException":
            self = .invalidOperationException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "InvalidSequenceTokenException":
            self = .invalidSequenceTokenException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "MalformedQueryException":
            self = .malformedQueryException(message: message)
        case "OperationAbortedException":
            self = .operationAbortedException(message: message)
        case "ResourceAlreadyExistsException":
            self = .resourceAlreadyExistsException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "UnrecognizedClientException":
            self = .unrecognizedClientException(message: message)
        default:
            return nil
        }
    }
}

extension CloudWatchLogsErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .dataAlreadyAcceptedException(let message):
            return "DataAlreadyAcceptedException: \(message ?? "")"
        case .invalidOperationException(let message):
            return "InvalidOperationException: \(message ?? "")"
        case .invalidParameterException(let message):
            return "InvalidParameterException: \(message ?? "")"
        case .invalidSequenceTokenException(let message):
            return "InvalidSequenceTokenException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .malformedQueryException(let message):
            return "MalformedQueryException: \(message ?? "")"
        case .operationAbortedException(let message):
            return "OperationAbortedException: \(message ?? "")"
        case .resourceAlreadyExistsException(let message):
            return "ResourceAlreadyExistsException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .serviceUnavailableException(let message):
            return "ServiceUnavailableException: \(message ?? "")"
        case .unrecognizedClientException(let message):
            return "UnrecognizedClientException: \(message ?? "")"
        }
    }
}
