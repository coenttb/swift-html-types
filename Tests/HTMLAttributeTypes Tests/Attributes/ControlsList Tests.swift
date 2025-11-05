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

@Suite("ControlsList Test")
struct ControlsListTests {
    @Test("ControlsList attribute should be controlslist")
    func attribute() {
        #expect(ControlsList.attribute == "controlslist")
    }

    @Test("ControlsList should have predefined values")
    func predefinedValues() {
        #expect(ControlsList.nodownload.rawValue == "nodownload")
        #expect(ControlsList.nofullscreen.rawValue == "nofullscreen")
        #expect(ControlsList.noremoteplayback.rawValue == "noremoteplayback")
    }

    @Test("ControlsList should support combining values")
    func combineValues() {
        let combined = ControlsList.combine([.nodownload, .nofullscreen])
        #expect(combined.rawValue == "nodownload nofullscreen")
    }
}
