// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for CloudFront
public enum CloudFrontErrorType: AWSErrorType {
    case publicKeyAlreadyExists(message: String?)
    case invalidArgument(message: String?)
    case tooManyPublicKeys(message: String?)
    case accessDenied(message: String?)
    case invalidTagging(message: String?)
    case noSuchResource(message: String?)
    case noSuchCloudFrontOriginAccessIdentity(message: String?)
    case fieldLevelEncryptionProfileAlreadyExists(message: String?)
    case illegalUpdate(message: String?)
    case inconsistentQuantities(message: String?)
    case invalidIfMatchVersion(message: String?)
    case noSuchPublicKey(message: String?)
    case noSuchFieldLevelEncryptionProfile(message: String?)
    case preconditionFailed(message: String?)
    case fieldLevelEncryptionProfileSizeExceeded(message: String?)
    case tooManyFieldLevelEncryptionEncryptionEntities(message: String?)
    case tooManyFieldLevelEncryptionFieldPatterns(message: String?)
    case missingBody(message: String?)
    case cNAMEAlreadyExists(message: String?)
    case noSuchDistribution(message: String?)
    case tooManyDistributionCNAMEs(message: String?)
    case invalidDefaultRootObject(message: String?)
    case invalidRelativePath(message: String?)
    case invalidErrorCode(message: String?)
    case invalidResponseCode(message: String?)
    case invalidOriginAccessIdentity(message: String?)
    case tooManyTrustedSigners(message: String?)
    case trustedSignerDoesNotExist(message: String?)
    case invalidViewerCertificate(message: String?)
    case invalidMinimumProtocolVersion(message: String?)
    case invalidRequiredProtocol(message: String?)
    case noSuchOrigin(message: String?)
    case tooManyOrigins(message: String?)
    case tooManyOriginGroupsPerDistribution(message: String?)
    case tooManyCacheBehaviors(message: String?)
    case tooManyCookieNamesInWhiteList(message: String?)
    case invalidForwardCookies(message: String?)
    case tooManyHeadersInForwardedValues(message: String?)
    case invalidHeadersForS3Origin(message: String?)
    case tooManyCertificates(message: String?)
    case invalidLocationCode(message: String?)
    case invalidGeoRestrictionParameter(message: String?)
    case invalidTTLOrder(message: String?)
    case invalidWebACLId(message: String?)
    case tooManyOriginCustomHeaders(message: String?)
    case tooManyQueryStringParameters(message: String?)
    case invalidQueryStringParameters(message: String?)
    case tooManyDistributionsWithLambdaAssociations(message: String?)
    case tooManyLambdaFunctionAssociations(message: String?)
    case invalidLambdaFunctionAssociation(message: String?)
    case invalidOriginReadTimeout(message: String?)
    case invalidOriginKeepaliveTimeout(message: String?)
    case noSuchFieldLevelEncryptionConfig(message: String?)
    case illegalFieldLevelEncryptionConfigAssociationWithCacheBehavior(message: String?)
    case tooManyDistributionsAssociatedToFieldLevelEncryptionConfig(message: String?)
    case publicKeyInUse(message: String?)
    case tooManyFieldLevelEncryptionQueryArgProfiles(message: String?)
    case tooManyFieldLevelEncryptionContentTypeProfiles(message: String?)
    case queryArgProfileEmpty(message: String?)
    case distributionAlreadyExists(message: String?)
    case invalidOrigin(message: String?)
    case tooManyDistributions(message: String?)
    case invalidProtocolSettings(message: String?)
    case streamingDistributionAlreadyExists(message: String?)
    case tooManyStreamingDistributionCNAMEs(message: String?)
    case tooManyStreamingDistributions(message: String?)
    case fieldLevelEncryptionConfigInUse(message: String?)
    case tooManyFieldLevelEncryptionProfiles(message: String?)
    case distributionNotDisabled(message: String?)
    case cannotChangeImmutablePublicKeyFields(message: String?)
    case noSuchInvalidation(message: String?)
    case cloudFrontOriginAccessIdentityInUse(message: String?)
    case batchTooLarge(message: String?)
    case tooManyInvalidationsInProgress(message: String?)
    case streamingDistributionNotDisabled(message: String?)
    case noSuchStreamingDistribution(message: String?)
    case fieldLevelEncryptionProfileInUse(message: String?)
    case cloudFrontOriginAccessIdentityAlreadyExists(message: String?)
    case tooManyCloudFrontOriginAccessIdentities(message: String?)
    case fieldLevelEncryptionConfigAlreadyExists(message: String?)
    case tooManyFieldLevelEncryptionConfigs(message: String?)
}

extension CloudFrontErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "PublicKeyAlreadyExists":
            self = .publicKeyAlreadyExists(message: message)
        case "InvalidArgument":
            self = .invalidArgument(message: message)
        case "TooManyPublicKeys":
            self = .tooManyPublicKeys(message: message)
        case "AccessDenied":
            self = .accessDenied(message: message)
        case "InvalidTagging":
            self = .invalidTagging(message: message)
        case "NoSuchResource":
            self = .noSuchResource(message: message)
        case "NoSuchCloudFrontOriginAccessIdentity":
            self = .noSuchCloudFrontOriginAccessIdentity(message: message)
        case "FieldLevelEncryptionProfileAlreadyExists":
            self = .fieldLevelEncryptionProfileAlreadyExists(message: message)
        case "IllegalUpdate":
            self = .illegalUpdate(message: message)
        case "InconsistentQuantities":
            self = .inconsistentQuantities(message: message)
        case "InvalidIfMatchVersion":
            self = .invalidIfMatchVersion(message: message)
        case "NoSuchPublicKey":
            self = .noSuchPublicKey(message: message)
        case "NoSuchFieldLevelEncryptionProfile":
            self = .noSuchFieldLevelEncryptionProfile(message: message)
        case "PreconditionFailed":
            self = .preconditionFailed(message: message)
        case "FieldLevelEncryptionProfileSizeExceeded":
            self = .fieldLevelEncryptionProfileSizeExceeded(message: message)
        case "TooManyFieldLevelEncryptionEncryptionEntities":
            self = .tooManyFieldLevelEncryptionEncryptionEntities(message: message)
        case "TooManyFieldLevelEncryptionFieldPatterns":
            self = .tooManyFieldLevelEncryptionFieldPatterns(message: message)
        case "MissingBody":
            self = .missingBody(message: message)
        case "CNAMEAlreadyExists":
            self = .cNAMEAlreadyExists(message: message)
        case "NoSuchDistribution":
            self = .noSuchDistribution(message: message)
        case "TooManyDistributionCNAMEs":
            self = .tooManyDistributionCNAMEs(message: message)
        case "InvalidDefaultRootObject":
            self = .invalidDefaultRootObject(message: message)
        case "InvalidRelativePath":
            self = .invalidRelativePath(message: message)
        case "InvalidErrorCode":
            self = .invalidErrorCode(message: message)
        case "InvalidResponseCode":
            self = .invalidResponseCode(message: message)
        case "InvalidOriginAccessIdentity":
            self = .invalidOriginAccessIdentity(message: message)
        case "TooManyTrustedSigners":
            self = .tooManyTrustedSigners(message: message)
        case "TrustedSignerDoesNotExist":
            self = .trustedSignerDoesNotExist(message: message)
        case "InvalidViewerCertificate":
            self = .invalidViewerCertificate(message: message)
        case "InvalidMinimumProtocolVersion":
            self = .invalidMinimumProtocolVersion(message: message)
        case "InvalidRequiredProtocol":
            self = .invalidRequiredProtocol(message: message)
        case "NoSuchOrigin":
            self = .noSuchOrigin(message: message)
        case "TooManyOrigins":
            self = .tooManyOrigins(message: message)
        case "TooManyOriginGroupsPerDistribution":
            self = .tooManyOriginGroupsPerDistribution(message: message)
        case "TooManyCacheBehaviors":
            self = .tooManyCacheBehaviors(message: message)
        case "TooManyCookieNamesInWhiteList":
            self = .tooManyCookieNamesInWhiteList(message: message)
        case "InvalidForwardCookies":
            self = .invalidForwardCookies(message: message)
        case "TooManyHeadersInForwardedValues":
            self = .tooManyHeadersInForwardedValues(message: message)
        case "InvalidHeadersForS3Origin":
            self = .invalidHeadersForS3Origin(message: message)
        case "TooManyCertificates":
            self = .tooManyCertificates(message: message)
        case "InvalidLocationCode":
            self = .invalidLocationCode(message: message)
        case "InvalidGeoRestrictionParameter":
            self = .invalidGeoRestrictionParameter(message: message)
        case "InvalidTTLOrder":
            self = .invalidTTLOrder(message: message)
        case "InvalidWebACLId":
            self = .invalidWebACLId(message: message)
        case "TooManyOriginCustomHeaders":
            self = .tooManyOriginCustomHeaders(message: message)
        case "TooManyQueryStringParameters":
            self = .tooManyQueryStringParameters(message: message)
        case "InvalidQueryStringParameters":
            self = .invalidQueryStringParameters(message: message)
        case "TooManyDistributionsWithLambdaAssociations":
            self = .tooManyDistributionsWithLambdaAssociations(message: message)
        case "TooManyLambdaFunctionAssociations":
            self = .tooManyLambdaFunctionAssociations(message: message)
        case "InvalidLambdaFunctionAssociation":
            self = .invalidLambdaFunctionAssociation(message: message)
        case "InvalidOriginReadTimeout":
            self = .invalidOriginReadTimeout(message: message)
        case "InvalidOriginKeepaliveTimeout":
            self = .invalidOriginKeepaliveTimeout(message: message)
        case "NoSuchFieldLevelEncryptionConfig":
            self = .noSuchFieldLevelEncryptionConfig(message: message)
        case "IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior":
            self = .illegalFieldLevelEncryptionConfigAssociationWithCacheBehavior(message: message)
        case "TooManyDistributionsAssociatedToFieldLevelEncryptionConfig":
            self = .tooManyDistributionsAssociatedToFieldLevelEncryptionConfig(message: message)
        case "PublicKeyInUse":
            self = .publicKeyInUse(message: message)
        case "TooManyFieldLevelEncryptionQueryArgProfiles":
            self = .tooManyFieldLevelEncryptionQueryArgProfiles(message: message)
        case "TooManyFieldLevelEncryptionContentTypeProfiles":
            self = .tooManyFieldLevelEncryptionContentTypeProfiles(message: message)
        case "QueryArgProfileEmpty":
            self = .queryArgProfileEmpty(message: message)
        case "DistributionAlreadyExists":
            self = .distributionAlreadyExists(message: message)
        case "InvalidOrigin":
            self = .invalidOrigin(message: message)
        case "TooManyDistributions":
            self = .tooManyDistributions(message: message)
        case "InvalidProtocolSettings":
            self = .invalidProtocolSettings(message: message)
        case "StreamingDistributionAlreadyExists":
            self = .streamingDistributionAlreadyExists(message: message)
        case "TooManyStreamingDistributionCNAMEs":
            self = .tooManyStreamingDistributionCNAMEs(message: message)
        case "TooManyStreamingDistributions":
            self = .tooManyStreamingDistributions(message: message)
        case "FieldLevelEncryptionConfigInUse":
            self = .fieldLevelEncryptionConfigInUse(message: message)
        case "TooManyFieldLevelEncryptionProfiles":
            self = .tooManyFieldLevelEncryptionProfiles(message: message)
        case "DistributionNotDisabled":
            self = .distributionNotDisabled(message: message)
        case "CannotChangeImmutablePublicKeyFields":
            self = .cannotChangeImmutablePublicKeyFields(message: message)
        case "NoSuchInvalidation":
            self = .noSuchInvalidation(message: message)
        case "CloudFrontOriginAccessIdentityInUse":
            self = .cloudFrontOriginAccessIdentityInUse(message: message)
        case "BatchTooLarge":
            self = .batchTooLarge(message: message)
        case "TooManyInvalidationsInProgress":
            self = .tooManyInvalidationsInProgress(message: message)
        case "StreamingDistributionNotDisabled":
            self = .streamingDistributionNotDisabled(message: message)
        case "NoSuchStreamingDistribution":
            self = .noSuchStreamingDistribution(message: message)
        case "FieldLevelEncryptionProfileInUse":
            self = .fieldLevelEncryptionProfileInUse(message: message)
        case "CloudFrontOriginAccessIdentityAlreadyExists":
            self = .cloudFrontOriginAccessIdentityAlreadyExists(message: message)
        case "TooManyCloudFrontOriginAccessIdentities":
            self = .tooManyCloudFrontOriginAccessIdentities(message: message)
        case "FieldLevelEncryptionConfigAlreadyExists":
            self = .fieldLevelEncryptionConfigAlreadyExists(message: message)
        case "TooManyFieldLevelEncryptionConfigs":
            self = .tooManyFieldLevelEncryptionConfigs(message: message)
        default:
            return nil
        }
    }
}