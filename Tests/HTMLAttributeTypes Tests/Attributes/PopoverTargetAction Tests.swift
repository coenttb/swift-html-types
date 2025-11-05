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

@Suite("PopoverTargetAction Test")
struct PopoverTargetActionTests {
    @Test("PopoverTargetAction attribute should be popovertargetaction")
    func attribute() {
        #expect(PopoverTargetAction.attribute == "popovertargetaction")
    }

    @Test("PopoverTargetAction should have predefined values")
    func predefinedValues() {
        #expect(PopoverTargetAction.show.rawValue == "show")
        #expect(PopoverTargetAction.hide.rawValue == "hide")
        #expect(PopoverTargetAction.toggle.rawValue == "toggle")
    }
}
