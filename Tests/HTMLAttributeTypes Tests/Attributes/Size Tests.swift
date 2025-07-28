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

@Suite("Size Test")
struct SizeTests {
    @Test("Size attribute should be size")
    func attribute() {
        #expect(Size.attribute == "size")
    }

    @Test("Size convenience properties")
    func convenienceProperties() {
        #expect(Size.standardTextField.rawValue == "30")
        #expect(Size.smallTextField.rawValue == "10")
        #expect(Size.largeTextField.rawValue == "50")
        #expect(Size.standardListbox.rawValue == "5")
    }

    @Test("Size should support integer literal")
    func integerLiteral() {
        let size: Size = 25
        #expect(size.rawValue == "25")
    }

    @Test("Size should enforce minimum value of 1")
    func minimumValue() {
        let size: Size = 0
        #expect(size.rawValue == "1")
    }
}
