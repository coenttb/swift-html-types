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

@Suite("FrameBorder Test")
struct FrameBorderTests {
    @Test("FrameBorder attribute should be frameborder")
    func attribute() {
        #expect(FrameBorder.attribute == "frameborder")
    }

    @Test("FrameBorder should support integer literal")
    func integerLiteral() {
        let frameBorder: FrameBorder = 1
        #expect(frameBorder.rawValue == "1")
    }
}
