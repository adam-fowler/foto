// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Kafka
public enum KafkaErrorType: AWSErrorType {
    case notFoundException(message: String?)
    case badRequestException(message: String?)
    case unauthorizedException(message: String?)
    case internalServerErrorException(message: String?)
    case forbiddenException(message: String?)
    case serviceUnavailableException(message: String?)
    case tooManyRequestsException(message: String?)
    case conflictException(message: String?)
}

extension KafkaErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "UnauthorizedException":
            self = .unauthorizedException(message: message)
        case "InternalServerErrorException":
            self = .internalServerErrorException(message: message)
        case "ForbiddenException":
            self = .forbiddenException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        case "ConflictException":
            self = .conflictException(message: message)
        default:
            return nil
        }
    }
}