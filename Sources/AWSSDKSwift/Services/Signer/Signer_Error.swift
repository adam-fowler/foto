// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Signer
public enum SignerErrorType: AWSErrorType {
    case validationException(message: String?)
    case accessDeniedException(message: String?)
    case throttlingException(message: String?)
    case internalServiceErrorException(message: String?)
    case resourceNotFoundException(message: String?)
}

extension SignerErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ValidationException":
            self = .validationException(message: message)
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "InternalServiceErrorException":
            self = .internalServiceErrorException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        default:
            return nil
        }
    }
}