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

import HTMLAttributeTypes
import Testing

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
    import Foundation
#endif

@Suite("Id Test")
struct IdTests {
    @Test("Id attribute should be id")
    func attribute() {
        #expect(Id.attribute == "id")
    }

    @Test("Id should store and return its value")
    func valueStorage() {
        let id = Id("header-section")
        #expect(id.rawValue == "header-section")
    }

    @Test("Id description should return its value")
    func description() {
        let id = Id("main-content")
        #expect(id.description == "main-content")
    }

    @Test("Id should be initializable with string literal")
    func stringLiteralInitialization() {
        let id: Id = "footer"
        #expect(id.rawValue == "footer")
    }
}
