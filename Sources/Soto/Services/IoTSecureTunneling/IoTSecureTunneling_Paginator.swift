//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import SotoCore

// MARK: Paginators

extension IoTSecureTunneling {

    ///  List all tunnels for an AWS account. Tunnels are listed by creation time in descending order, newer tunnels will be listed before older tunnels.
    public func listTunnelsPaginator(
        _ input: ListTunnelsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListTunnelsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTunnels,
            tokenKey: \ListTunnelsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

}

extension IoTSecureTunneling.ListTunnelsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTSecureTunneling.ListTunnelsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            thingName: self.thingName
        )

    }
}

