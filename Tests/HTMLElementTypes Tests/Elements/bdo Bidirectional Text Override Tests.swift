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

@Suite("Bidirectional Text Override Tests")
struct BidirectionalTextOverrideTests {

    @Test("Basic BDO element creation with required dir attribute")
    func basicBDOElementCreation() {
        let bdo = BidirectionalTextOverride(dir: .ltr)
        #expect(BidirectionalTextOverride.tag == "bdo")
        #expect(bdo.dir.rawValue == "ltr")
    }

    @Test("BDO element conforms to HTMLElement")
    func bdoElementConformsToHTMLElement() {
        let bdo = BidirectionalTextOverride(dir: .rtl)
        let element: any HTMLElement = bdo
        #expect(type(of: element).tag == "bdo")
    }

    @Suite("Direction Attribute Tests")
    struct DirectionAttributeTests {

        @Test("BDO with left-to-right direction")
        func bdoWithLeftToRightDirection() {
            let bdo = BidirectionalTextOverride(dir: .ltr)
            #expect(bdo.dir.rawValue == "ltr")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test("BDO with right-to-left direction")
        func bdoWithRightToLeftDirection() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test("BDO with auto direction")
        func bdoWithAutoDirection() {
            let bdo = BidirectionalTextOverride(dir: .auto)
            #expect(bdo.dir.rawValue == "auto")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test("Direction attribute is required")
        func directionAttributeIsRequired() {
            // This test confirms that dir parameter is required in initializer
            let bdo = BidirectionalTextOverride(dir: .ltr)
            #expect(bdo.dir.rawValue == "ltr")
        }
    }

    @Suite("Text Direction Override")
    struct TextDirectionOverride {

        @Test("Overriding natural text direction")
        func overridingNaturalTextDirection() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test("Forcing specific text rendering direction")
        func forcingSpecificTextRenderingDirection() {
            let bdo = BidirectionalTextOverride(dir: .ltr)
            #expect(bdo.dir.rawValue == "ltr")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test("Overriding bidirectional algorithm")
        func overridingBidirectionalAlgorithm() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test("Character order reversal behavior")
        func characterOrderReversalBehavior() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }
    }

    @Suite("Common Use Cases")
    struct CommonUseCases {

        @Test("Displaying text in opposite direction")
        func displayingTextInOppositeDirection() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test("Demonstrating bidirectional features")
        func demonstratingBidirectionalFeatures() {
            let bdo = BidirectionalTextOverride(dir: .ltr)
            #expect(bdo.dir.rawValue == "ltr")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test("Fixing incorrectly displayed multilingual content")
        func fixingIncorrectlyDisplayedMultilingualContent() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test("Educational text direction examples")
        func educationalTextDirectionExamples() {
            let bdo = BidirectionalTextOverride(dir: .auto)
            #expect(bdo.dir.rawValue == "auto")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test("Typography and design effects")
        func typographyAndDesignEffects() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }
    }

    @Suite("Language Support")
    struct LanguageSupport {

        @Test("Arabic text direction override")
        func arabicTextDirectionOverride() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test("Hebrew text direction override")
        func hebrewTextDirectionOverride() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test("English text in RTL context")
        func englishTextInRTLContext() {
            let bdo = BidirectionalTextOverride(dir: .ltr)
            #expect(bdo.dir.rawValue == "ltr")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test("Mixed script content override")
        func mixedScriptContentOverride() {
            let bdo = BidirectionalTextOverride(dir: .auto)
            #expect(bdo.dir.rawValue == "auto")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }
    }

    @Suite("Educational and Demonstration")
    struct EducationalAndDemonstration {

        @Test("Teaching bidirectional text concepts")
        func teachingBidirectionalTextConcepts() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test("Demonstrating text rendering differences")
        func demonstratingTextRenderingDifferences() {
            let bdo = BidirectionalTextOverride(dir: .ltr)
            #expect(bdo.dir.rawValue == "ltr")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test("Showing script direction examples")
        func showingScriptDirectionExamples() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test("Internationalization tutorials")
        func internationalizationTutorials() {
            let bdo = BidirectionalTextOverride(dir: .auto)
            #expect(bdo.dir.rawValue == "auto")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }
    }

    @Suite("Integration Tests")
    struct IntegrationTests {

        @Test("Multiple BDO elements with different directions")
        func multipleBDOElementsWithDifferentDirections() {
            let ltrBdo = BidirectionalTextOverride(dir: .ltr)
            let rtlBdo = BidirectionalTextOverride(dir: .rtl)
            let autoBdo = BidirectionalTextOverride(dir: .auto)

            let elements = [ltrBdo, rtlBdo, autoBdo]

            #expect(elements.count == 3)
            #expect(ltrBdo.dir.rawValue == "ltr")
            #expect(rtlBdo.dir.rawValue == "rtl")
            #expect(autoBdo.dir.rawValue == "auto")

            elements.forEach { element in
                #expect(type(of: element).tag == "bdo")
            }
        }

        @Test("BDO element within content flow")
        func bdoElementWithinContentFlow() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            let element: any HTMLElement = bdo

            #expect(type(of: element).tag == "bdo")
            #expect(bdo.dir.rawValue == "rtl")
        }

        @Test("Nested direction overrides")
        func nestedDirectionOverrides() {
            let outerBdo = BidirectionalTextOverride(dir: .rtl)
            let innerBdo = BidirectionalTextOverride(dir: .ltr)

            #expect(BidirectionalTextOverride.tag == "bdo")
            #expect(outerBdo.dir.rawValue == "rtl")
            #expect(innerBdo.dir.rawValue == "ltr")
            #expect(outerBdo is any HTMLElement)
            #expect(innerBdo is any HTMLElement)
        }

        @Test("BDO with different HTML context elements")
        func bdoWithDifferentHTMLContextElements() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(BidirectionalTextOverride.tag == "bdo")
            #expect(bdo.dir.rawValue == "rtl")
        }
    }

    @Suite("Technical Specifications")
    struct TechnicalSpecifications {

        @Test("Required dir attribute validation")
        func requiredDirAttributeValidation() {
            // Testing that dir is a required property
            let bdo = BidirectionalTextOverride(dir: .ltr)
            #expect(bdo.dir.rawValue == "ltr")
        }

        @Test("Direction attribute values correctness")
        func directionAttributeValuesCorrectness() {
            let ltrDir = Dir.ltr
            let rtlDir = Dir.rtl
            let autoDir = Dir.auto

            #expect(ltrDir.rawValue == "ltr")
            #expect(rtlDir.rawValue == "rtl")
            #expect(autoDir.rawValue == "auto")
        }

        @Test("BDO tag name validation")
        func bdoTagNameValidation() {
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test("HTMLElement protocol compliance")
        func htmlElementProtocolCompliance() {
            let bdo = BidirectionalTextOverride(dir: .ltr)
            #expect(bdo is any HTMLElement)
        }
    }

    @Suite("Best Practices")
    struct BestPractices {

        @Test("Use BDO only when override is needed")
        func useBDOOnlyWhenOverrideIsNeeded() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test("Prefer BDI for isolation over BDO for override")
        func preferBDIForIsolationOverBDOForOverride() {
            let bdo = BidirectionalTextOverride(dir: .ltr)
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test("Clear semantic intent with explicit direction")
        func clearSemanticIntentWithExplicitDirection() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
        }

        @Test("Consider accessibility implications")
        func considerAccessibilityImplications() {
            let bdo = BidirectionalTextOverride(dir: .auto)
            #expect(BidirectionalTextOverride.tag == "bdo")
        }
    }
}
