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

@Suite("Height Test")
struct HeightTests {
    @Test("Height attribute should be height")
    func attribute() {
        #expect(Height.attribute == "height")
    }

    @Test("Height should support integer literal")
    func integerLiteral() {
        let height: Height = 300
        #expect(height.rawValue == "300")
    }
}
