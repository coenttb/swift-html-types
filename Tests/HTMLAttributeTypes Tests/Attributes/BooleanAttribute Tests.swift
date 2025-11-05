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
private struct TestBooleanAttribute: HTMLBooleanAttribute {
    static var attribute: String { "test-bool-attr" }

    var rawValue: Bool

    init(value: Bool) {
        self.rawValue = value
    }
}

@Suite("BooleanAttribute Test")
struct BooleanAttributeTests {

    @Test("Attribute name is correct")
    func attributeName() {
        #expect(TestBooleanAttribute.attribute == "test-bool-attr")
    }

    @Test("Init with true value stores rawValue correctly")
    func initWithTrueValue() {
        let attr = TestBooleanAttribute(value: true)
        #expect(attr.rawValue == true)
    }

    @Test("Init with false value stores rawValue correctly")
    func initWithFalseValue() {
        let attr = TestBooleanAttribute(value: false)
        #expect(attr.rawValue == false)
    }

    @Test("Boolean literal initialization with true")
    func booleanLiteralInitTrue() {
        let attr: TestBooleanAttribute = true
        #expect(attr.rawValue == true)
    }

    @Test("Boolean literal initialization with false")
    func booleanLiteralInitFalse() {
        let attr: TestBooleanAttribute = false
        #expect(attr.rawValue == false)
    }

    @Test("RawRepresentable init with true value")
    func rawRepresentableInitTrue() {
        let attr = TestBooleanAttribute(rawValue: true)
        #expect(attr?.rawValue == true)
    }

    @Test("RawRepresentable init with false value")
    func rawRepresentableInitFalse() {
        let attr = TestBooleanAttribute(rawValue: false)
        #expect(attr?.rawValue == false)
    }

    @Test("Description returns correct string for true")
    func descriptionTrue() {
        let attr = TestBooleanAttribute(value: true)
        #expect(attr.description == "true")
    }

    @Test("Description returns correct string for false")
    func descriptionFalse() {
        let attr = TestBooleanAttribute(value: false)
        #expect(attr.description == "false")
    }

    @Test("Dynamic member lookup for Bool properties")
    func dynamicMemberLookup() {
        let trueAttr = TestBooleanAttribute(value: true)
        let falseAttr = TestBooleanAttribute(value: false)

        #expect(trueAttr.hashValue == true.hashValue)
        #expect(falseAttr.hashValue == false.hashValue)
    }

    @Test("CaseIterable conformance")
    func caseIterable() {
        let allCases = TestBooleanAttribute.allCases
        #expect(allCases.count == 2)
        #expect(allCases.contains { $0.rawValue == true })
        #expect(allCases.contains { $0.rawValue == false })
    }

    @Test("CaseIterable all cases are correct")
    func caseIterableValues() {
        let allCases = TestBooleanAttribute.allCases
        let values = Set(allCases.map(\.rawValue))
        #expect(values == Set([true, false]))
    }

    @Test("Equality comparison")
    func equality() {
        let trueAttr1 = TestBooleanAttribute(value: true)
        let trueAttr2 = TestBooleanAttribute(value: true)
        let falseAttr = TestBooleanAttribute(value: false)

        #expect(trueAttr1 == trueAttr2)
        #expect(trueAttr1 != falseAttr)
        #expect(trueAttr2 != falseAttr)
    }

    @Test("Sendable conformance (compile-time check)")
    func sendableConformance() {
        let attr = TestBooleanAttribute(value: true)

        Task {
            _ = attr
        }
    }

    @Test("String interpolation works")
    func stringInterpolation() {
        let trueAttr = TestBooleanAttribute(value: true)
        let falseAttr = TestBooleanAttribute(value: false)

        let trueMessage = "Bool attribute: \(trueAttr)"
        let falseMessage = "Bool attribute: \(falseAttr)"

        #expect(trueMessage == "Bool attribute: true")
        #expect(falseMessage == "Bool attribute: false")
    }

    @Test("Any BooleanAttribute type erasure")
    func anyBooleanAttribute() {
        let trueAttr: any HTMLBooleanAttribute = TestBooleanAttribute(value: true)
        let falseAttr: any HTMLBooleanAttribute = TestBooleanAttribute(value: false)

        #expect(trueAttr.rawValue == true)
        #expect(falseAttr.rawValue == false)
        #expect(trueAttr.description == "true")
        #expect(falseAttr.description == "false")
    }

    @Test("Any BooleanAttribute equality through protocol")
    func anyBooleanAttributeEquality() {
        let trueAttr1: any HTMLBooleanAttribute = TestBooleanAttribute(value: true)
        let trueAttr2: any HTMLBooleanAttribute = TestBooleanAttribute(value: true)
        let falseAttr: any HTMLBooleanAttribute = TestBooleanAttribute(value: false)

        #expect(trueAttr1.rawValue == trueAttr2.rawValue)
        #expect(trueAttr1.rawValue != falseAttr.rawValue)
    }

    @Test("Any BooleanAttribute CaseIterable")
    func anyBooleanAttributeCaseIterable() {
        let allCases = TestBooleanAttribute.allCases
        let anyAllCases: [any HTMLBooleanAttribute] = allCases

        #expect(anyAllCases.count == 2)
        #expect(anyAllCases.map(\.rawValue).contains(true))
        #expect(anyAllCases.map(\.rawValue).contains(false))
    }

    @Test("Default value initialization pattern")
    func defaultValuePattern() {
        struct TestWithDefault: HTMLBooleanAttribute {
            static var attribute: String { "test-default" }
            var rawValue: Bool

            init(value: Bool = true) {
                self.rawValue = value
            }
        }

        let defaultAttr = TestWithDefault()
        #expect(defaultAttr.rawValue == true)

        let explicitTrue = TestWithDefault(value: true)
        #expect(explicitTrue.rawValue == true)

        let explicitFalse = TestWithDefault(value: false)
        #expect(explicitFalse.rawValue == false)
    }

    @Test("Boolean logic operations through dynamic member lookup")
    func booleanLogicOperations() {
        let trueAttr = TestBooleanAttribute(value: true)
        let falseAttr = TestBooleanAttribute(value: false)

        // Test that we can access Bool's properties through dynamic member lookup
        #expect(trueAttr.description == "true")
        #expect(falseAttr.description == "false")
    }
}
