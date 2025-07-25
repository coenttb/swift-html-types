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

@Suite("Target Test")
struct TargetTests {
    @Test("Target attribute should be target")
    func attribute() {
        #expect(Target.attribute == "target")
    }

    @Test("Target convenience properties")
    func convenienceProperties() {
        #expect(Target.`self`.rawValue == "_self")
        #expect(Target.blank.rawValue == "_blank")
        #expect(Target.parent.rawValue == "_parent")
        #expect(Target.top.rawValue == "_top")
        #expect(Target.unfencedTop.rawValue == "_unfencedTop")
    }
}
