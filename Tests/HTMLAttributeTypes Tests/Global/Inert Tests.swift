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

@Suite("Inert Test")
struct InertTests {
    @Test("Inert attribute should be inert")
    func attribute() {
        #expect(Inert.attribute == "inert")
    }
}
