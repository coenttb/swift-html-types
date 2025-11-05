// ===----------------------------------------------------------------------===//
//
// Copyright (c) 2025 Coen ten Thije Boonkkamp
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of project contributors
//
// SPDX-License-Identifier: Apache-2.0
//
// ===----------------------------------------------------------------------===//

import Foundation
import HTMLAttributeTypes
import Testing

@Suite("Ping Test")
struct PingTests {
    @Test("Ping attribute should be ping")
    func attribute() {
        #expect(Ping.attribute == "ping")
    }

    @Test("Ping array literal support")
    func arrayLiteral() {
        let ping: Ping = ["https://example.com/ping", "https://analytics.example.com/track"]
        #expect(ping.rawValue == "https://example.com/ping https://analytics.example.com/track")
    }
}
