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

@Suite("FormMethod Test")
struct FormMethodTests {
    @Test("FormMethod attribute should be formmethod")
    func attribute() {
        #expect(FormMethod.attribute == "formmethod")
    }

    @Test("FormMethod should have predefined values")
    func predefinedValues() {
        #expect(FormMethod.get.rawValue == "get")
        #expect(FormMethod.post.rawValue == "post")
        #expect(FormMethod.dialog.rawValue == "dialog")
    }

    @Test("FormMethod should convert to lowercase")
    func lowercaseConversion() {
        let method = FormMethod(value: "POST")
        #expect(method.rawValue == "post")
    }
}
