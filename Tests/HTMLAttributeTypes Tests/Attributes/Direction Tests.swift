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

@Suite("Direction Test")
struct DirectionTests {
    @Test("Direction attribute should be direction")
    func attribute() {
        #expect(Direction.attribute == "direction")
    }

    @Test("Direction convenience properties")
    func convenienceProperties() {
        #expect(Direction.left.rawValue == "left")
        #expect(Direction.right.rawValue == "right")
        #expect(Direction.up.rawValue == "up")
        #expect(Direction.down.rawValue == "down")
    }
}
