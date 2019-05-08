// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for CloudDirectory
public enum CloudDirectoryErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case batchWriteException(message: String?)
    case cannotListParentOfRootException(message: String?)
    case directoryAlreadyExistsException(message: String?)
    case directoryDeletedException(message: String?)
    case directoryNotDisabledException(message: String?)
    case directoryNotEnabledException(message: String?)
    case facetAlreadyExistsException(message: String?)
    case facetInUseException(message: String?)
    case facetNotFoundException(message: String?)
    case facetValidationException(message: String?)
    case incompatibleSchemaException(message: String?)
    case indexedAttributeMissingException(message: String?)
    case internalServiceException(message: String?)
    case invalidArnException(message: String?)
    case invalidAttachmentException(message: String?)
    case invalidFacetUpdateException(message: String?)
    case invalidNextTokenException(message: String?)
    case invalidRuleException(message: String?)
    case invalidSchemaDocException(message: String?)
    case invalidTaggingRequestException(message: String?)
    case limitExceededException(message: String?)
    case linkNameAlreadyInUseException(message: String?)
    case notIndexException(message: String?)
    case notNodeException(message: String?)
    case notPolicyException(message: String?)
    case objectAlreadyDetachedException(message: String?)
    case objectNotDetachedException(message: String?)
    case resourceNotFoundException(message: String?)
    case retryableConflictException(message: String?)
    case schemaAlreadyExistsException(message: String?)
    case schemaAlreadyPublishedException(message: String?)
    case stillContainsLinksException(message: String?)
    case unsupportedIndexTypeException(message: String?)
    case validationException(message: String?)
}

extension CloudDirectoryErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "BatchWriteException":
            self = .batchWriteException(message: message)
        case "CannotListParentOfRootException":
            self = .cannotListParentOfRootException(message: message)
        case "DirectoryAlreadyExistsException":
            self = .directoryAlreadyExistsException(message: message)
        case "DirectoryDeletedException":
            self = .directoryDeletedException(message: message)
        case "DirectoryNotDisabledException":
            self = .directoryNotDisabledException(message: message)
        case "DirectoryNotEnabledException":
            self = .directoryNotEnabledException(message: message)
        case "FacetAlreadyExistsException":
            self = .facetAlreadyExistsException(message: message)
        case "FacetInUseException":
            self = .facetInUseException(message: message)
        case "FacetNotFoundException":
            self = .facetNotFoundException(message: message)
        case "FacetValidationException":
            self = .facetValidationException(message: message)
        case "IncompatibleSchemaException":
            self = .incompatibleSchemaException(message: message)
        case "IndexedAttributeMissingException":
            self = .indexedAttributeMissingException(message: message)
        case "InternalServiceException":
            self = .internalServiceException(message: message)
        case "InvalidArnException":
            self = .invalidArnException(message: message)
        case "InvalidAttachmentException":
            self = .invalidAttachmentException(message: message)
        case "InvalidFacetUpdateException":
            self = .invalidFacetUpdateException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "InvalidRuleException":
            self = .invalidRuleException(message: message)
        case "InvalidSchemaDocException":
            self = .invalidSchemaDocException(message: message)
        case "InvalidTaggingRequestException":
            self = .invalidTaggingRequestException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "LinkNameAlreadyInUseException":
            self = .linkNameAlreadyInUseException(message: message)
        case "NotIndexException":
            self = .notIndexException(message: message)
        case "NotNodeException":
            self = .notNodeException(message: message)
        case "NotPolicyException":
            self = .notPolicyException(message: message)
        case "ObjectAlreadyDetachedException":
            self = .objectAlreadyDetachedException(message: message)
        case "ObjectNotDetachedException":
            self = .objectNotDetachedException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "RetryableConflictException":
            self = .retryableConflictException(message: message)
        case "SchemaAlreadyExistsException":
            self = .schemaAlreadyExistsException(message: message)
        case "SchemaAlreadyPublishedException":
            self = .schemaAlreadyPublishedException(message: message)
        case "StillContainsLinksException":
            self = .stillContainsLinksException(message: message)
        case "UnsupportedIndexTypeException":
            self = .unsupportedIndexTypeException(message: message)
        case "ValidationException":
            self = .validationException(message: message)
        default:
            return nil
        }
    }
}