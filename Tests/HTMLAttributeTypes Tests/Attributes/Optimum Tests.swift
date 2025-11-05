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

@Suite("Optimum Test")
struct OptimumTests {
    @Test("Optimum attribute should be optimum")
    func attribute() {
        #expect(Optimum.attribute == "optimum")
    }

    @Test("Optimum should support integer literal")
    func integerLiteral() {
        let optimum: Optimum = 50
        #expect(optimum.value == 50.0)
        #expect(optimum.description == "50.0")
    }

    @Test("Optimum should support float literal")
    func floatLiteral() {
        let optimum: Optimum = 66.7
        #expect(optimum.value == 66.7)
        #expect(optimum.description == "66.7")
    }

    @Test("Optimum init with double")
    func initWithDouble() {
        let optimum = Optimum(75.5)
        #expect(optimum.value == 75.5)
        #expect(optimum.description == "75.5")
    }
}
