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

@Suite("Itemtype Test")
struct ItemtypeTests {
    @Test("Itemtype attribute should be itemtype")
    func attribute() {
        #expect(Itemtype.attribute == "itemtype")
    }

    @Test("Itemtype should store and return its value")
    func valueStorage() {
        let itemtype = Itemtype("https://schema.org/Person")
        #expect(itemtype.rawValue == "https://schema.org/Person")
    }

    @Test("Itemtype description should return its value")
    func description() {
        let itemtype = Itemtype("https://schema.org/Product")
        #expect(itemtype.description == "https://schema.org/Product")
    }

    @Test("Itemtype should be initializable with string literal")
    func stringLiteralInitialization() {
        let itemtype: Itemtype = "https://schema.org/Movie"
        #expect(itemtype.rawValue == "https://schema.org/Movie")
    }

    @Test("Itemtype should be initializable with array literal")
    func arrayLiteralInitialization() {
        let itemtype: Itemtype = ["https://schema.org/Person", "https://schema.org/Teacher"]
        #expect(itemtype.rawValue == "https://schema.org/Person https://schema.org/Teacher")
    }

    @Test("Itemtype should support SchemaOrg initialization")
    func schemaOrgInitialization() {
        let itemtype = Itemtype(schemaOrg: "Person")
        #expect(itemtype.rawValue == "https://schema.org/Person")
    }
}
