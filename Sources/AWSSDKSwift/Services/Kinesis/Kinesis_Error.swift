// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Kinesis
public enum KinesisErrorType: AWSErrorType {
    case resourceNotFoundException(message: String?)
    case resourceInUseException(message: String?)
    case invalidArgumentException(message: String?)
    case limitExceededException(message: String?)
    case kMSDisabledException(message: String?)
    case kMSInvalidStateException(message: String?)
    case kMSAccessDeniedException(message: String?)
    case kMSNotFoundException(message: String?)
    case kMSOptInRequired(message: String?)
    case kMSThrottlingException(message: String?)
    case provisionedThroughputExceededException(message: String?)
    case expiredIteratorException(message: String?)
    case expiredNextTokenException(message: String?)
}

extension KinesisErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "InvalidArgumentException":
            self = .invalidArgumentException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "KMSDisabledException":
            self = .kMSDisabledException(message: message)
        case "KMSInvalidStateException":
            self = .kMSInvalidStateException(message: message)
        case "KMSAccessDeniedException":
            self = .kMSAccessDeniedException(message: message)
        case "KMSNotFoundException":
            self = .kMSNotFoundException(message: message)
        case "KMSOptInRequired":
            self = .kMSOptInRequired(message: message)
        case "KMSThrottlingException":
            self = .kMSThrottlingException(message: message)
        case "ProvisionedThroughputExceededException":
            self = .provisionedThroughputExceededException(message: message)
        case "ExpiredIteratorException":
            self = .expiredIteratorException(message: message)
        case "ExpiredNextTokenException":
            self = .expiredNextTokenException(message: message)
        default:
            return nil
        }
    }
}