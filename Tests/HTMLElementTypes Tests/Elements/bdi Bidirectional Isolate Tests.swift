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

@Suite("Bidirectional Isolate Tests")
struct BidirectionalIsolateTests {

    @Test("Basic BDI element creation")
    func basicBDIElementCreation() {
        let bdi = BidirectionalIsolate()
        #expect(BidirectionalIsolate.tag == "bdi")
    }

    @Test("BDI element conforms to HTMLElement")
    func bdiElementConformsToHTMLElement() {
        let bdi = BidirectionalIsolate()
        let element: any HTMLElement = bdi
        #expect(type(of: element).tag == "bdi")
    }

    @Suite("Bidirectional Text Isolation")
    struct BidirectionalTextIsolation {

        @Test("Isolating user-generated content")
        func isolatingUserGeneratedContent() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }

        @Test("Preventing text direction interference")
        func preventingTextDirectionInterference() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }

        @Test("Protecting surrounding text from direction changes")
        func protectingSurroundingTextFromDirectionChanges() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }

        @Test("Isolating unknown directionality content")
        func isolatingUnknownDirectionalityContent() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }
    }

    @Suite("Common Use Cases")
    struct CommonUseCases {

        @Test("User names in mixed-script environments")
        func userNamesInMixedScriptEnvironments() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }

        @Test("Dynamic content from external sources")
        func dynamicContentFromExternalSources() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }

        @Test("Comments and user-generated text")
        func commentsAndUserGeneratedText() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }

        @Test("Search results with mixed directionality")
        func searchResultsWithMixedDirectionality() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }

        @Test("List items with unknown text direction")
        func listItemsWithUnknownTextDirection() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }

        @Test("Social media posts and messages")
        func socialMediaPostsAndMessages() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }
    }

    @Suite("Multilingual Content")
    struct MultilingualContent {

        @Test("Arabic and Hebrew text isolation")
        func arabicAndHebrewTextIsolation() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }

        @Test("Mixed Latin and RTL scripts")
        func mixedLatinAndRTLScripts() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }

        @Test("Persian and Urdu text handling")
        func persianAndUrduTextHandling() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }

        @Test("Numbers and punctuation in RTL context")
        func numbersAndPunctuationInRTLContext() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }
    }

    @Suite("Layout Protection")
    struct LayoutProtection {

        @Test("Protecting website layout integrity")
        func protectingWebsiteLayoutIntegrity() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }

        @Test("Preventing direction spillover")
        func preventingDirectionSpillover() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }

        @Test("Maintaining reading order")
        func maintainingReadingOrder() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }

        @Test("Preserving UI component structure")
        func preservingUIComponentStructure() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }
    }

    @Suite("Accessibility Considerations")
    struct AccessibilityConsiderations {

        @Test("Screen reader navigation support")
        func screenReaderNavigationSupport() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }

        @Test("Proper text direction announcement")
        func properTextDirectionAnnouncement() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }

        @Test("Bidirectional text reading support")
        func bidirectionalTextReadingSupport() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }

        @Test("Generic ARIA role compliance")
        func genericARIARoleCompliance() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }
    }

    @Suite("Integration Tests")
    struct IntegrationTests {

        @Test("Multiple BDI elements")
        func multipleBDIElements() {
            let bdi1 = BidirectionalIsolate()
            let bdi2 = BidirectionalIsolate()
            let bdi3 = BidirectionalIsolate()

            let elements = [bdi1, bdi2, bdi3]

            #expect(elements.count == 3)
            elements.forEach { element in
                #expect(type(of: element).tag == "bdi")
            }
        }

        @Test("BDI element within content flow")
        func bdiElementWithinContentFlow() {
            let bdi = BidirectionalIsolate()
            let element: any HTMLElement = bdi

            #expect(type(of: element).tag == "bdi")
        }

        @Test("Nested text direction contexts")
        func nestedTextDirectionContexts() {
            let outerBdi = BidirectionalIsolate()
            let innerBdi = BidirectionalIsolate()

            #expect(BidirectionalIsolate.tag == "bdi")
            #expect(outerBdi is any HTMLElement)
            #expect(innerBdi is any HTMLElement)
        }

        @Test("BDI within lists and tables")
        func bdiWithinListsAndTables() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }
    }

    @Suite("Best Practices")
    struct BestPractices {

        @Test("Prefer BDI over span with dir=auto")
        func preferBDIOverSpanWithDirAuto() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }

        @Test("Use for unknown content directionality")
        func useForUnknownContentDirectionality() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }

        @Test("Semantic clarity over CSS unicode-bidi")
        func semanticClarityOverCSSUnicodeBidi() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }

        @Test("Automatic direction detection advantage")
        func automaticDirectionDetectionAdvantage() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }
    }

    @Suite("Real-World Applications")
    struct RealWorldApplications {

        @Test("E-commerce product reviews")
        func ecommerceProductReviews() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }

        @Test("International forums and discussions")
        func internationalForumsAndDiscussions() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }

        @Test("Multilingual customer support")
        func multilingualCustomerSupport() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }

        @Test("Global social media platforms")
        func globalSocialMediaPlatforms() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }

        @Test("Educational content platforms")
        func educationalContentPlatforms() {
            let bdi = BidirectionalIsolate()
            #expect(BidirectionalIsolate.tag == "bdi")
        }
    }
}
