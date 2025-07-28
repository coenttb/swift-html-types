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

@Suite("Behavior Test")
struct BehaviorTests {
    @Test("Behavior attribute should be behavior")
    func attribute() {
        #expect(Behavior.attribute == "behavior")
    }

    @Test("Behavior should have predefined values")
    func predefinedValues() {
        #expect(Behavior.scroll.rawValue == "scroll")
        #expect(Behavior.slide.rawValue == "slide")
        #expect(Behavior.alternate.rawValue == "alternate")
    }
}
