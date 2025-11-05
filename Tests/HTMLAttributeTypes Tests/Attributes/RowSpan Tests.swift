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

@Suite("RowSpan Test")
struct RowSpanTests {
    @Test("RowSpan attribute should be rowspan")
    func attribute() {
        #expect(RowSpan.attribute == "rowspan")
    }

    @Test("RowSpan should support integer literal")
    func integerLiteral() {
        let rowspan: RowSpan = 3
        #expect(rowspan.rawValue == "3")
    }
}
