//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for PinpointSMSVoice
public enum PinpointSMSVoiceErrorType: AWSErrorType {
    case alreadyExistsException(message: String?)
    case badRequestException(message: String?)
    case internalServiceErrorException(message: String?)
    case limitExceededException(message: String?)
    case notFoundException(message: String?)
    case tooManyRequestsException(message: String?)
}

extension PinpointSMSVoiceErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AlreadyExistsException":
            self = .alreadyExistsException(message: message)
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "InternalServiceErrorException":
            self = .internalServiceErrorException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        default:
            return nil
        }
    }
}

extension PinpointSMSVoiceErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .alreadyExistsException(let message):
            return "AlreadyExistsException: \(message ?? "")"
        case .badRequestException(let message):
            return "BadRequestException: \(message ?? "")"
        case .internalServiceErrorException(let message):
            return "InternalServiceErrorException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .notFoundException(let message):
            return "NotFoundException: \(message ?? "")"
        case .tooManyRequestsException(let message):
            return "TooManyRequestsException: \(message ?? "")"
        }
    }
}
