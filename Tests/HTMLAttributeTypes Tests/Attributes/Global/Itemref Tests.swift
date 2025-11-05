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

@Suite("Itemref Test")
struct ItemrefTests {
    @Test("Itemref attribute should be itemref")
    func attribute() {
        #expect(Itemref.attribute == "itemref")
    }

    @Test("Itemref should store and return its value")
    func valueStorage() {
        let itemref = Itemref("details contact")
        #expect(itemref.rawValue == "details contact")
    }

    @Test("Itemref description should return its value")
    func description() {
        let itemref = Itemref("name address")
        #expect(itemref.description == "name address")
    }

    @Test("Itemref should be initializable with string literal")
    func stringLiteralInitialization() {
        let itemref: Itemref = "profile contact"
        #expect(itemref.rawValue == "profile contact")
    }

    @Test("Itemref should be initializable with array literal")
    func arrayLiteralInitialization() {
        let itemref: Itemref = ["name", "address", "contact"]
        #expect(itemref.rawValue == "name address contact")
    }
}
