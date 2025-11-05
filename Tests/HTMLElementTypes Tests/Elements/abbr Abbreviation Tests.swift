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
import HTMLElementTypes
import Testing

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
    import Foundation
#endif

@Suite("Abbreviation Tests")
struct AbbreviationTests {

    @Test("Basic abbreviation creation")
    func basicAbbreviationCreation() {
        let abbreviation = Abbreviation()
        #expect(Abbreviation.tag == "abbr")
    }

    @Test("Abbreviation conforms to HTMLElement")
    func abbreviationConformsToHTMLElement() {
        let abbreviation = Abbreviation()
        let element: any HTMLElement = abbreviation
        #expect(type(of: element).tag == "abbr")
    }

    @Test("Abbreviation is equatable")
    func abbreviationIsEquatable() {
        let abbreviation1 = Abbreviation()
        let abbreviation2 = Abbreviation()
        #expect(abbreviation1 == abbreviation2)
    }

    @Test("Abbreviation is sendable")
    func abbreviationIsSendable() {
        let abbreviation = Abbreviation()

        Task {
            _ = abbreviation
        }

        #expect(abbreviation == Abbreviation())
    }

    @Suite("Common Use Cases")
    struct CommonUseCases {

        @Test("Technical abbreviation")
        func technicalAbbreviation() {
            let abbreviation = Abbreviation()
            #expect(abbreviation == Abbreviation())
        }

        @Test("Business abbreviation")
        func businessAbbreviation() {
            let abbreviation = Abbreviation()
            #expect(abbreviation == Abbreviation())
        }

        @Test("Government abbreviation")
        func governmentAbbreviation() {
            let abbreviation = Abbreviation()
            #expect(abbreviation == Abbreviation())
        }

        @Test("Medical abbreviation")
        func medicalAbbreviation() {
            let abbreviation = Abbreviation()
            #expect(abbreviation == Abbreviation())
        }

        @Test("Academic abbreviation")
        func academicAbbreviation() {
            let abbreviation = Abbreviation()
            #expect(abbreviation == Abbreviation())
        }
    }

    @Suite("Semantic Usage")
    struct SemanticUsage {

        @Test("Acronym usage")
        func acronymUsage() {
            let abbreviation = Abbreviation()
            #expect(abbreviation == Abbreviation())
        }

        @Test("Initialism usage")
        func initialismUsage() {
            let abbreviation = Abbreviation()
            #expect(abbreviation == Abbreviation())
        }

        @Test("Shortened form usage")
        func shortenedFormUsage() {
            let abbreviation = Abbreviation()
            #expect(abbreviation == Abbreviation())
        }

        @Test("Symbol usage")
        func symbolUsage() {
            let abbreviation = Abbreviation()
            #expect(abbreviation == Abbreviation())
        }
    }

    @Suite("Best Practices Validation")
    struct BestPracticesValidation {

        @Test("Simple abbreviation element")
        func simpleAbbreviationElement() {
            let abbreviation = Abbreviation()
            #expect(abbreviation == Abbreviation())
        }

        @Test("Consistent abbreviation structure")
        func consistentAbbreviationStructure() {
            let abbreviation1 = Abbreviation()
            let abbreviation2 = Abbreviation()
            #expect(abbreviation1 == abbreviation2)
        }

        @Test("Multiple abbreviations")
        func multipleAbbreviations() {
            let htmlAbbr = Abbreviation()
            let cssAbbr = Abbreviation()
            let jsAbbr = Abbreviation()

            #expect(htmlAbbr == cssAbbr)
            #expect(cssAbbr == jsAbbr)
            #expect(htmlAbbr == jsAbbr)
        }
    }

    @Suite("Element Properties")
    struct ElementProperties {

        @Test("Tag name is correct")
        func tagNameIsCorrect() {
            #expect(Abbreviation.tag == "abbr")
        }

        @Test("Element creation is consistent")
        func elementCreationIsConsistent() {
            let abbreviation1 = Abbreviation()
            let abbreviation2 = Abbreviation()
            #expect(abbreviation1 == abbreviation2)
        }

        @Test("Element has no mutable state")
        func elementHasNoMutableState() {
            let abbreviation = Abbreviation()
            let copy = abbreviation
            #expect(abbreviation == copy)
        }
    }

    @Suite("Integration Tests")
    struct IntegrationTests {

        @Test("Can be used in collections")
        func canBeUsedInCollections() {
            let abbreviations = [
                Abbreviation(),
                Abbreviation(),
                Abbreviation(),
            ]

            #expect(abbreviations.count == 3)
            #expect(abbreviations.allSatisfy { $0 == Abbreviation() })
        }

        @Test("Can be used as dictionary values")
        func canBeUsedAsDictionaryValues() {
            let abbreviationMap: [String: Abbreviation] = [
                "HTML": Abbreviation(),
                "CSS": Abbreviation(),
                "JS": Abbreviation(),
            ]

            #expect(abbreviationMap.count == 3)
            #expect(abbreviationMap.values.allSatisfy { $0 == Abbreviation() })
        }

        @Test("Can be used in optional contexts")
        func canBeUsedInOptionalContexts() {
            let maybeAbbreviation: Abbreviation? = Abbreviation()
            let noAbbreviation: Abbreviation? = nil

            #expect(maybeAbbreviation != nil)
            #expect(maybeAbbreviation == Abbreviation())
            #expect(noAbbreviation == nil)
        }
    }
}
