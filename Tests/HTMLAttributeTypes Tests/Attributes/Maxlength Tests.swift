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

import Foundation
import HTMLAttributeTypes
import Testing

@Suite("Maxlength Test")
struct MaxlengthTests {
    @Test("Maxlength attribute should be maxlength")
    func attribute() {
        #expect(Maxlength.attribute == "maxlength")
    }

    @Test("Maxlength should support integer literal")
    func integerLiteral() {
        let maxlength: Maxlength = 100
        #expect(maxlength.value == 100)
        #expect(maxlength.description == "100")
    }

    @Test("Maxlength should enforce non-negative values")
    func nonNegativeValues() {
        let maxlength = Maxlength(-10)
        #expect(maxlength.value == 0)
    }

    @Test("Maxlength characters factory method")
    func charactersFactory() {
        let maxlength = Maxlength.characters(50)
        #expect(maxlength.value == 50)
        #expect(maxlength.description == "50")
    }
}
