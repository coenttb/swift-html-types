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

@Suite("High Test")
struct HighTests {
    @Test("High attribute should be high")
    func attribute() {
        #expect(High.attribute == "high")
    }

    @Test("High should support integer literal")
    func integerLiteral() {
        let high: High = 75
        #expect(high.value == 75.0)
        #expect(high.description == "75.0")
    }

    @Test("High should support float literal")
    func floatLiteral() {
        let high: High = 67.5
        #expect(high.value == 67.5)
        #expect(high.description == "67.5")
    }

    @Test("High init with double")
    func initWithDouble() {
        let high = High(90.0)
        #expect(high.value == 90.0)
        #expect(high.description == "90.0")
    }
}
