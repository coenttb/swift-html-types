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

@dynamicMemberLookup
private struct TestStringAttribute: HTMLStringAttribute {
    static var attribute: String { "test-attr" }

    let rawValue: String

    init(value: String) {
        self.rawValue = value
    }
}

@Suite("StringAttribute Test")
struct StringAttributeTests {

    @Test("Attribute name is correct")
    func attributeName() {
        #expect(TestStringAttribute.attribute == "test-attr")
    }

    @Test("Init with value stores rawValue correctly")
    func initWithValue() {
        let attr = TestStringAttribute(value: "container")
        #expect(attr.rawValue == "container")
    }

    @Test("Convenience init stores value correctly")
    func convenienceInit() {
        let attr = TestStringAttribute("button primary")
        #expect(attr.rawValue == "button primary")
    }

    @Test("String literal initialization")
    func stringLiteralInit() {
        let attr: TestStringAttribute = "navbar"
        #expect(attr.rawValue == "navbar")
    }

    @Test("RawRepresentable init with valid value")
    func rawRepresentableInit() {
        let attr = TestStringAttribute(rawValue: "modal")
        #expect(attr?.rawValue == "modal")
    }

    @Test("Description returns rawValue")
    func description() {
        let attr = TestStringAttribute(value: "header")
        #expect(attr.description == "header")
    }

    @Test("Dynamic member lookup for String properties")
    func dynamicMemberLookup() {
        let attr = TestStringAttribute(value: "hello world")
        #expect(attr.count == 11)
        #expect(attr.isEmpty == false)
        //        #expect(attr.uppercased() == "HELLO WORLD")
        //        #expect(attr.lowercased() == "hello world")
    }

    @Test("Dynamic member lookup with empty string")
    func dynamicMemberLookupEmpty() {
        let attr = TestStringAttribute(value: "")
        #expect(attr.isEmpty == true)
        #expect(attr.isEmpty)
    }

    @Test("Equality comparison")
    func equality() {
        let attr1 = TestStringAttribute(value: "container")
        let attr2 = TestStringAttribute(value: "container")
        let attr3 = TestStringAttribute(value: "wrapper")

        #expect(attr1 == attr2)
        #expect(attr1 != attr3)
    }

    @Test("Empty string value")
    func emptyStringValue() {
        let attr = TestStringAttribute(value: "")
        #expect(attr.rawValue == "")
        #expect(attr.description == "")
    }

    @Test("String with spaces")
    func stringWithSpaces() {
        let attr = TestStringAttribute(value: "nav item active")
        #expect(attr.rawValue == "nav item active")
    }

    @Test("String with special characters")
    func stringWithSpecialChars() {
        let attr = TestStringAttribute(value: "btn-primary_large")
        #expect(attr.rawValue == "btn-primary_large")
    }

    @Test("String interpolation works")
    func stringInterpolation() {
        let attr = TestStringAttribute(value: "item-1")
        let message = "Attribute: \(attr)"
        #expect(message == "Attribute: item-1")
    }

    @Test("Sendable conformance (compile-time check)")
    func sendableConformance() {
        let attr = TestStringAttribute(value: "test")

        Task {
            _ = attr
        }
    }

    @Test("Unicode string support")
    func unicodeString() {
        let attr = TestStringAttribute(value: "测试-класс")
        #expect(attr.rawValue == "测试-класс")
    }

    @Test("Long string value")
    func longStringValue() {
        let longValue = String(repeating: "test ", count: 100).trimmingCharacters(in: .whitespaces)
        let attr = TestStringAttribute(value: longValue)
        #expect(attr.rawValue == longValue)
    }

    @Test("Any StringAttribute type erasure")
    func anyStringAttribute() {
        let attr: any HTMLStringAttribute = TestStringAttribute(value: "type-erased")
        #expect(attr.rawValue == "type-erased")
        #expect(attr.description == "type-erased")
    }

    @Test("Any StringAttribute equality through protocol")
    func anyStringAttributeEquality() {
        let attr1: any HTMLStringAttribute = TestStringAttribute(value: "same")
        let attr2: any HTMLStringAttribute = TestStringAttribute(value: "same")
        let attr3: any HTMLStringAttribute = TestStringAttribute(value: "different")

        #expect(attr1.rawValue == attr2.rawValue)
        #expect(attr1.rawValue != attr3.rawValue)
    }
}
