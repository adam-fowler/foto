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

/// Error enum for ElasticTranscoder
public enum ElasticTranscoderErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case incompatibleVersionException(message: String?)
    case internalServiceException(message: String?)
    case limitExceededException(message: String?)
    case resourceInUseException(message: String?)
    case resourceNotFoundException(message: String?)
    case validationException(message: String?)
}

extension ElasticTranscoderErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "IncompatibleVersionException":
            self = .incompatibleVersionException(message: message)
        case "InternalServiceException":
            self = .internalServiceException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ValidationException":
            self = .validationException(message: message)
        default:
            return nil
        }
    }
}

extension ElasticTranscoderErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .accessDeniedException(let message):
            return "AccessDeniedException: \(message ?? "")"
        case .incompatibleVersionException(let message):
            return "IncompatibleVersionException: \(message ?? "")"
        case .internalServiceException(let message):
            return "InternalServiceException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .resourceInUseException(let message):
            return "ResourceInUseException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .validationException(let message):
            return "ValidationException: \(message ?? "")"
        }
    }
}
