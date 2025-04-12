//===----------------------------------------------------------------------===//
//
// Copyright (c) 2025 Coen ten Thije Boonkkamp
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of project contributors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import Foundation
import Testing
import HTMLAttributeTypes

@Suite("Writingsuggestions Test")
struct WritingsuggestionsTests {
    @Test("Writingsuggestions attribute should be writingsuggestions")
    func attribute() {
        #expect(Writingsuggestions.attribute == "writingsuggestions")
    }
    
    @Test("Writingsuggestions description should match the spec")
    func description() {
        #expect(Writingsuggestions.true.description == "true")
        #expect(Writingsuggestions.false.description == "false")
    }
}