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

@Suite("Preload Test")
struct PreloadTests {
    @Test("Preload attribute should be preload")
    func attribute() {
        #expect(Preload.attribute == "preload")
    }

    @Test("Preload convenience properties")
    func convenienceProperties() {
        #expect(Preload.none.rawValue == "none")
        #expect(Preload.metadata.rawValue == "metadata")
        #expect(Preload.auto.rawValue == "auto")
    }
}
