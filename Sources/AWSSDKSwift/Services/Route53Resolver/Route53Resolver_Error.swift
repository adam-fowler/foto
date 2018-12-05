// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Route53Resolver
public enum Route53ResolverErrorType: AWSErrorType {
    case invalidNextTokenException(message: String?)
    case invalidRequestException(message: String?)
    case invalidParameterException(message: String?)
    case internalServiceErrorException(message: String?)
    case throttlingException(message: String?)
    case resourceNotFoundException(message: String?)
    case limitExceededException(message: String?)
    case invalidTagException(message: String?)
    case resourceInUseException(message: String?)
    case resourceExistsException(message: String?)
    case unknownResourceException(message: String?)
    case resourceUnavailableException(message: String?)
    case invalidPolicyDocument(message: String?)
}

extension Route53ResolverErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "InternalServiceErrorException":
            self = .internalServiceErrorException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "InvalidTagException":
            self = .invalidTagException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceExistsException":
            self = .resourceExistsException(message: message)
        case "UnknownResourceException":
            self = .unknownResourceException(message: message)
        case "ResourceUnavailableException":
            self = .resourceUnavailableException(message: message)
        case "InvalidPolicyDocument":
            self = .invalidPolicyDocument(message: message)
        default:
            return nil
        }
    }
}