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

private struct TestAttribute: HTMLAttribute {
    static var attribute: String { "test-attribute" }

    let value: String

    init(_ value: String) {
        self.value = value
    }
}

private struct NumericTestAttribute: HTMLAttribute {
    static var attribute: String { "numeric-test" }

    let value: Int

    init(_ value: Int) {
        self.value = value
    }
}

@Suite("Attribute Protocol Tests")
struct AttributeTests {

    @Test("Attribute has correct static attribute name")
    func attributeName() {
        #expect(TestAttribute.attribute == "test-attribute")
        #expect(NumericTestAttribute.attribute == "numeric-test")
    }

    @Test("Attribute is Sendable")
    func sendableConformance() {
        let attr = TestAttribute("test")

        Task {
            _ = attr
        }
    }

    @Test("Attribute supports equality comparison")
    func equality() {
        let attr1 = TestAttribute("same")
        let attr2 = TestAttribute("same")
        let attr3 = TestAttribute("different")

        #expect(attr1 == attr2)
        #expect(attr1 != attr3)

        let numAttr1 = NumericTestAttribute(42)
        let numAttr2 = NumericTestAttribute(42)
        let numAttr3 = NumericTestAttribute(24)

        #expect(numAttr1 == numAttr2)
        #expect(numAttr1 != numAttr3)
    }
}
