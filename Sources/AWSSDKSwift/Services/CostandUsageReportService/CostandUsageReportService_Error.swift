// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for CostandUsageReportService
public enum CostandUsageReportServiceErrorType: AWSErrorType {
    case duplicateReportNameException(message: String?)
    case reportLimitReachedException(message: String?)
    case internalErrorException(message: String?)
    case validationException(message: String?)
}

extension CostandUsageReportServiceErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "DuplicateReportNameException":
            self = .duplicateReportNameException(message: message)
        case "ReportLimitReachedException":
            self = .reportLimitReachedException(message: message)
        case "InternalErrorException":
            self = .internalErrorException(message: message)
        case "ValidationException":
            self = .validationException(message: message)
        default:
            return nil
        }
    }
}