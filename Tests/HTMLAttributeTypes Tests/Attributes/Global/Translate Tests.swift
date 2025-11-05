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

@Suite("Translate Test")
struct TranslateTests {
    @Test("Translate attribute should be translate")
    func attribute() {
        #expect(Translate.attribute == "translate")
    }

    @Test("Translate description should match the spec")
    func description() {
        #expect(Translate.yes.description == "yes")
        #expect(Translate.no.description == "no")
    }

    @Test("Translate should be initializable with boolean literals")
    func booleanLiteralInitialization() {
        let yesTranslate: Translate = true
        let noTranslate: Translate = false

        #expect(yesTranslate == .yes)
        #expect(noTranslate == .no)
    }
}
