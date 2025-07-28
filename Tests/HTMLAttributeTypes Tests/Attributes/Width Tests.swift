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

@Suite("Width Test")
struct WidthTests {
    @Test("Width attribute should be width")
    func attribute() {
        #expect(Width.attribute == "width")
    }

    @Test("Width should support integer literal")
    func integerLiteral() {
        let width: Width = 400
        #expect(width.rawValue == "400")
    }

    @Test("Width should support integer init")
    func integerInit() {
        let width = Width(300)
        #expect(width.rawValue == "300")
    }
}
