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

@Suite("Action Test")
struct ActionTests {
    @Test("Action attribute should be action")
    func attribute() {
        #expect(Action.attribute == "action")
    }

    @Test("Action relative path factory")
    func relativePath() {
        #expect(Action.relative("submit").rawValue == "/submit")
        #expect(Action.relative("/submit").rawValue == "/submit")
    }

    @Test("Action absolute URL factory")
    func absoluteURL() {
        #expect(
            Action.absolute("https://example.com/submit").rawValue == "https://example.com/submit"
        )
    }

    @Test("Action convenience properties")
    func convenienceProperties() {
        #expect(Action.current.rawValue == ".")
        #expect(Action.clientSide.rawValue == "#")
    }
}
