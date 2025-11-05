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

@Suite("Low Test")
struct LowTests {
    @Test("Low attribute should be low")
    func attribute() {
        #expect(Low.attribute == "low")
    }

    @Test("Low should support integer literal")
    func integerLiteral() {
        let low: Low = 25
        #expect(low.value == 25.0)
        #expect(low.description == "25.0")
    }

    @Test("Low should support float literal")
    func floatLiteral() {
        let low: Low = 33.3
        #expect(low.value == 33.3)
        #expect(low.description == "33.3")
    }

    @Test("Low init with double")
    func initWithDouble() {
        let low = Low(15.5)
        #expect(low.value == 15.5)
        #expect(low.description == "15.5")
    }
}
