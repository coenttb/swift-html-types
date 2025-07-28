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

@Suite("MarginWidth Test")
struct MarginWidthTests {
    @Test("MarginWidth attribute should be marginwidth")
    func attribute() {
        #expect(MarginWidth.attribute == "marginwidth")
    }

    @Test("MarginWidth should support integer literal")
    func integerLiteral() {
        let marginWidth: MarginWidth = 20
        #expect(marginWidth.rawValue == "20")
    }
}
