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

@Suite("Rel Test")
struct RelTests {
    @Test("Rel attribute should be rel")
    func attribute() {
        #expect(Rel.attribute == "rel")
    }

    @Test("Rel convenience properties")
    func convenienceProperties() {
        #expect(Rel.stylesheet.rawValue == "stylesheet")
        #expect(Rel.icon.rawValue == "icon")
        #expect(Rel.canonical.rawValue == "canonical")
        #expect(Rel.external.rawValue == "external")
        #expect(Rel.noopener.rawValue == "noopener")
        #expect(Rel.noreferrer.rawValue == "noreferrer")
        #expect(Rel.preload.rawValue == "preload")
    }

    @Test("Rel array literal support")
    func arrayLiteral() {
        let rel: Rel = ["external", "noopener", "noreferrer"]
        #expect(rel.rawValue == "external noopener noreferrer")
    }

    @Test("Rel secure external convenience")
    func secureExternal() {
        #expect(Rel.secureExternal.rawValue.contains("external"))
        #expect(Rel.secureExternal.rawValue.contains("noopener"))
        #expect(Rel.secureExternal.rawValue.contains("noreferrer"))
    }
}
