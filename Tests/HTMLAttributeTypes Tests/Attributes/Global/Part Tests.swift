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

import HTMLAttributeTypes
import Testing

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
    import Foundation
#endif

@Suite("Part Test")
struct PartTests {
    @Test("Part attribute should be part")
    func attribute() {
        #expect(Part.attribute == "part")
    }

    @Test("Part description should reflect the initialized values")
    func description() {
        let singlePart = Part("header")
        #expect(singlePart.description == "header")

        let multipleParts: Part = ["header", "title"]
        #expect(multipleParts.description == "header title")

        let emptyPart = Part("")
        #expect(emptyPart.description == "")
    }

    @Test("Part can be initialized with single string or array of strings")
    func initialization() {
        let singlePart: Part = "header"
        let arrayPart: Part = "header"
        #expect(singlePart.description == arrayPart.description)

        let multipleParts: Part = ["header", "title"]
        #expect(multipleParts.description == "header title")
    }
}
