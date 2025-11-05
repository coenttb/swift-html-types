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

@Suite("ListType Test")
struct ListTypeTests {
    @Test("ListType attribute should be type")
    func attribute() {
        #expect(ListType.attribute == "type")
    }

    @Test("ListType should have predefined values")
    func predefinedValues() {
        #expect(ListType.lowerAlpha.rawValue == "a")
        #expect(ListType.upperAlpha.rawValue == "A")
        #expect(ListType.lowerRoman.rawValue == "i")
        #expect(ListType.upperRoman.rawValue == "I")
        #expect(ListType.decimal.rawValue == "1")
    }
}
