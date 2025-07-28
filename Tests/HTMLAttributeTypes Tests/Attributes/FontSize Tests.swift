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

@Suite("FontSize Test")
struct FontSizeTests {
    @Test("FontSize attribute should be size")
    func attribute() {
        #expect(FontSize.attribute == "size")
    }

    @Test("FontSize should support numeric initialization")
    func numericInitialization() {
        let fontSize = FontSize(numericValue: 5)
        #expect(fontSize.rawValue == "5")
    }

    @Test("FontSize should support relative initialization")
    func relativeInitialization() {
        let positiveRelative = FontSize(relativeValue: 2)
        #expect(positiveRelative.rawValue == "+2")

        let negativeRelative = FontSize(relativeValue: -1)
        #expect(negativeRelative.rawValue == "-1")
    }

    @Test("FontSize should support integer literal")
    func integerLiteral() {
        let fontSize: FontSize = 3
        #expect(fontSize.rawValue == "3")
    }
}
