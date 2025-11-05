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

@Suite("Rows Test")
struct RowsTests {
    @Test("Rows attribute should be rows")
    func attribute() {
        #expect(Rows.attribute == "rows")
    }

    @Test("Rows should support integer literal")
    func integerLiteral() {
        let rows: Rows = 5
        #expect(rows.rawValue == "5")
    }
}
