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

@Suite("AttributionSrc Test")
struct AttributionSrcTests {
    @Test("AttributionSrc attribute should be attributionsrc")
    func attribute() {
        #expect(AttributionSrc.attribute == "attributionsrc")
    }

    @Test("AttributionSrc should support boolean initialization")
    func booleanInitialization() {
        let attrTrue = AttributionSrc(true)
        #expect(attrTrue.shouldInclude == true)

        let attrFalse = AttributionSrc(false)
        #expect(attrFalse.shouldInclude == false)
    }

    @Test("AttributionSrc should support URL initialization")
    func urlInitialization() {
        let attr = AttributionSrc("https://example.com/register")
        #expect(attr.shouldInclude == true)
        #expect(attr.description == "https://example.com/register")
    }

    @Test("AttributionSrc should support boolean literal")
    func booleanLiteral() {
        let attrTrue: AttributionSrc = true
        #expect(attrTrue.shouldInclude == true)

        let attrFalse: AttributionSrc = false
        #expect(attrFalse.shouldInclude == false)
    }

    @Test("AttributionSrc should support string literal")
    func stringLiteral() {
        let attr: AttributionSrc = "https://analytics.example.com"
        #expect(attr.description == "https://analytics.example.com")
    }
}
