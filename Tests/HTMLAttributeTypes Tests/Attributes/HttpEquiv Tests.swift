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

@Suite("HttpEquiv Test")
struct HttpEquivTests {
    @Test("HttpEquiv attribute should be http-equiv")
    func attribute() {
        #expect(HttpEquiv.attribute == "http-equiv")
    }

    @Test("HttpEquiv convenience properties")
    func convenienceProperties() {
        #expect(HttpEquiv.contentSecurityPolicy.rawValue == "content-security-policy")
        #expect(HttpEquiv.contentType.rawValue == "content-type")
        #expect(HttpEquiv.defaultStyle.rawValue == "default-style")
        #expect(HttpEquiv.refresh.rawValue == "refresh")
        #expect(HttpEquiv.xUaCompatible.rawValue == "x-ua-compatible")
    }
}
