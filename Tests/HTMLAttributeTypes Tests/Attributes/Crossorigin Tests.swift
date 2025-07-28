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

@Suite("Crossorigin Test")
struct CrossoriginTests {
    @Test("Crossorigin attribute should be crossorigin")
    func attribute() {
        #expect(Crossorigin.attribute == "crossorigin")
    }

    @Test("Crossorigin convenience properties")
    func convenienceProperties() {
        #expect(Crossorigin.anonymous.rawValue == "anonymous")
        #expect(Crossorigin.useCredentials.rawValue == "use-credentials")
    }
}
