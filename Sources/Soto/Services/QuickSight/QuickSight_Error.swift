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

/// Error enum for QuickSight
public enum QuickSightErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case concurrentUpdatingException(message: String?)
    case conflictException(message: String?)
    case domainNotWhitelistedException(message: String?)
    case identityTypeNotSupportedException(message: String?)
    case internalFailureException(message: String?)
    case invalidNextTokenException(message: String?)
    case invalidParameterValueException(message: String?)
    case limitExceededException(message: String?)
    case preconditionNotMetException(message: String?)
    case quickSightUserNotFoundException(message: String?)
    case resourceExistsException(message: String?)
    case resourceNotFoundException(message: String?)
    case resourceUnavailableException(message: String?)
    case sessionLifetimeInMinutesInvalidException(message: String?)
    case throttlingException(message: String?)
    case unsupportedUserEditionException(message: String?)
}

extension QuickSightErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "ConcurrentUpdatingException":
            self = .concurrentUpdatingException(message: message)
        case "ConflictException":
            self = .conflictException(message: message)
        case "DomainNotWhitelistedException":
            self = .domainNotWhitelistedException(message: message)
        case "IdentityTypeNotSupportedException":
            self = .identityTypeNotSupportedException(message: message)
        case "InternalFailureException":
            self = .internalFailureException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "InvalidParameterValueException":
            self = .invalidParameterValueException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "PreconditionNotMetException":
            self = .preconditionNotMetException(message: message)
        case "QuickSightUserNotFoundException":
            self = .quickSightUserNotFoundException(message: message)
        case "ResourceExistsException":
            self = .resourceExistsException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ResourceUnavailableException":
            self = .resourceUnavailableException(message: message)
        case "SessionLifetimeInMinutesInvalidException":
            self = .sessionLifetimeInMinutesInvalidException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "UnsupportedUserEditionException":
            self = .unsupportedUserEditionException(message: message)
        default:
            return nil
        }
    }
}

extension QuickSightErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .accessDeniedException(let message):
            return "AccessDeniedException: \(message ?? "")"
        case .concurrentUpdatingException(let message):
            return "ConcurrentUpdatingException: \(message ?? "")"
        case .conflictException(let message):
            return "ConflictException: \(message ?? "")"
        case .domainNotWhitelistedException(let message):
            return "DomainNotWhitelistedException: \(message ?? "")"
        case .identityTypeNotSupportedException(let message):
            return "IdentityTypeNotSupportedException: \(message ?? "")"
        case .internalFailureException(let message):
            return "InternalFailureException: \(message ?? "")"
        case .invalidNextTokenException(let message):
            return "InvalidNextTokenException: \(message ?? "")"
        case .invalidParameterValueException(let message):
            return "InvalidParameterValueException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .preconditionNotMetException(let message):
            return "PreconditionNotMetException: \(message ?? "")"
        case .quickSightUserNotFoundException(let message):
            return "QuickSightUserNotFoundException: \(message ?? "")"
        case .resourceExistsException(let message):
            return "ResourceExistsException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .resourceUnavailableException(let message):
            return "ResourceUnavailableException: \(message ?? "")"
        case .sessionLifetimeInMinutesInvalidException(let message):
            return "SessionLifetimeInMinutesInvalidException: \(message ?? "")"
        case .throttlingException(let message):
            return "ThrottlingException: \(message ?? "")"
        case .unsupportedUserEditionException(let message):
            return "UnsupportedUserEditionException: \(message ?? "")"
        }
    }
}
