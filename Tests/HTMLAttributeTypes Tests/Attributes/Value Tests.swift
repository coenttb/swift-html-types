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

@Suite("Value Test")
struct ValueTests {
    @Test("Value attribute should be value")
    func attribute() {
        #expect(Value<String>.attribute == "value")
    }

    @Test("Value should support string literals")
    func stringLiterals() {
        let stringValue: Value<String> = "test"
        #expect(stringValue.value == "test")
    }

    @Test("Value should support integer literals")
    func integerLiterals() {
        let intValue: Value<Int> = 42
        #expect(intValue.value == 42)
    }
}
