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

#if canImport(FoundationEssentials)
import FoundationEssentials
#elseif canImport(Foundation)
import Foundation
#endif

import HTMLAttributeTypes
import Testing

@Suite("Is Test")
struct IsTests {
    @Test("Is attribute should be is")
    func attribute() {
        #expect(Is.attribute == "is")
    }

    @Test("Is should store and return its value")
    func valueStorage() {
        let is_ = Is("custom-button")
        #expect(is_.rawValue == "custom-button")
    }

    @Test("Is description should return its value")
    func description() {
        let is_ = Is("file-viewer")
        #expect(is_.description == "file-viewer")
    }

    @Test("Is should be initializable with string literal")
    func stringLiteralInitialization() {
        let is_: Is = "special-element"
        #expect(is_.rawValue == "special-element")
    }
}
