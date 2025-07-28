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

@Suite("Scrolling Test")
struct ScrollingTests {
    @Test("Scrolling attribute should be scrolling")
    func attribute() {
        #expect(Scrolling.attribute == "scrolling")
    }

    @Test("Scrolling should have predefined values")
    func predefinedValues() {
        #expect(Scrolling.yes.rawValue == "yes")
        #expect(Scrolling.no.rawValue == "no")
        #expect(Scrolling.auto.rawValue == "auto")
    }
}
