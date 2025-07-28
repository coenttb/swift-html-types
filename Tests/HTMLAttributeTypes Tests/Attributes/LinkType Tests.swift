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

@Suite("LinkType Test")
struct LinkTypeTests {
    @Test("LinkType attribute should be type")
    func attribute() {
        #expect(LinkType.attribute == "type")
    }

    @Test("LinkType convenience properties")
    func convenienceProperties() {
        #expect(LinkType.css.rawValue == "text/css")
        #expect(LinkType.javascript.rawValue == "text/javascript")
        #expect(LinkType.icon.rawValue == "image/x-icon")
        #expect(LinkType.svg.rawValue == "image/svg+xml")
        #expect(LinkType.png.rawValue == "image/png")
        #expect(LinkType.manifest.rawValue == "application/manifest+json")
        #expect(LinkType.rss.rawValue == "application/rss+xml")
        #expect(LinkType.atom.rawValue == "application/atom+xml")
        #expect(LinkType.json.rawValue == "application/json")
    }
}
