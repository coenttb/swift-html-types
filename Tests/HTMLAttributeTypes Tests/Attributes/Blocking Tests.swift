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

@Suite("Blocking Test")
struct BlockingTests {
    @Test("Blocking attribute should be blocking")
    func attribute() {
        #expect(Blocking.attribute == "blocking")
    }

    @Test("Blocking should have render preset")
    func renderPreset() {
        #expect(Blocking.render.rawValue == "render")
    }
}
