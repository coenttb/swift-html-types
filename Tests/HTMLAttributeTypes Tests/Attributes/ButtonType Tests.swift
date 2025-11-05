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

@Suite("ButtonType Test")
struct ButtonTypeTests {
    @Test("ButtonType attribute should be type")
    func attribute() {
        #expect(ButtonType.attribute == "type")
    }

    @Test("ButtonType convenience properties")
    func convenienceProperties() {
        #expect(ButtonType.submit.rawValue == "submit")
        #expect(ButtonType.reset.rawValue == "reset")
        #expect(ButtonType.button.rawValue == "button")
    }
}
