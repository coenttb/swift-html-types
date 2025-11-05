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

@Suite("Slot Test")
struct SlotTests {
    @Test("Slot attribute should be slot")
    func attribute() {
        #expect(Slot.attribute == "slot")
    }

    @Test("Slot should store and return its value")
    func valueStorage() {
        let slot = Slot("header")
        #expect(slot.rawValue == "header")
    }

    @Test("Slot description should return its value")
    func description() {
        let slot = Slot("footer")
        #expect(slot.description == "footer")
    }

    @Test("Slot should be initializable with string literal")
    func stringLiteralInitialization() {
        let slot: Slot = "sidebar"
        #expect(slot.rawValue == "sidebar")
    }
}
