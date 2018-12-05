// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
Amazon Cloud Directory Amazon Cloud Directory is a component of the AWS Directory Service that simplifies the development and management of cloud-scale web, mobile, and IoT applications. This guide describes the Cloud Directory operations that you can call programmatically and includes detailed information on data types and errors. For information about Cloud Directory features, see AWS Directory Service and the Amazon Cloud Directory Developer Guide.
*/
public struct CloudDirectory {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "clouddirectory",
            serviceProtocol: ServiceProtocol(type: .restjson),
            apiVersion: "2017-01-11",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [CloudDirectoryErrorType.self]
        )
    }

    ///  Returns a paginated list of all the outgoing TypedLinkSpecifier information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see Typed Links.
    public func listOutgoingTypedLinks(_ input: ListOutgoingTypedLinksRequest) throws -> ListOutgoingTypedLinksResponse {
        return try client.send(operation: "ListOutgoingTypedLinks", path: "/amazonclouddirectory/2017-01-11/typedlink/outgoing", httpMethod: "POST", input: input)
    }

    ///  Retrieves attributes that are associated with a typed link.
    public func getLinkAttributes(_ input: GetLinkAttributesRequest) throws -> GetLinkAttributesResponse {
        return try client.send(operation: "GetLinkAttributes", path: "/amazonclouddirectory/2017-01-11/typedlink/attributes/get", httpMethod: "POST", input: input)
    }

    ///  Deletes a directory. Only disabled directories can be deleted. A deleted directory cannot be undone. Exercise extreme caution when deleting directories.
    public func deleteDirectory(_ input: DeleteDirectoryRequest) throws -> DeleteDirectoryResponse {
        return try client.send(operation: "DeleteDirectory", path: "/amazonclouddirectory/2017-01-11/directory", httpMethod: "PUT", input: input)
    }

    ///  Lists the major version families of each published schema. If a major version ARN is provided as SchemaArn, the minor version revisions in that family are listed instead.
    public func listPublishedSchemaArns(_ input: ListPublishedSchemaArnsRequest) throws -> ListPublishedSchemaArnsResponse {
        return try client.send(operation: "ListPublishedSchemaArns", path: "/amazonclouddirectory/2017-01-11/schema/published", httpMethod: "POST", input: input)
    }

    ///  Deletes an object and its associated attributes. Only objects with no children and no parents can be deleted. The maximum number of attributes that can be deleted during an object deletion is 30. For more information, see Amazon Cloud Directory Limits.
    public func deleteObject(_ input: DeleteObjectRequest) throws -> DeleteObjectResponse {
        return try client.send(operation: "DeleteObject", path: "/amazonclouddirectory/2017-01-11/object/delete", httpMethod: "PUT", input: input)
    }

    ///  Copies the input published schema, at the specified version, into the Directory with the same name and version as that of the published schema.
    public func applySchema(_ input: ApplySchemaRequest) throws -> ApplySchemaResponse {
        return try client.send(operation: "ApplySchema", path: "/amazonclouddirectory/2017-01-11/schema/apply", httpMethod: "PUT", input: input)
    }

    ///  Retrieves a JSON representation of the schema. See JSON Schema Format for more information.
    public func getSchemaAsJson(_ input: GetSchemaAsJsonRequest) throws -> GetSchemaAsJsonResponse {
        return try client.send(operation: "GetSchemaAsJson", path: "/amazonclouddirectory/2017-01-11/schema/json", httpMethod: "POST", input: input)
    }

    ///  Retrieves metadata about a directory.
    public func getDirectory(_ input: GetDirectoryRequest) throws -> GetDirectoryResponse {
        return try client.send(operation: "GetDirectory", path: "/amazonclouddirectory/2017-01-11/directory/get", httpMethod: "POST", input: input)
    }

    ///  Detaches a typed link from a specified source and target object. For more information, see Typed Links.
    public func detachTypedLink(_ input: DetachTypedLinkRequest) throws {
        _ = try client.send(operation: "DetachTypedLink", path: "/amazonclouddirectory/2017-01-11/typedlink/detach", httpMethod: "PUT", input: input)
    }

    ///  Lists indices attached to the specified object.
    public func listAttachedIndices(_ input: ListAttachedIndicesRequest) throws -> ListAttachedIndicesResponse {
        return try client.send(operation: "ListAttachedIndices", path: "/amazonclouddirectory/2017-01-11/object/indices", httpMethod: "POST", input: input)
    }

    ///  Gets details of the Facet, such as facet name, attributes, Rules, or ObjectType. You can call this on all kinds of schema facets -- published, development, or applied.
    public func getFacet(_ input: GetFacetRequest) throws -> GetFacetResponse {
        return try client.send(operation: "GetFacet", path: "/amazonclouddirectory/2017-01-11/facet", httpMethod: "POST", input: input)
    }

    ///  Retrieves the names of facets that exist in a schema.
    public func listFacetNames(_ input: ListFacetNamesRequest) throws -> ListFacetNamesResponse {
        return try client.send(operation: "ListFacetNames", path: "/amazonclouddirectory/2017-01-11/facet/list", httpMethod: "POST", input: input)
    }

    ///  Does the following:   Adds new Attributes, Rules, or ObjectTypes.   Updates existing Attributes, Rules, or ObjectTypes.   Deletes existing Attributes, Rules, or ObjectTypes.  
    public func updateFacet(_ input: UpdateFacetRequest) throws -> UpdateFacetResponse {
        return try client.send(operation: "UpdateFacet", path: "/amazonclouddirectory/2017-01-11/facet", httpMethod: "PUT", input: input)
    }

    ///  Attaches a policy object to a regular object. An object can have a limited number of attached policies.
    public func attachPolicy(_ input: AttachPolicyRequest) throws -> AttachPolicyResponse {
        return try client.send(operation: "AttachPolicy", path: "/amazonclouddirectory/2017-01-11/policy/attach", httpMethod: "PUT", input: input)
    }

    ///  Retrieves each Amazon Resource Name (ARN) of schemas in the development state.
    public func listDevelopmentSchemaArns(_ input: ListDevelopmentSchemaArnsRequest) throws -> ListDevelopmentSchemaArnsResponse {
        return try client.send(operation: "ListDevelopmentSchemaArns", path: "/amazonclouddirectory/2017-01-11/schema/development", httpMethod: "POST", input: input)
    }

    ///  Retrieves metadata about an object.
    public func getObjectInformation(_ input: GetObjectInformationRequest) throws -> GetObjectInformationResponse {
        return try client.send(operation: "GetObjectInformation", path: "/amazonclouddirectory/2017-01-11/object/information", httpMethod: "POST", input: input)
    }

    ///  Lists directories created within an account.
    public func listDirectories(_ input: ListDirectoriesRequest) throws -> ListDirectoriesResponse {
        return try client.send(operation: "ListDirectories", path: "/amazonclouddirectory/2017-01-11/directory/list", httpMethod: "POST", input: input)
    }

    ///  Performs all the write operations in a batch. Either all the operations succeed or none.
    public func batchWrite(_ input: BatchWriteRequest) throws -> BatchWriteResponse {
        return try client.send(operation: "BatchWrite", path: "/amazonclouddirectory/2017-01-11/batchwrite", httpMethod: "PUT", input: input)
    }

    ///  Returns a paginated list of all the incoming TypedLinkSpecifier information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see Typed Links.
    public func listIncomingTypedLinks(_ input: ListIncomingTypedLinksRequest) throws -> ListIncomingTypedLinksResponse {
        return try client.send(operation: "ListIncomingTypedLinks", path: "/amazonclouddirectory/2017-01-11/typedlink/incoming", httpMethod: "POST", input: input)
    }

    ///  Returns a paginated list of TypedLink facet names for a particular schema. For more information, see Typed Links.
    public func listTypedLinkFacetNames(_ input: ListTypedLinkFacetNamesRequest) throws -> ListTypedLinkFacetNamesResponse {
        return try client.send(operation: "ListTypedLinkFacetNames", path: "/amazonclouddirectory/2017-01-11/typedlink/facet/list", httpMethod: "POST", input: input)
    }

    ///  Lists all attributes that are associated with an object. 
    public func listObjectAttributes(_ input: ListObjectAttributesRequest) throws -> ListObjectAttributesResponse {
        return try client.send(operation: "ListObjectAttributes", path: "/amazonclouddirectory/2017-01-11/object/attributes", httpMethod: "POST", input: input)
    }

    ///  Attaches an existing object to another object. An object can be accessed in two ways:   Using the path   Using ObjectIdentifier   
    public func attachObject(_ input: AttachObjectRequest) throws -> AttachObjectResponse {
        return try client.send(operation: "AttachObject", path: "/amazonclouddirectory/2017-01-11/object/attach", httpMethod: "PUT", input: input)
    }

    ///  Creates a TypedLinkFacet. For more information, see Typed Links.
    public func createTypedLinkFacet(_ input: CreateTypedLinkFacetRequest) throws -> CreateTypedLinkFacetResponse {
        return try client.send(operation: "CreateTypedLinkFacet", path: "/amazonclouddirectory/2017-01-11/typedlink/facet/create", httpMethod: "PUT", input: input)
    }

    ///  Updates the schema name with a new name. Only development schema names can be updated.
    public func updateSchema(_ input: UpdateSchemaRequest) throws -> UpdateSchemaResponse {
        return try client.send(operation: "UpdateSchema", path: "/amazonclouddirectory/2017-01-11/schema/update", httpMethod: "PUT", input: input)
    }

    ///  Updates a given object's attributes.
    public func updateObjectAttributes(_ input: UpdateObjectAttributesRequest) throws -> UpdateObjectAttributesResponse {
        return try client.send(operation: "UpdateObjectAttributes", path: "/amazonclouddirectory/2017-01-11/object/update", httpMethod: "PUT", input: input)
    }

    ///  Removes the specified facet from the specified object.
    public func removeFacetFromObject(_ input: RemoveFacetFromObjectRequest) throws -> RemoveFacetFromObjectResponse {
        return try client.send(operation: "RemoveFacetFromObject", path: "/amazonclouddirectory/2017-01-11/object/facets/delete", httpMethod: "PUT", input: input)
    }

    ///  Returns all of the ObjectIdentifiers to which a given policy is attached.
    public func listPolicyAttachments(_ input: ListPolicyAttachmentsRequest) throws -> ListPolicyAttachmentsResponse {
        return try client.send(operation: "ListPolicyAttachments", path: "/amazonclouddirectory/2017-01-11/policy/attachment", httpMethod: "POST", input: input)
    }

    ///  Lists parent objects that are associated with a given object in pagination fashion.
    public func listObjectParents(_ input: ListObjectParentsRequest) throws -> ListObjectParentsResponse {
        return try client.send(operation: "ListObjectParents", path: "/amazonclouddirectory/2017-01-11/object/parent", httpMethod: "POST", input: input)
    }

    ///  Returns a paginated list of child objects that are associated with a given object.
    public func listObjectChildren(_ input: ListObjectChildrenRequest) throws -> ListObjectChildrenResponse {
        return try client.send(operation: "ListObjectChildren", path: "/amazonclouddirectory/2017-01-11/object/children", httpMethod: "POST", input: input)
    }

    ///  Lists objects attached to the specified index.
    public func listIndex(_ input: ListIndexRequest) throws -> ListIndexResponse {
        return try client.send(operation: "ListIndex", path: "/amazonclouddirectory/2017-01-11/index/targets", httpMethod: "POST", input: input)
    }

    ///  Updates a TypedLinkFacet. For more information, see Typed Links.
    public func updateTypedLinkFacet(_ input: UpdateTypedLinkFacetRequest) throws -> UpdateTypedLinkFacetResponse {
        return try client.send(operation: "UpdateTypedLinkFacet", path: "/amazonclouddirectory/2017-01-11/typedlink/facet", httpMethod: "PUT", input: input)
    }

    ///  An API operation for removing tags from a resource.
    public func untagResource(_ input: UntagResourceRequest) throws -> UntagResourceResponse {
        return try client.send(operation: "UntagResource", path: "/amazonclouddirectory/2017-01-11/tags/remove", httpMethod: "PUT", input: input)
    }

    ///  Retrieves attributes attached to the facet.
    public func listFacetAttributes(_ input: ListFacetAttributesRequest) throws -> ListFacetAttributesResponse {
        return try client.send(operation: "ListFacetAttributes", path: "/amazonclouddirectory/2017-01-11/facet/attributes", httpMethod: "POST", input: input)
    }

    ///  Creates a new Facet in a schema. Facet creation is allowed only in development or applied schemas.
    public func createFacet(_ input: CreateFacetRequest) throws -> CreateFacetResponse {
        return try client.send(operation: "CreateFacet", path: "/amazonclouddirectory/2017-01-11/facet/create", httpMethod: "PUT", input: input)
    }

    ///  Returns policies attached to an object in pagination fashion.
    public func listObjectPolicies(_ input: ListObjectPoliciesRequest) throws -> ListObjectPoliciesResponse {
        return try client.send(operation: "ListObjectPolicies", path: "/amazonclouddirectory/2017-01-11/object/policy", httpMethod: "POST", input: input)
    }

    ///  Attaches a typed link to a specified source and target object. For more information, see Typed Links.
    public func attachTypedLink(_ input: AttachTypedLinkRequest) throws -> AttachTypedLinkResponse {
        return try client.send(operation: "AttachTypedLink", path: "/amazonclouddirectory/2017-01-11/typedlink/attach", httpMethod: "PUT", input: input)
    }

    ///  Allows a schema to be updated using JSON upload. Only available for development schemas. See JSON Schema Format for more information.
    public func putSchemaFromJson(_ input: PutSchemaFromJsonRequest) throws -> PutSchemaFromJsonResponse {
        return try client.send(operation: "PutSchemaFromJson", path: "/amazonclouddirectory/2017-01-11/schema/json", httpMethod: "PUT", input: input)
    }

    ///  Creates a new schema in a development state. A schema can exist in three phases:    Development: This is a mutable phase of the schema. All new schemas are in the development phase. Once the schema is finalized, it can be published.    Published: Published schemas are immutable and have a version associated with them.    Applied: Applied schemas are mutable in a way that allows you to add new schema facets. You can also add new, nonrequired attributes to existing schema facets. You can apply only published schemas to directories.   
    public func createSchema(_ input: CreateSchemaRequest) throws -> CreateSchemaResponse {
        return try client.send(operation: "CreateSchema", path: "/amazonclouddirectory/2017-01-11/schema/create", httpMethod: "PUT", input: input)
    }

    ///  Lists schema major versions applied to a directory. If SchemaArn is provided, lists the minor version.
    public func listAppliedSchemaArns(_ input: ListAppliedSchemaArnsRequest) throws -> ListAppliedSchemaArnsResponse {
        return try client.send(operation: "ListAppliedSchemaArns", path: "/amazonclouddirectory/2017-01-11/schema/applied", httpMethod: "POST", input: input)
    }

    ///  Adds a new Facet to an object. An object can have more than one facet applied on it.
    public func addFacetToObject(_ input: AddFacetToObjectRequest) throws -> AddFacetToObjectResponse {
        return try client.send(operation: "AddFacetToObject", path: "/amazonclouddirectory/2017-01-11/object/facets", httpMethod: "PUT", input: input)
    }

    ///  Returns the identity attribute order for a specific TypedLinkFacet. For more information, see Typed Links.
    public func getTypedLinkFacetInformation(_ input: GetTypedLinkFacetInformationRequest) throws -> GetTypedLinkFacetInformationResponse {
        return try client.send(operation: "GetTypedLinkFacetInformation", path: "/amazonclouddirectory/2017-01-11/typedlink/facet/get", httpMethod: "POST", input: input)
    }

    ///  Lists the major version families of each managed schema. If a major version ARN is provided as SchemaArn, the minor version revisions in that family are listed instead.
    public func listManagedSchemaArns(_ input: ListManagedSchemaArnsRequest) throws -> ListManagedSchemaArnsResponse {
        return try client.send(operation: "ListManagedSchemaArns", path: "/amazonclouddirectory/2017-01-11/schema/managed", httpMethod: "POST", input: input)
    }

    ///  Returns current applied schema version ARN, including the minor version in use.
    public func getAppliedSchemaVersion(_ input: GetAppliedSchemaVersionRequest) throws -> GetAppliedSchemaVersionResponse {
        return try client.send(operation: "GetAppliedSchemaVersion", path: "/amazonclouddirectory/2017-01-11/schema/getappliedschema", httpMethod: "POST", input: input)
    }

    ///  Updates a given typed link’s attributes. Attributes to be updated must not contribute to the typed link’s identity, as defined by its IdentityAttributeOrder.
    public func updateLinkAttributes(_ input: UpdateLinkAttributesRequest) throws -> UpdateLinkAttributesResponse {
        return try client.send(operation: "UpdateLinkAttributes", path: "/amazonclouddirectory/2017-01-11/typedlink/attributes/update", httpMethod: "POST", input: input)
    }

    ///  Deletes a given Facet. All attributes and Rules that are associated with the facet will be deleted. Only development schema facets are allowed deletion.
    public func deleteFacet(_ input: DeleteFacetRequest) throws -> DeleteFacetResponse {
        return try client.send(operation: "DeleteFacet", path: "/amazonclouddirectory/2017-01-11/facet/delete", httpMethod: "PUT", input: input)
    }

    ///  Returns a paginated list of all attribute definitions for a particular TypedLinkFacet. For more information, see Typed Links.
    public func listTypedLinkFacetAttributes(_ input: ListTypedLinkFacetAttributesRequest) throws -> ListTypedLinkFacetAttributesResponse {
        return try client.send(operation: "ListTypedLinkFacetAttributes", path: "/amazonclouddirectory/2017-01-11/typedlink/facet/attributes", httpMethod: "POST", input: input)
    }

    ///  Returns tags for a resource. Tagging is currently supported only for directories with a limit of 50 tags per directory. All 50 tags are returned for a given directory with this API call.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) throws -> ListTagsForResourceResponse {
        return try client.send(operation: "ListTagsForResource", path: "/amazonclouddirectory/2017-01-11/tags", httpMethod: "POST", input: input)
    }

    ///  Disables the specified directory. Disabled directories cannot be read or written to. Only enabled directories can be disabled. Disabled directories may be reenabled.
    public func disableDirectory(_ input: DisableDirectoryRequest) throws -> DisableDirectoryResponse {
        return try client.send(operation: "DisableDirectory", path: "/amazonclouddirectory/2017-01-11/directory/disable", httpMethod: "PUT", input: input)
    }

    ///  Attaches the specified object to the specified index.
    public func attachToIndex(_ input: AttachToIndexRequest) throws -> AttachToIndexResponse {
        return try client.send(operation: "AttachToIndex", path: "/amazonclouddirectory/2017-01-11/index/attach", httpMethod: "PUT", input: input)
    }

    ///  Lists all policies from the root of the Directory to the object specified. If there are no policies present, an empty list is returned. If policies are present, and if some objects don't have the policies attached, it returns the ObjectIdentifier for such objects. If policies are present, it returns ObjectIdentifier, policyId, and policyType. Paths that don't lead to the root from the target object are ignored. For more information, see Policies.
    public func lookupPolicy(_ input: LookupPolicyRequest) throws -> LookupPolicyResponse {
        return try client.send(operation: "LookupPolicy", path: "/amazonclouddirectory/2017-01-11/policy/lookup", httpMethod: "POST", input: input)
    }

    ///  Creates an index object. See Indexing and search for more information.
    public func createIndex(_ input: CreateIndexRequest) throws -> CreateIndexResponse {
        return try client.send(operation: "CreateIndex", path: "/amazonclouddirectory/2017-01-11/index", httpMethod: "PUT", input: input)
    }

    ///  Deletes a TypedLinkFacet. For more information, see Typed Links.
    public func deleteTypedLinkFacet(_ input: DeleteTypedLinkFacetRequest) throws -> DeleteTypedLinkFacetResponse {
        return try client.send(operation: "DeleteTypedLinkFacet", path: "/amazonclouddirectory/2017-01-11/typedlink/facet/delete", httpMethod: "PUT", input: input)
    }

    ///  Detaches a given object from the parent object. The object that is to be detached from the parent is specified by the link name.
    public func detachObject(_ input: DetachObjectRequest) throws -> DetachObjectResponse {
        return try client.send(operation: "DetachObject", path: "/amazonclouddirectory/2017-01-11/object/detach", httpMethod: "PUT", input: input)
    }

    ///  Creates an object in a Directory. Additionally attaches the object to a parent, if a parent reference and LinkName is specified. An object is simply a collection of Facet attributes. You can also use this API call to create a policy object, if the facet from which you create the object is a policy facet. 
    public func createObject(_ input: CreateObjectRequest) throws -> CreateObjectResponse {
        return try client.send(operation: "CreateObject", path: "/amazonclouddirectory/2017-01-11/object", httpMethod: "PUT", input: input)
    }

    ///  Upgrades a single directory in-place using the PublishedSchemaArn with schema updates found in MinorVersion. Backwards-compatible minor version upgrades are instantaneously available for readers on all objects in the directory. Note: This is a synchronous API call and upgrades only one schema on a given directory per call. To upgrade multiple directories from one schema, you would need to call this API on each directory.
    public func upgradeAppliedSchema(_ input: UpgradeAppliedSchemaRequest) throws -> UpgradeAppliedSchemaResponse {
        return try client.send(operation: "UpgradeAppliedSchema", path: "/amazonclouddirectory/2017-01-11/schema/upgradeapplied", httpMethod: "PUT", input: input)
    }

    ///  Publishes a development schema with a major version and a recommended minor version.
    public func publishSchema(_ input: PublishSchemaRequest) throws -> PublishSchemaResponse {
        return try client.send(operation: "PublishSchema", path: "/amazonclouddirectory/2017-01-11/schema/publish", httpMethod: "PUT", input: input)
    }

    ///  Retrieves attributes within a facet that are associated with an object.
    public func getObjectAttributes(_ input: GetObjectAttributesRequest) throws -> GetObjectAttributesResponse {
        return try client.send(operation: "GetObjectAttributes", path: "/amazonclouddirectory/2017-01-11/object/attributes/get", httpMethod: "POST", input: input)
    }

    ///  Creates a Directory by copying the published schema into the directory. A directory cannot be created without a schema. You can also quickly create a directory using a managed schema, called the QuickStartSchema. For more information, see Managed Schema in the Amazon Cloud Directory Developer Guide.
    public func createDirectory(_ input: CreateDirectoryRequest) throws -> CreateDirectoryResponse {
        return try client.send(operation: "CreateDirectory", path: "/amazonclouddirectory/2017-01-11/directory/create", httpMethod: "PUT", input: input)
    }

    ///  Detaches the specified object from the specified index.
    public func detachFromIndex(_ input: DetachFromIndexRequest) throws -> DetachFromIndexResponse {
        return try client.send(operation: "DetachFromIndex", path: "/amazonclouddirectory/2017-01-11/index/detach", httpMethod: "PUT", input: input)
    }

    ///  Upgrades a published schema under a new minor version revision using the current contents of DevelopmentSchemaArn.
    public func upgradePublishedSchema(_ input: UpgradePublishedSchemaRequest) throws -> UpgradePublishedSchemaResponse {
        return try client.send(operation: "UpgradePublishedSchema", path: "/amazonclouddirectory/2017-01-11/schema/upgradepublished", httpMethod: "PUT", input: input)
    }

    ///  Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects. For more information about objects, see Directory Structure. Use this API to evaluate all parents for an object. The call returns all objects from the root of the directory up to the requested object. The API returns the number of paths based on user-defined MaxResults, in case there are multiple paths to the parent. The order of the paths and nodes returned is consistent among multiple API calls unless the objects are deleted or moved. Paths not leading to the directory root are ignored from the target object.
    public func listObjectParentPaths(_ input: ListObjectParentPathsRequest) throws -> ListObjectParentPathsResponse {
        return try client.send(operation: "ListObjectParentPaths", path: "/amazonclouddirectory/2017-01-11/object/parentpaths", httpMethod: "POST", input: input)
    }

    ///  Detaches a policy from an object.
    public func detachPolicy(_ input: DetachPolicyRequest) throws -> DetachPolicyResponse {
        return try client.send(operation: "DetachPolicy", path: "/amazonclouddirectory/2017-01-11/policy/detach", httpMethod: "PUT", input: input)
    }

    ///  Enables the specified directory. Only disabled directories can be enabled. Once enabled, the directory can then be read and written to.
    public func enableDirectory(_ input: EnableDirectoryRequest) throws -> EnableDirectoryResponse {
        return try client.send(operation: "EnableDirectory", path: "/amazonclouddirectory/2017-01-11/directory/enable", httpMethod: "PUT", input: input)
    }

    ///  Deletes a given schema. Schemas in a development and published state can only be deleted. 
    public func deleteSchema(_ input: DeleteSchemaRequest) throws -> DeleteSchemaResponse {
        return try client.send(operation: "DeleteSchema", path: "/amazonclouddirectory/2017-01-11/schema", httpMethod: "PUT", input: input)
    }

    ///  An API operation for adding tags to a resource.
    public func tagResource(_ input: TagResourceRequest) throws -> TagResourceResponse {
        return try client.send(operation: "TagResource", path: "/amazonclouddirectory/2017-01-11/tags/add", httpMethod: "PUT", input: input)
    }

    ///  Performs all the read operations in a batch. 
    public func batchRead(_ input: BatchReadRequest) throws -> BatchReadResponse {
        return try client.send(operation: "BatchRead", path: "/amazonclouddirectory/2017-01-11/batchread", httpMethod: "POST", input: input)
    }


}