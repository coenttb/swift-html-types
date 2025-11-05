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

@Suite("Tabindex Test")
struct TabindexTests {
    @Test("Tabindex attribute should be tabindex")
    func attribute() {
        #expect(Tabindex.attribute == "tabindex")
    }

    @Test("Tabindex should store and return its value")
    func valueStorage() {
        let tabindex = Tabindex(2)
        #expect(tabindex.value == 2)
    }

    @Test("Tabindex description should return its value as string")
    func description() {
        let tabindex = Tabindex(-1)
        #expect(tabindex.description == "-1")
    }

    @Test("Tabindex should have predefined constants")
    func predefinedConstants() {
        #expect(Tabindex.notTabbable.value == -1)
        #expect(Tabindex.inDocumentOrder.value == 0)
    }
}
