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

@Suite("Min Test")
struct MinTests {
    @Test("Min attribute should be min")
    func attribute() {
        #expect(Min.attribute == "min")
    }

    @Test("Min should support integer literal")
    func integerLiteral() {
        let min: Min = 0
        #expect(min.rawValue == "0")
    }

    @Test("Min should support float literal")
    func floatLiteral() {
        let min: Min = 1.5
        #expect(min.rawValue == "1.5")
    }

    @Test("Min zero convenience property")
    func zeroProperty() {
        #expect(Min.zero.rawValue == "0")
    }
}
