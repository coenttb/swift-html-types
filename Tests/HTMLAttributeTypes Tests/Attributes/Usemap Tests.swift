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

@Suite("Usemap Test")
struct UsemapTests {
    @Test("Usemap attribute should be usemap")
    func attribute() {
        #expect(Usemap.attribute == "usemap")
    }

    @Test("Usemap should automatically add # prefix")
    func hashPrefix() {
        let withoutHash = Usemap("planetmap")
        #expect(withoutHash.rawValue == "#planetmap")

        let withHash = Usemap("#planetmap")
        #expect(withHash.rawValue == "#planetmap")
    }

    @Test("Usemap should support string literal")
    func stringLiteral() {
        let usemap: Usemap = "mymap"
        #expect(usemap.rawValue == "#mymap")
    }
}
