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

/// Error enum for EFS
public enum EFSErrorType: AWSErrorType {
    case accessPointAlreadyExists(message: String?)
    case accessPointLimitExceeded(message: String?)
    case accessPointNotFound(message: String?)
    case badRequest(message: String?)
    case dependencyTimeout(message: String?)
    case fileSystemAlreadyExists(message: String?)
    case fileSystemInUse(message: String?)
    case fileSystemLimitExceeded(message: String?)
    case fileSystemNotFound(message: String?)
    case incorrectFileSystemLifeCycleState(message: String?)
    case incorrectMountTargetState(message: String?)
    case insufficientThroughputCapacity(message: String?)
    case internalServerError(message: String?)
    case invalidPolicyException(message: String?)
    case ipAddressInUse(message: String?)
    case mountTargetConflict(message: String?)
    case mountTargetNotFound(message: String?)
    case networkInterfaceLimitExceeded(message: String?)
    case noFreeAddressesInSubnet(message: String?)
    case policyNotFound(message: String?)
    case securityGroupLimitExceeded(message: String?)
    case securityGroupNotFound(message: String?)
    case subnetNotFound(message: String?)
    case throughputLimitExceeded(message: String?)
    case tooManyRequests(message: String?)
    case unsupportedAvailabilityZone(message: String?)
    case validationException(message: String?)
}

extension EFSErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessPointAlreadyExists":
            self = .accessPointAlreadyExists(message: message)
        case "AccessPointLimitExceeded":
            self = .accessPointLimitExceeded(message: message)
        case "AccessPointNotFound":
            self = .accessPointNotFound(message: message)
        case "BadRequest":
            self = .badRequest(message: message)
        case "DependencyTimeout":
            self = .dependencyTimeout(message: message)
        case "FileSystemAlreadyExists":
            self = .fileSystemAlreadyExists(message: message)
        case "FileSystemInUse":
            self = .fileSystemInUse(message: message)
        case "FileSystemLimitExceeded":
            self = .fileSystemLimitExceeded(message: message)
        case "FileSystemNotFound":
            self = .fileSystemNotFound(message: message)
        case "IncorrectFileSystemLifeCycleState":
            self = .incorrectFileSystemLifeCycleState(message: message)
        case "IncorrectMountTargetState":
            self = .incorrectMountTargetState(message: message)
        case "InsufficientThroughputCapacity":
            self = .insufficientThroughputCapacity(message: message)
        case "InternalServerError":
            self = .internalServerError(message: message)
        case "InvalidPolicyException":
            self = .invalidPolicyException(message: message)
        case "IpAddressInUse":
            self = .ipAddressInUse(message: message)
        case "MountTargetConflict":
            self = .mountTargetConflict(message: message)
        case "MountTargetNotFound":
            self = .mountTargetNotFound(message: message)
        case "NetworkInterfaceLimitExceeded":
            self = .networkInterfaceLimitExceeded(message: message)
        case "NoFreeAddressesInSubnet":
            self = .noFreeAddressesInSubnet(message: message)
        case "PolicyNotFound":
            self = .policyNotFound(message: message)
        case "SecurityGroupLimitExceeded":
            self = .securityGroupLimitExceeded(message: message)
        case "SecurityGroupNotFound":
            self = .securityGroupNotFound(message: message)
        case "SubnetNotFound":
            self = .subnetNotFound(message: message)
        case "ThroughputLimitExceeded":
            self = .throughputLimitExceeded(message: message)
        case "TooManyRequests":
            self = .tooManyRequests(message: message)
        case "UnsupportedAvailabilityZone":
            self = .unsupportedAvailabilityZone(message: message)
        case "ValidationException":
            self = .validationException(message: message)
        default:
            return nil
        }
    }
}

extension EFSErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .accessPointAlreadyExists(let message):
            return "AccessPointAlreadyExists: \(message ?? "")"
        case .accessPointLimitExceeded(let message):
            return "AccessPointLimitExceeded: \(message ?? "")"
        case .accessPointNotFound(let message):
            return "AccessPointNotFound: \(message ?? "")"
        case .badRequest(let message):
            return "BadRequest: \(message ?? "")"
        case .dependencyTimeout(let message):
            return "DependencyTimeout: \(message ?? "")"
        case .fileSystemAlreadyExists(let message):
            return "FileSystemAlreadyExists: \(message ?? "")"
        case .fileSystemInUse(let message):
            return "FileSystemInUse: \(message ?? "")"
        case .fileSystemLimitExceeded(let message):
            return "FileSystemLimitExceeded: \(message ?? "")"
        case .fileSystemNotFound(let message):
            return "FileSystemNotFound: \(message ?? "")"
        case .incorrectFileSystemLifeCycleState(let message):
            return "IncorrectFileSystemLifeCycleState: \(message ?? "")"
        case .incorrectMountTargetState(let message):
            return "IncorrectMountTargetState: \(message ?? "")"
        case .insufficientThroughputCapacity(let message):
            return "InsufficientThroughputCapacity: \(message ?? "")"
        case .internalServerError(let message):
            return "InternalServerError: \(message ?? "")"
        case .invalidPolicyException(let message):
            return "InvalidPolicyException: \(message ?? "")"
        case .ipAddressInUse(let message):
            return "IpAddressInUse: \(message ?? "")"
        case .mountTargetConflict(let message):
            return "MountTargetConflict: \(message ?? "")"
        case .mountTargetNotFound(let message):
            return "MountTargetNotFound: \(message ?? "")"
        case .networkInterfaceLimitExceeded(let message):
            return "NetworkInterfaceLimitExceeded: \(message ?? "")"
        case .noFreeAddressesInSubnet(let message):
            return "NoFreeAddressesInSubnet: \(message ?? "")"
        case .policyNotFound(let message):
            return "PolicyNotFound: \(message ?? "")"
        case .securityGroupLimitExceeded(let message):
            return "SecurityGroupLimitExceeded: \(message ?? "")"
        case .securityGroupNotFound(let message):
            return "SecurityGroupNotFound: \(message ?? "")"
        case .subnetNotFound(let message):
            return "SubnetNotFound: \(message ?? "")"
        case .throughputLimitExceeded(let message):
            return "ThroughputLimitExceeded: \(message ?? "")"
        case .tooManyRequests(let message):
            return "TooManyRequests: \(message ?? "")"
        case .unsupportedAvailabilityZone(let message):
            return "UnsupportedAvailabilityZone: \(message ?? "")"
        case .validationException(let message):
            return "ValidationException: \(message ?? "")"
        }
    }
}
