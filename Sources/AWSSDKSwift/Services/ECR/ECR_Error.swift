// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for ECR
public enum ECRErrorType: AWSErrorType {
    case serverException(message: String?)
    case invalidParameterException(message: String?)
    case repositoryNotFoundException(message: String?)
    case repositoryPolicyNotFoundException(message: String?)
    case invalidLayerPartException(message: String?)
    case uploadNotFoundException(message: String?)
    case limitExceededException(message: String?)
    case lifecyclePolicyNotFoundException(message: String?)
    case lifecyclePolicyPreviewNotFoundException(message: String?)
    case invalidLayerException(message: String?)
    case layerPartTooSmallException(message: String?)
    case layerAlreadyExistsException(message: String?)
    case emptyUploadException(message: String?)
    case lifecyclePolicyPreviewInProgressException(message: String?)
    case repositoryAlreadyExistsException(message: String?)
    case imageNotFoundException(message: String?)
    case imageAlreadyExistsException(message: String?)
    case layersNotFoundException(message: String?)
    case layerInaccessibleException(message: String?)
    case repositoryNotEmptyException(message: String?)
}

extension ECRErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ServerException":
            self = .serverException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "RepositoryNotFoundException":
            self = .repositoryNotFoundException(message: message)
        case "RepositoryPolicyNotFoundException":
            self = .repositoryPolicyNotFoundException(message: message)
        case "InvalidLayerPartException":
            self = .invalidLayerPartException(message: message)
        case "UploadNotFoundException":
            self = .uploadNotFoundException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "LifecyclePolicyNotFoundException":
            self = .lifecyclePolicyNotFoundException(message: message)
        case "LifecyclePolicyPreviewNotFoundException":
            self = .lifecyclePolicyPreviewNotFoundException(message: message)
        case "InvalidLayerException":
            self = .invalidLayerException(message: message)
        case "LayerPartTooSmallException":
            self = .layerPartTooSmallException(message: message)
        case "LayerAlreadyExistsException":
            self = .layerAlreadyExistsException(message: message)
        case "EmptyUploadException":
            self = .emptyUploadException(message: message)
        case "LifecyclePolicyPreviewInProgressException":
            self = .lifecyclePolicyPreviewInProgressException(message: message)
        case "RepositoryAlreadyExistsException":
            self = .repositoryAlreadyExistsException(message: message)
        case "ImageNotFoundException":
            self = .imageNotFoundException(message: message)
        case "ImageAlreadyExistsException":
            self = .imageAlreadyExistsException(message: message)
        case "LayersNotFoundException":
            self = .layersNotFoundException(message: message)
        case "LayerInaccessibleException":
            self = .layerInaccessibleException(message: message)
        case "RepositoryNotEmptyException":
            self = .repositoryNotEmptyException(message: message)
        default:
            return nil
        }
    }
}