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

@Suite("Allowfullscreen Test")
struct AllowfullscreenTests {
    @Test("Allowfullscreen attribute should be allowfullscreen")
    func attribute() {
        #expect(Allowfullscreen.attribute == "allowfullscreen")
    }
}