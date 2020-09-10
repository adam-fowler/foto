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

/// Error enum for DirectConnect
public enum DirectConnectErrorType: AWSErrorType {
    case directConnectClientException(message: String?)
    case directConnectServerException(message: String?)
    case duplicateTagKeysException(message: String?)
    case tooManyTagsException(message: String?)
}

extension DirectConnectErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "DirectConnectClientException":
            self = .directConnectClientException(message: message)
        case "DirectConnectServerException":
            self = .directConnectServerException(message: message)
        case "DuplicateTagKeysException":
            self = .duplicateTagKeysException(message: message)
        case "TooManyTagsException":
            self = .tooManyTagsException(message: message)
        default:
            return nil
        }
    }
}

extension DirectConnectErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .directConnectClientException(let message):
            return "DirectConnectClientException: \(message ?? "")"
        case .directConnectServerException(let message):
            return "DirectConnectServerException: \(message ?? "")"
        case .duplicateTagKeysException(let message):
            return "DuplicateTagKeysException: \(message ?? "")"
        case .tooManyTagsException(let message):
            return "TooManyTagsException: \(message ?? "")"
        }
    }
}
