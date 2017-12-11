// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for AWSMigrationHub
public enum AWSMigrationHubError: AWSErrorType {
    case accessDeniedException(message: String?)
    case internalServerError(message: String?)
    case serviceUnavailableException(message: String?)
    case invalidInputException(message: String?)
    case resourceNotFoundException(message: String?)
    case dryRunOperation(message: String?)
    case unauthorizedOperation(message: String?)
    case policyErrorException(message: String?)
}

extension AWSMigrationHubError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "InternalServerError":
            self = .internalServerError(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "InvalidInputException":
            self = .invalidInputException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "DryRunOperation":
            self = .dryRunOperation(message: message)
        case "UnauthorizedOperation":
            self = .unauthorizedOperation(message: message)
        case "PolicyErrorException":
            self = .policyErrorException(message: message)
        default:
            return nil
        }
    }
}