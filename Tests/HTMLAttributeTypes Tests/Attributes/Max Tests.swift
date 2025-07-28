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

@Suite("Max Test")
struct MaxTests {
    @Test("Max attribute should be max")
    func attribute() {
        #expect(Max.attribute == "max")
    }

    @Test("Max should support integer literal")
    func integerLiteral() {
        let max: Max = 100
        #expect(max.rawValue == "100")
    }

    @Test("Max should support float literal")
    func floatLiteral() {
        let max: Max = 99.5
        #expect(max.rawValue == "99.5")
    }
}
