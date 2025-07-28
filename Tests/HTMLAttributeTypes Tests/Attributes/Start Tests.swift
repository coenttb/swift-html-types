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

@Suite("Start Test")
struct StartTests {
    @Test("Start attribute should be start")
    func attribute() {
        #expect(Start.attribute == "start")
    }

    @Test("Start should support integer initialization")
    func integerInitialization() {
        let start = Start(4)
        #expect(start.rawValue == "4")
    }

    @Test("Start should support integer literal")
    func integerLiteral() {
        let start: Start = 10
        #expect(start.rawValue == "10")
    }
}
