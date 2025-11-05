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

@Suite("Itemprop Test")
struct ItempropTests {
    @Test("Itemprop attribute should be itemprop")
    func attribute() {
        #expect(Itemprop.attribute == "itemprop")
    }

    @Test("Itemprop should store and return its value")
    func valueStorage() {
        let itemprop = Itemprop("name")
        #expect(itemprop.rawValue == "name")
    }

    @Test("Itemprop description should return its value")
    func description() {
        let itemprop = Itemprop("director")
        #expect(itemprop.description == "director")
    }

    @Test("Itemprop should be initializable with string literal")
    func stringLiteralInitialization() {
        let itemprop: Itemprop = "author"
        #expect(itemprop.rawValue == "author")
    }

    @Test("Itemprop should be initializable with array literal")
    func arrayLiteralInitialization() {
        let itemprop: Itemprop = ["favorite-color", "favorite-fruit"]
        #expect(itemprop.rawValue == "favorite-color favorite-fruit")
    }
}
