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

@Suite("Dirname Test")
struct DirnameTests {
    @Test("Dirname attribute should be dirname")
    func attribute() {
        #expect(Dirname.attribute == "dirname")
    }

    @Test("Dirname should support initialization based on element name")
    func basedOnElementName() {
        let dirname = Dirname(basedOn: "comment")
        #expect(dirname.rawValue == "comment-direction")

        let dirnameCustomSuffix = Dirname(basedOn: "message", suffix: "-dir")
        #expect(dirnameCustomSuffix.rawValue == "message-dir")
    }
}
