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

@Suite("Loading Test")
struct LoadingTests {
    @Test("Loading attribute should be loading")
    func attribute() {
        #expect(Loading.attribute == "loading")
    }

    @Test("Loading convenience properties")
    func convenienceProperties() {
        #expect(Loading.lazy.rawValue == "lazy")
        #expect(Loading.eager.rawValue == "eager")
    }

    @Test("Loading should conform to CaseIterable")
    func caseIterable() {
        #expect(Loading.allCases.count == 2)
        #expect(Loading.allCases.contains(.lazy))
        #expect(Loading.allCases.contains(.eager))
    }
}
