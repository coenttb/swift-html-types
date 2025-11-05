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

@Suite("Itemid Test")
struct ItemidTests {
    @Test("Itemid attribute should be itemid")
    func attribute() {
        #expect(Itemid.attribute == "itemid")
    }

    @Test("Itemid should store and return its value")
    func valueStorage() {
        let itemid = Itemid("urn:isbn:978-0374228484")
        #expect(itemid.rawValue == "urn:isbn:978-0374228484")
    }

    @Test("Itemid description should return its value")
    func description() {
        let itemid = Itemid("https://example.com/products/123")
        #expect(itemid.description == "https://example.com/products/123")
    }

    @Test("Itemid should be initializable with string literal")
    func stringLiteralInitialization() {
        let itemid: Itemid = "urn:isbn:978-0374228484"
        #expect(itemid.rawValue == "urn:isbn:978-0374228484")
    }
}
