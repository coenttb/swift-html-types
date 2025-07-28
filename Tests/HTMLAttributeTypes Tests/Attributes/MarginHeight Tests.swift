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

@Suite("MarginHeight Test")
struct MarginHeightTests {
    @Test("MarginHeight attribute should be marginheight")
    func attribute() {
        #expect(MarginHeight.attribute == "marginheight")
    }

    @Test("MarginHeight should support integer literal")
    func integerLiteral() {
        let marginHeight: MarginHeight = 10
        #expect(marginHeight.rawValue == "10")
    }
}
