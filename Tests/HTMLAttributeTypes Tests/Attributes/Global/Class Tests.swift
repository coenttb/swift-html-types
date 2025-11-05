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

@Suite("Class Test")
struct ClassTests {
    @Test("Class attribute should be class")
    func attribute() {
        #expect(Class.attribute == "class")
    }

    @Test("Class description should reflect the initialized values")
    func description() {
        let singleClass: Class = Class("header")
        #expect(singleClass.description == "header")

        let multipleClasses: Class = ["header", "large", "primary"]
        #expect(multipleClasses.description == "header large primary")

        let emptyClass = Class("")
        #expect(emptyClass.description == "")
    }

    @Test("Class can be initialized with single string or array of strings")
    func initialization() {
        let singleClass: Class = ("header")
        let arrayClass: Class = ["header"]
        #expect(singleClass.description == arrayClass.description)

        let multipleClasses: Class = Class("header large primary")
        let arrayMultipleClasses: Class = ["header", "large", "primary"]
        #expect(multipleClasses.description == arrayMultipleClasses.description)
    }
}
