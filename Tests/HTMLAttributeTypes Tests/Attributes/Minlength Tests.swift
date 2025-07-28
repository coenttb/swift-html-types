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

@Suite("Minlength Test")
struct MinlengthTests {
    @Test("Minlength attribute should be minlength")
    func attribute() {
        #expect(Minlength.attribute == "minlength")
    }

    @Test("Minlength should support integer literal")
    func integerLiteral() {
        let minlength: Minlength = 5
        #expect(minlength.value == 5)
        #expect(minlength.description == "5")
    }

    @Test("Minlength should enforce non-negative values")
    func nonNegativeValues() {
        let minlength = Minlength(-5)
        #expect(minlength.value == 0)
    }

    @Test("Minlength convenience properties and methods")
    func conveniencePropertiesAndMethods() {
        #expect(Minlength.none.value == 0)
        #expect(Minlength.characters(10).value == 10)
    }
}
