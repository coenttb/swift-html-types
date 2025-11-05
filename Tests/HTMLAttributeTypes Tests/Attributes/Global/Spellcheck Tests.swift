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

@Suite("Spellcheck Test")
struct SpellcheckTests {
    @Test("Spellcheck attribute should be spellcheck")
    func attribute() {
        #expect(Spellcheck.attribute == "spellcheck")
    }

    @Test(
        "Spellcheck cases description should match the spec",
        arguments: Spellcheck.allCases
    )
    func cases(spellcheck: Spellcheck) {
        switch spellcheck.rawValue {
        case true: #expect(spellcheck.description == "true")
        case false: #expect(spellcheck.description == "false")
        }
    }

    @Test("Spellcheck should conform to CaseIterable")
    func conformsToCaseIterable() {
        #expect(Spellcheck.allCases.count == 2)
        #expect(Spellcheck.allCases.contains(true))
        #expect(Spellcheck.allCases.contains(false))
    }
}
