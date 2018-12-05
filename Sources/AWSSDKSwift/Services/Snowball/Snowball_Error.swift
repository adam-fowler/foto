// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Snowball
public enum SnowballErrorType: AWSErrorType {
    case invalidResourceException(message: String?)
    case invalidJobStateException(message: String?)
    case kMSRequestFailedException(message: String?)
    case invalidInputCombinationException(message: String?)
    case clusterLimitExceededException(message: String?)
    case ec2RequestFailedException(message: String?)
    case invalidNextTokenException(message: String?)
    case invalidAddressException(message: String?)
    case unsupportedAddressException(message: String?)
}

extension SnowballErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InvalidResourceException":
            self = .invalidResourceException(message: message)
        case "InvalidJobStateException":
            self = .invalidJobStateException(message: message)
        case "KMSRequestFailedException":
            self = .kMSRequestFailedException(message: message)
        case "InvalidInputCombinationException":
            self = .invalidInputCombinationException(message: message)
        case "ClusterLimitExceededException":
            self = .clusterLimitExceededException(message: message)
        case "Ec2RequestFailedException":
            self = .ec2RequestFailedException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "InvalidAddressException":
            self = .invalidAddressException(message: message)
        case "UnsupportedAddressException":
            self = .unsupportedAddressException(message: message)
        default:
            return nil
        }
    }
}