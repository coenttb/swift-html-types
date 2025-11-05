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

@Suite("Lang Test")
struct LangTests {
    @Test("Lang attribute should be lang")
    func attribute() {
        #expect(Lang.attribute == "lang")
    }

    @Test("Lang should store and return its value")
    func valueStorage() {
        let lang = Lang("en-US")
        #expect(lang.rawValue == "en-US")
    }

    @Test("Lang description should return its value")
    func description() {
        let lang = Lang("es")
        #expect(lang.description == "es")
    }

    @Test("Lang should be initializable with string literal")
    func stringLiteralInitialization() {
        let lang: Lang = "fr-CA"
        #expect(lang.rawValue == "fr-CA")
    }
}
