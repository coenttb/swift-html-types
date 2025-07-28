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

@Suite("FetchPriority Test")
struct FetchPriorityTests {
    @Test("FetchPriority attribute should be fetchpriority")
    func attribute() {
        #expect(FetchPriority.attribute == "fetchpriority")
    }

    @Test("FetchPriority convenience properties")
    func convenienceProperties() {
        #expect(FetchPriority.high.rawValue == "high")
        #expect(FetchPriority.low.rawValue == "low")
        #expect(FetchPriority.auto.rawValue == "auto")
    }

    @Test("FetchPriority should conform to CaseIterable")
    func caseIterable() {
        #expect(FetchPriority.allCases.count == 3)
        #expect(FetchPriority.allCases.contains(.high))
        #expect(FetchPriority.allCases.contains(.low))
        #expect(FetchPriority.allCases.contains(.auto))
    }
}
