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

@Suite("ColSpan Test")
struct ColSpanTests {
    @Test("ColSpan attribute should be colspan")
    func attribute() {
        #expect(ColSpan.attribute == "colspan")
    }

    @Test("ColSpan should support integer literal")
    func integerLiteral() {
        let colSpan: ColSpan = 3
        #expect(colSpan.rawValue == "3")
    }

    @Test("ColSpan description should equal rawValue")
    func description() {
        let colSpan = ColSpan(value: "2")
        #expect(colSpan.description == "2")
    }
}
