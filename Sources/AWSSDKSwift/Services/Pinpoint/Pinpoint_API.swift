// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**

*/
public struct Pinpoint {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "pinpoint",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2016-12-01",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [PinpointErrorType.self]
        )
    }

    ///  Creates or updates an app.
    public func createApp(_ input: CreateAppRequest) throws -> Future<CreateAppResponse> {
        return try client.send(operation: "CreateApp", path: "/v1/apps", httpMethod: "POST", input: input)
    }

    ///  Creates or updates a campaign.
    public func createCampaign(_ input: CreateCampaignRequest) throws -> Future<CreateCampaignResponse> {
        return try client.send(operation: "CreateCampaign", path: "/v1/apps/{application-id}/campaigns", httpMethod: "POST", input: input)
    }

    ///  Creates an export job.
    public func createExportJob(_ input: CreateExportJobRequest) throws -> Future<CreateExportJobResponse> {
        return try client.send(operation: "CreateExportJob", path: "/v1/apps/{application-id}/jobs/export", httpMethod: "POST", input: input)
    }

    ///  Creates or updates an import job.
    public func createImportJob(_ input: CreateImportJobRequest) throws -> Future<CreateImportJobResponse> {
        return try client.send(operation: "CreateImportJob", path: "/v1/apps/{application-id}/jobs/import", httpMethod: "POST", input: input)
    }

    ///  Used to create or update a segment.
    public func createSegment(_ input: CreateSegmentRequest) throws -> Future<CreateSegmentResponse> {
        return try client.send(operation: "CreateSegment", path: "/v1/apps/{application-id}/segments", httpMethod: "POST", input: input)
    }

    ///  Delete an ADM channel.
    public func deleteAdmChannel(_ input: DeleteAdmChannelRequest) throws -> Future<DeleteAdmChannelResponse> {
        return try client.send(operation: "DeleteAdmChannel", path: "/v1/apps/{application-id}/channels/adm", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the APNs channel for an app.
    public func deleteApnsChannel(_ input: DeleteApnsChannelRequest) throws -> Future<DeleteApnsChannelResponse> {
        return try client.send(operation: "DeleteApnsChannel", path: "/v1/apps/{application-id}/channels/apns", httpMethod: "DELETE", input: input)
    }

    ///  Delete an APNS sandbox channel.
    public func deleteApnsSandboxChannel(_ input: DeleteApnsSandboxChannelRequest) throws -> Future<DeleteApnsSandboxChannelResponse> {
        return try client.send(operation: "DeleteApnsSandboxChannel", path: "/v1/apps/{application-id}/channels/apns_sandbox", httpMethod: "DELETE", input: input)
    }

    ///  Delete an APNS VoIP channel
    public func deleteApnsVoipChannel(_ input: DeleteApnsVoipChannelRequest) throws -> Future<DeleteApnsVoipChannelResponse> {
        return try client.send(operation: "DeleteApnsVoipChannel", path: "/v1/apps/{application-id}/channels/apns_voip", httpMethod: "DELETE", input: input)
    }

    ///  Delete an APNS VoIP sandbox channel
    public func deleteApnsVoipSandboxChannel(_ input: DeleteApnsVoipSandboxChannelRequest) throws -> Future<DeleteApnsVoipSandboxChannelResponse> {
        return try client.send(operation: "DeleteApnsVoipSandboxChannel", path: "/v1/apps/{application-id}/channels/apns_voip_sandbox", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an app.
    public func deleteApp(_ input: DeleteAppRequest) throws -> Future<DeleteAppResponse> {
        return try client.send(operation: "DeleteApp", path: "/v1/apps/{application-id}", httpMethod: "DELETE", input: input)
    }

    ///  Delete a BAIDU GCM channel
    public func deleteBaiduChannel(_ input: DeleteBaiduChannelRequest) throws -> Future<DeleteBaiduChannelResponse> {
        return try client.send(operation: "DeleteBaiduChannel", path: "/v1/apps/{application-id}/channels/baidu", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a campaign.
    public func deleteCampaign(_ input: DeleteCampaignRequest) throws -> Future<DeleteCampaignResponse> {
        return try client.send(operation: "DeleteCampaign", path: "/v1/apps/{application-id}/campaigns/{campaign-id}", httpMethod: "DELETE", input: input)
    }

    ///  Delete an email channel.
    public func deleteEmailChannel(_ input: DeleteEmailChannelRequest) throws -> Future<DeleteEmailChannelResponse> {
        return try client.send(operation: "DeleteEmailChannel", path: "/v1/apps/{application-id}/channels/email", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an endpoint.
    public func deleteEndpoint(_ input: DeleteEndpointRequest) throws -> Future<DeleteEndpointResponse> {
        return try client.send(operation: "DeleteEndpoint", path: "/v1/apps/{application-id}/endpoints/{endpoint-id}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the event stream for an app.
    public func deleteEventStream(_ input: DeleteEventStreamRequest) throws -> Future<DeleteEventStreamResponse> {
        return try client.send(operation: "DeleteEventStream", path: "/v1/apps/{application-id}/eventstream", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the GCM channel for an app.
    public func deleteGcmChannel(_ input: DeleteGcmChannelRequest) throws -> Future<DeleteGcmChannelResponse> {
        return try client.send(operation: "DeleteGcmChannel", path: "/v1/apps/{application-id}/channels/gcm", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a segment.
    public func deleteSegment(_ input: DeleteSegmentRequest) throws -> Future<DeleteSegmentResponse> {
        return try client.send(operation: "DeleteSegment", path: "/v1/apps/{application-id}/segments/{segment-id}", httpMethod: "DELETE", input: input)
    }

    ///  Delete an SMS channel.
    public func deleteSmsChannel(_ input: DeleteSmsChannelRequest) throws -> Future<DeleteSmsChannelResponse> {
        return try client.send(operation: "DeleteSmsChannel", path: "/v1/apps/{application-id}/channels/sms", httpMethod: "DELETE", input: input)
    }

    ///  Deletes endpoints that are associated with a User ID.
    public func deleteUserEndpoints(_ input: DeleteUserEndpointsRequest) throws -> Future<DeleteUserEndpointsResponse> {
        return try client.send(operation: "DeleteUserEndpoints", path: "/v1/apps/{application-id}/users/{user-id}", httpMethod: "DELETE", input: input)
    }

    ///  Delete an Voice channel
    public func deleteVoiceChannel(_ input: DeleteVoiceChannelRequest) throws -> Future<DeleteVoiceChannelResponse> {
        return try client.send(operation: "DeleteVoiceChannel", path: "/v1/apps/{application-id}/channels/voice", httpMethod: "DELETE", input: input)
    }

    ///  Get an ADM channel.
    public func getAdmChannel(_ input: GetAdmChannelRequest) throws -> Future<GetAdmChannelResponse> {
        return try client.send(operation: "GetAdmChannel", path: "/v1/apps/{application-id}/channels/adm", httpMethod: "GET", input: input)
    }

    ///  Returns information about the APNs channel for an app.
    public func getApnsChannel(_ input: GetApnsChannelRequest) throws -> Future<GetApnsChannelResponse> {
        return try client.send(operation: "GetApnsChannel", path: "/v1/apps/{application-id}/channels/apns", httpMethod: "GET", input: input)
    }

    ///  Get an APNS sandbox channel.
    public func getApnsSandboxChannel(_ input: GetApnsSandboxChannelRequest) throws -> Future<GetApnsSandboxChannelResponse> {
        return try client.send(operation: "GetApnsSandboxChannel", path: "/v1/apps/{application-id}/channels/apns_sandbox", httpMethod: "GET", input: input)
    }

    ///  Get an APNS VoIP channel
    public func getApnsVoipChannel(_ input: GetApnsVoipChannelRequest) throws -> Future<GetApnsVoipChannelResponse> {
        return try client.send(operation: "GetApnsVoipChannel", path: "/v1/apps/{application-id}/channels/apns_voip", httpMethod: "GET", input: input)
    }

    ///  Get an APNS VoIPSandbox channel
    public func getApnsVoipSandboxChannel(_ input: GetApnsVoipSandboxChannelRequest) throws -> Future<GetApnsVoipSandboxChannelResponse> {
        return try client.send(operation: "GetApnsVoipSandboxChannel", path: "/v1/apps/{application-id}/channels/apns_voip_sandbox", httpMethod: "GET", input: input)
    }

    ///  Returns information about an app.
    public func getApp(_ input: GetAppRequest) throws -> Future<GetAppResponse> {
        return try client.send(operation: "GetApp", path: "/v1/apps/{application-id}", httpMethod: "GET", input: input)
    }

    ///  Used to request the settings for an app.
    public func getApplicationSettings(_ input: GetApplicationSettingsRequest) throws -> Future<GetApplicationSettingsResponse> {
        return try client.send(operation: "GetApplicationSettings", path: "/v1/apps/{application-id}/settings", httpMethod: "GET", input: input)
    }

    ///  Returns information about your apps.
    public func getApps(_ input: GetAppsRequest) throws -> Future<GetAppsResponse> {
        return try client.send(operation: "GetApps", path: "/v1/apps", httpMethod: "GET", input: input)
    }

    ///  Get a BAIDU GCM channel
    public func getBaiduChannel(_ input: GetBaiduChannelRequest) throws -> Future<GetBaiduChannelResponse> {
        return try client.send(operation: "GetBaiduChannel", path: "/v1/apps/{application-id}/channels/baidu", httpMethod: "GET", input: input)
    }

    ///  Returns information about a campaign.
    public func getCampaign(_ input: GetCampaignRequest) throws -> Future<GetCampaignResponse> {
        return try client.send(operation: "GetCampaign", path: "/v1/apps/{application-id}/campaigns/{campaign-id}", httpMethod: "GET", input: input)
    }

    ///  Returns information about the activity performed by a campaign.
    public func getCampaignActivities(_ input: GetCampaignActivitiesRequest) throws -> Future<GetCampaignActivitiesResponse> {
        return try client.send(operation: "GetCampaignActivities", path: "/v1/apps/{application-id}/campaigns/{campaign-id}/activities", httpMethod: "GET", input: input)
    }

    ///  Returns information about a specific version of a campaign.
    public func getCampaignVersion(_ input: GetCampaignVersionRequest) throws -> Future<GetCampaignVersionResponse> {
        return try client.send(operation: "GetCampaignVersion", path: "/v1/apps/{application-id}/campaigns/{campaign-id}/versions/{version}", httpMethod: "GET", input: input)
    }

    ///  Returns information about your campaign versions.
    public func getCampaignVersions(_ input: GetCampaignVersionsRequest) throws -> Future<GetCampaignVersionsResponse> {
        return try client.send(operation: "GetCampaignVersions", path: "/v1/apps/{application-id}/campaigns/{campaign-id}/versions", httpMethod: "GET", input: input)
    }

    ///  Returns information about your campaigns.
    public func getCampaigns(_ input: GetCampaignsRequest) throws -> Future<GetCampaignsResponse> {
        return try client.send(operation: "GetCampaigns", path: "/v1/apps/{application-id}/campaigns", httpMethod: "GET", input: input)
    }

    ///  Get all channels.
    public func getChannels(_ input: GetChannelsRequest) throws -> Future<GetChannelsResponse> {
        return try client.send(operation: "GetChannels", path: "/v1/apps/{application-id}/channels", httpMethod: "GET", input: input)
    }

    ///  Get an email channel.
    public func getEmailChannel(_ input: GetEmailChannelRequest) throws -> Future<GetEmailChannelResponse> {
        return try client.send(operation: "GetEmailChannel", path: "/v1/apps/{application-id}/channels/email", httpMethod: "GET", input: input)
    }

    ///  Returns information about an endpoint.
    public func getEndpoint(_ input: GetEndpointRequest) throws -> Future<GetEndpointResponse> {
        return try client.send(operation: "GetEndpoint", path: "/v1/apps/{application-id}/endpoints/{endpoint-id}", httpMethod: "GET", input: input)
    }

    ///  Returns the event stream for an app.
    public func getEventStream(_ input: GetEventStreamRequest) throws -> Future<GetEventStreamResponse> {
        return try client.send(operation: "GetEventStream", path: "/v1/apps/{application-id}/eventstream", httpMethod: "GET", input: input)
    }

    ///  Returns information about an export job.
    public func getExportJob(_ input: GetExportJobRequest) throws -> Future<GetExportJobResponse> {
        return try client.send(operation: "GetExportJob", path: "/v1/apps/{application-id}/jobs/export/{job-id}", httpMethod: "GET", input: input)
    }

    ///  Returns information about your export jobs.
    public func getExportJobs(_ input: GetExportJobsRequest) throws -> Future<GetExportJobsResponse> {
        return try client.send(operation: "GetExportJobs", path: "/v1/apps/{application-id}/jobs/export", httpMethod: "GET", input: input)
    }

    ///  Returns information about the GCM channel for an app.
    public func getGcmChannel(_ input: GetGcmChannelRequest) throws -> Future<GetGcmChannelResponse> {
        return try client.send(operation: "GetGcmChannel", path: "/v1/apps/{application-id}/channels/gcm", httpMethod: "GET", input: input)
    }

    ///  Returns information about an import job.
    public func getImportJob(_ input: GetImportJobRequest) throws -> Future<GetImportJobResponse> {
        return try client.send(operation: "GetImportJob", path: "/v1/apps/{application-id}/jobs/import/{job-id}", httpMethod: "GET", input: input)
    }

    ///  Returns information about your import jobs.
    public func getImportJobs(_ input: GetImportJobsRequest) throws -> Future<GetImportJobsResponse> {
        return try client.send(operation: "GetImportJobs", path: "/v1/apps/{application-id}/jobs/import", httpMethod: "GET", input: input)
    }

    ///  Returns information about a segment.
    public func getSegment(_ input: GetSegmentRequest) throws -> Future<GetSegmentResponse> {
        return try client.send(operation: "GetSegment", path: "/v1/apps/{application-id}/segments/{segment-id}", httpMethod: "GET", input: input)
    }

    ///  Returns a list of export jobs for a specific segment.
    public func getSegmentExportJobs(_ input: GetSegmentExportJobsRequest) throws -> Future<GetSegmentExportJobsResponse> {
        return try client.send(operation: "GetSegmentExportJobs", path: "/v1/apps/{application-id}/segments/{segment-id}/jobs/export", httpMethod: "GET", input: input)
    }

    ///  Returns a list of import jobs for a specific segment.
    public func getSegmentImportJobs(_ input: GetSegmentImportJobsRequest) throws -> Future<GetSegmentImportJobsResponse> {
        return try client.send(operation: "GetSegmentImportJobs", path: "/v1/apps/{application-id}/segments/{segment-id}/jobs/import", httpMethod: "GET", input: input)
    }

    ///  Returns information about a segment version.
    public func getSegmentVersion(_ input: GetSegmentVersionRequest) throws -> Future<GetSegmentVersionResponse> {
        return try client.send(operation: "GetSegmentVersion", path: "/v1/apps/{application-id}/segments/{segment-id}/versions/{version}", httpMethod: "GET", input: input)
    }

    ///  Returns information about your segment versions.
    public func getSegmentVersions(_ input: GetSegmentVersionsRequest) throws -> Future<GetSegmentVersionsResponse> {
        return try client.send(operation: "GetSegmentVersions", path: "/v1/apps/{application-id}/segments/{segment-id}/versions", httpMethod: "GET", input: input)
    }

    ///  Used to get information about your segments.
    public func getSegments(_ input: GetSegmentsRequest) throws -> Future<GetSegmentsResponse> {
        return try client.send(operation: "GetSegments", path: "/v1/apps/{application-id}/segments", httpMethod: "GET", input: input)
    }

    ///  Get an SMS channel.
    public func getSmsChannel(_ input: GetSmsChannelRequest) throws -> Future<GetSmsChannelResponse> {
        return try client.send(operation: "GetSmsChannel", path: "/v1/apps/{application-id}/channels/sms", httpMethod: "GET", input: input)
    }

    ///  Returns information about the endpoints that are associated with a User ID.
    public func getUserEndpoints(_ input: GetUserEndpointsRequest) throws -> Future<GetUserEndpointsResponse> {
        return try client.send(operation: "GetUserEndpoints", path: "/v1/apps/{application-id}/users/{user-id}", httpMethod: "GET", input: input)
    }

    ///  Get a Voice Channel
    public func getVoiceChannel(_ input: GetVoiceChannelRequest) throws -> Future<GetVoiceChannelResponse> {
        return try client.send(operation: "GetVoiceChannel", path: "/v1/apps/{application-id}/channels/voice", httpMethod: "GET", input: input)
    }

    ///  Get list of all tags for a given resource arn
    public func listTagsForResource(_ input: ListTagsForResourceRequest) throws -> Future<ListTagsForResourceResponse> {
        return try client.send(operation: "ListTagsForResource", path: "/v1/tags/{resource-arn}", httpMethod: "GET", input: input)
    }

    ///  Returns information about the specified phone number.
    public func phoneNumberValidate(_ input: PhoneNumberValidateRequest) throws -> Future<PhoneNumberValidateResponse> {
        return try client.send(operation: "PhoneNumberValidate", path: "/v1/phone/number/validate", httpMethod: "POST", input: input)
    }

    ///  Use to create or update the event stream for an app.
    public func putEventStream(_ input: PutEventStreamRequest) throws -> Future<PutEventStreamResponse> {
        return try client.send(operation: "PutEventStream", path: "/v1/apps/{application-id}/eventstream", httpMethod: "POST", input: input)
    }

    ///  Use to record events for endpoints. This method creates events and creates or updates the endpoints that those events are associated with.
    public func putEvents(_ input: PutEventsRequest) throws -> Future<PutEventsResponse> {
        return try client.send(operation: "PutEvents", path: "/v1/apps/{application-id}/events", httpMethod: "POST", input: input)
    }

    ///  Used to remove the attributes for an app
    public func removeAttributes(_ input: RemoveAttributesRequest) throws -> Future<RemoveAttributesResponse> {
        return try client.send(operation: "RemoveAttributes", path: "/v1/apps/{application-id}/attributes/{attribute-type}", httpMethod: "PUT", input: input)
    }

    ///  Used to send a direct message.
    public func sendMessages(_ input: SendMessagesRequest) throws -> Future<SendMessagesResponse> {
        return try client.send(operation: "SendMessages", path: "/v1/apps/{application-id}/messages", httpMethod: "POST", input: input)
    }

    ///  Used to send a message to a list of users.
    public func sendUsersMessages(_ input: SendUsersMessagesRequest) throws -> Future<SendUsersMessagesResponse> {
        return try client.send(operation: "SendUsersMessages", path: "/v1/apps/{application-id}/users-messages", httpMethod: "POST", input: input)
    }

    ///  Adds tags to a resource.
    @discardableResult public func tagResource(_ input: TagResourceRequest) throws -> Future<Void> {
        return try client.send(operation: "TagResource", path: "/v1/tags/{resource-arn}", httpMethod: "POST", input: input)
    }

    ///  Remove tags from a resource.
    @discardableResult public func untagResource(_ input: UntagResourceRequest) throws -> Future<Void> {
        return try client.send(operation: "UntagResource", path: "/v1/tags/{resource-arn}", httpMethod: "DELETE", input: input)
    }

    ///  Update an ADM channel.
    public func updateAdmChannel(_ input: UpdateAdmChannelRequest) throws -> Future<UpdateAdmChannelResponse> {
        return try client.send(operation: "UpdateAdmChannel", path: "/v1/apps/{application-id}/channels/adm", httpMethod: "PUT", input: input)
    }

    ///  Use to update the APNs channel for an app.
    public func updateApnsChannel(_ input: UpdateApnsChannelRequest) throws -> Future<UpdateApnsChannelResponse> {
        return try client.send(operation: "UpdateApnsChannel", path: "/v1/apps/{application-id}/channels/apns", httpMethod: "PUT", input: input)
    }

    ///  Update an APNS sandbox channel.
    public func updateApnsSandboxChannel(_ input: UpdateApnsSandboxChannelRequest) throws -> Future<UpdateApnsSandboxChannelResponse> {
        return try client.send(operation: "UpdateApnsSandboxChannel", path: "/v1/apps/{application-id}/channels/apns_sandbox", httpMethod: "PUT", input: input)
    }

    ///  Update an APNS VoIP channel
    public func updateApnsVoipChannel(_ input: UpdateApnsVoipChannelRequest) throws -> Future<UpdateApnsVoipChannelResponse> {
        return try client.send(operation: "UpdateApnsVoipChannel", path: "/v1/apps/{application-id}/channels/apns_voip", httpMethod: "PUT", input: input)
    }

    ///  Update an APNS VoIP sandbox channel
    public func updateApnsVoipSandboxChannel(_ input: UpdateApnsVoipSandboxChannelRequest) throws -> Future<UpdateApnsVoipSandboxChannelResponse> {
        return try client.send(operation: "UpdateApnsVoipSandboxChannel", path: "/v1/apps/{application-id}/channels/apns_voip_sandbox", httpMethod: "PUT", input: input)
    }

    ///  Used to update the settings for an app.
    public func updateApplicationSettings(_ input: UpdateApplicationSettingsRequest) throws -> Future<UpdateApplicationSettingsResponse> {
        return try client.send(operation: "UpdateApplicationSettings", path: "/v1/apps/{application-id}/settings", httpMethod: "PUT", input: input)
    }

    ///  Update a BAIDU GCM channel
    public func updateBaiduChannel(_ input: UpdateBaiduChannelRequest) throws -> Future<UpdateBaiduChannelResponse> {
        return try client.send(operation: "UpdateBaiduChannel", path: "/v1/apps/{application-id}/channels/baidu", httpMethod: "PUT", input: input)
    }

    ///  Use to update a campaign.
    public func updateCampaign(_ input: UpdateCampaignRequest) throws -> Future<UpdateCampaignResponse> {
        return try client.send(operation: "UpdateCampaign", path: "/v1/apps/{application-id}/campaigns/{campaign-id}", httpMethod: "PUT", input: input)
    }

    ///  Update an email channel.
    public func updateEmailChannel(_ input: UpdateEmailChannelRequest) throws -> Future<UpdateEmailChannelResponse> {
        return try client.send(operation: "UpdateEmailChannel", path: "/v1/apps/{application-id}/channels/email", httpMethod: "PUT", input: input)
    }

    ///  Creates or updates an endpoint.
    public func updateEndpoint(_ input: UpdateEndpointRequest) throws -> Future<UpdateEndpointResponse> {
        return try client.send(operation: "UpdateEndpoint", path: "/v1/apps/{application-id}/endpoints/{endpoint-id}", httpMethod: "PUT", input: input)
    }

    ///  Use to update a batch of endpoints.
    public func updateEndpointsBatch(_ input: UpdateEndpointsBatchRequest) throws -> Future<UpdateEndpointsBatchResponse> {
        return try client.send(operation: "UpdateEndpointsBatch", path: "/v1/apps/{application-id}/endpoints", httpMethod: "PUT", input: input)
    }

    ///  Use to update the GCM channel for an app.
    public func updateGcmChannel(_ input: UpdateGcmChannelRequest) throws -> Future<UpdateGcmChannelResponse> {
        return try client.send(operation: "UpdateGcmChannel", path: "/v1/apps/{application-id}/channels/gcm", httpMethod: "PUT", input: input)
    }

    ///  Used to update a segment.
    public func updateSegment(_ input: UpdateSegmentRequest) throws -> Future<UpdateSegmentResponse> {
        return try client.send(operation: "UpdateSegment", path: "/v1/apps/{application-id}/segments/{segment-id}", httpMethod: "PUT", input: input)
    }

    ///  Update an SMS channel.
    public func updateSmsChannel(_ input: UpdateSmsChannelRequest) throws -> Future<UpdateSmsChannelResponse> {
        return try client.send(operation: "UpdateSmsChannel", path: "/v1/apps/{application-id}/channels/sms", httpMethod: "PUT", input: input)
    }

    ///  Update an Voice channel
    public func updateVoiceChannel(_ input: UpdateVoiceChannelRequest) throws -> Future<UpdateVoiceChannelResponse> {
        return try client.send(operation: "UpdateVoiceChannel", path: "/v1/apps/{application-id}/channels/voice", httpMethod: "PUT", input: input)
    }


}