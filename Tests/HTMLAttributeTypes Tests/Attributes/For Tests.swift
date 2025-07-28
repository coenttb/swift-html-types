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

@Suite("For Test")
struct ForTests {
    @Test("For attribute should be for")
    func attribute() {
        #expect(For.attribute == "for")
    }

    @Test("For should support array literal")
    func arrayLiteral() {
        let forAttribute: For = ["input1", "input2"]
        #expect(forAttribute.rawValue == "input1 input2")
    }
}
