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

@Suite("Capture Test")
struct CaptureTests {
    @Test("Capture attribute should be capture")
    func attribute() {
        #expect(Capture.attribute == "capture")
    }

    @Test("Capture convenience properties")
    func convenienceProperties() {
        #expect(Capture.user.rawValue == "user")
        #expect(Capture.environment.rawValue == "environment")
    }
}
