// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for ECR
public enum ECRErrorType: AWSErrorType {
    case emptyUploadException(message: String?)
    case imageAlreadyExistsException(message: String?)
    case imageNotFoundException(message: String?)
    case invalidLayerException(message: String?)
    case invalidLayerPartException(message: String?)
    case invalidParameterException(message: String?)
    case invalidTagParameterException(message: String?)
    case layerAlreadyExistsException(message: String?)
    case layerInaccessibleException(message: String?)
    case layerPartTooSmallException(message: String?)
    case layersNotFoundException(message: String?)
    case lifecyclePolicyNotFoundException(message: String?)
    case lifecyclePolicyPreviewInProgressException(message: String?)
    case lifecyclePolicyPreviewNotFoundException(message: String?)
    case limitExceededException(message: String?)
    case repositoryAlreadyExistsException(message: String?)
    case repositoryNotEmptyException(message: String?)
    case repositoryNotFoundException(message: String?)
    case repositoryPolicyNotFoundException(message: String?)
    case serverException(message: String?)
    case tooManyTagsException(message: String?)
    case uploadNotFoundException(message: String?)
}

extension ECRErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "EmptyUploadException":
            self = .emptyUploadException(message: message)
        case "ImageAlreadyExistsException":
            self = .imageAlreadyExistsException(message: message)
        case "ImageNotFoundException":
            self = .imageNotFoundException(message: message)
        case "InvalidLayerException":
            self = .invalidLayerException(message: message)
        case "InvalidLayerPartException":
            self = .invalidLayerPartException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "InvalidTagParameterException":
            self = .invalidTagParameterException(message: message)
        case "LayerAlreadyExistsException":
            self = .layerAlreadyExistsException(message: message)
        case "LayerInaccessibleException":
            self = .layerInaccessibleException(message: message)
        case "LayerPartTooSmallException":
            self = .layerPartTooSmallException(message: message)
        case "LayersNotFoundException":
            self = .layersNotFoundException(message: message)
        case "LifecyclePolicyNotFoundException":
            self = .lifecyclePolicyNotFoundException(message: message)
        case "LifecyclePolicyPreviewInProgressException":
            self = .lifecyclePolicyPreviewInProgressException(message: message)
        case "LifecyclePolicyPreviewNotFoundException":
            self = .lifecyclePolicyPreviewNotFoundException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "RepositoryAlreadyExistsException":
            self = .repositoryAlreadyExistsException(message: message)
        case "RepositoryNotEmptyException":
            self = .repositoryNotEmptyException(message: message)
        case "RepositoryNotFoundException":
            self = .repositoryNotFoundException(message: message)
        case "RepositoryPolicyNotFoundException":
            self = .repositoryPolicyNotFoundException(message: message)
        case "ServerException":
            self = .serverException(message: message)
        case "TooManyTagsException":
            self = .tooManyTagsException(message: message)
        case "UploadNotFoundException":
            self = .uploadNotFoundException(message: message)
        default:
            return nil
        }
    }
}
