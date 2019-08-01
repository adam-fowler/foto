// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for EFS
public enum EFSErrorType: AWSErrorType {
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
    case ipAddressInUse(message: String?)
    case mountTargetConflict(message: String?)
    case mountTargetNotFound(message: String?)
    case networkInterfaceLimitExceeded(message: String?)
    case noFreeAddressesInSubnet(message: String?)
    case securityGroupLimitExceeded(message: String?)
    case securityGroupNotFound(message: String?)
    case subnetNotFound(message: String?)
    case throughputLimitExceeded(message: String?)
    case tooManyRequests(message: String?)
    case unsupportedAvailabilityZone(message: String?)
}

extension EFSErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
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
        default:
            return nil
        }
    }
}
