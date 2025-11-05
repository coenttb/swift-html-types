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

@Suite("Method Test")
struct MethodTests {
    @Test("Method attribute should be method")
    func attribute() {
        #expect(Method.attribute == "method")
    }

    @Test("Method convenience properties")
    func convenienceProperties() {
        #expect(Method.get.rawValue == "get")
        #expect(Method.post.rawValue == "post")
        #expect(Method.dialog.rawValue == "dialog")
    }

    @Test("Method should lowercase input")
    func lowercaseInput() {
        let method = Method(value: "POST")
        #expect(method.rawValue == "post")
    }
}
