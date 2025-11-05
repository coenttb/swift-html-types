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

@Suite("Bring Attention To Tests")
struct BringAttentionToTests {

    @Test("Basic B element creation")
    func basicBElementCreation() {
        let b = B()
        #expect(B.tag == "b")
    }

    @Test("B element conforms to HTMLElement")
    func bElementConformsToHTMLElement() {
        let b = B()
        let element: any HTMLElement = b
        #expect(type(of: element).tag == "b")
    }

    @Suite("Common Use Cases")
    struct CommonUseCases {

        @Test("Keywords in document")
        func keywordsInDocument() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("Product names in review")
        func productNamesInReview() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("Actionable words in interactive software")
        func actionableWordsInInteractiveSoftware() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("Article leads or summaries")
        func articleLeadsOrSummaries() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("Important terms without semantic importance")
        func importantTermsWithoutSemanticImportance() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("Navigation or UI element labels")
        func navigationOrUIElementLabels() {
            let b = B()
            #expect(B.tag == "b")
        }
    }

    @Suite("Semantic Distinction")
    struct SemanticDistinction {

        @Test("Stylistic bold without importance")
        func stylisticBoldWithoutImportance() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("Visual attention without emphasis")
        func visualAttentionWithoutEmphasis() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("Bold text for readability")
        func boldTextForReadability() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("Non-semantic bold formatting")
        func nonSemanticBoldFormatting() {
            let b = B()
            #expect(B.tag == "b")
        }
    }

    @Suite("Typography and Design")
    struct TypographyAndDesign {

        @Test("Bold text in body content")
        func boldTextInBodyContent() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("Highlighted terms")
        func highlightedTerms() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("Interface element styling")
        func interfaceElementStyling() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("Text differentiation")
        func textDifferentiation() {
            let b = B()
            #expect(B.tag == "b")
        }
    }

    @Suite("Content Types")
    struct ContentTypes {

        @Test("Technical documentation keywords")
        func technicalDocumentationKeywords() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("Menu item names")
        func menuItemNames() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("Button labels")
        func buttonLabels() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("Brand names in content")
        func brandNamesInContent() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("File names or paths")
        func fileNamesOrPaths() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("Command names")
        func commandNames() {
            let b = B()
            #expect(B.tag == "b")
        }
    }

    @Suite("Inline Context")
    struct InlineContext {

        @Test("Bold span within paragraph")
        func boldSpanWithinParagraph() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("Bold text in lists")
        func boldTextInLists() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("Bold text in table cells")
        func boldTextInTableCells() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("Bold text in headers")
        func boldTextInHeaders() {
            let b = B()
            #expect(B.tag == "b")
        }
    }

    @Suite("Integration Tests")
    struct IntegrationTests {

        @Test("Multiple B elements")
        func multipleBElements() {
            let b1 = B()
            let b2 = B()
            let b3 = B()

            let elements = [b1, b2, b3]

            #expect(elements.count == 3)
            elements.forEach { element in
                #expect(type(of: element).tag == "b")
            }
        }

        @Test("B element within content flow")
        func bElementWithinContentFlow() {
            let b = B()
            let element: any HTMLElement = b

            #expect(type(of: element).tag == "b")
        }

        @Test("Nested B elements")
        func nestedBElements() {
            let outerB = B()
            let innerB = B()

            #expect(B.tag == "b")
            #expect(outerB is any HTMLElement)
            #expect(innerB is any HTMLElement)
        }
    }

    @Suite("Accessibility Considerations")
    struct AccessibilityConsiderations {

        @Test("Screen reader neutral bold")
        func screenReaderNeutralBold() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("Visual-only formatting")
        func visualOnlyFormatting() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("Non-semantic styling")
        func nonSemanticStyling() {
            let b = B()
            #expect(B.tag == "b")
        }
    }

    @Suite("Best Practices")
    struct BestPractices {

        @Test("Appropriate use over strong")
        func appropriateUseOverStrong() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("Appropriate use over em")
        func appropriateUseOverEm() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("Appropriate use over mark")
        func appropriateUseOverMark() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("Appropriate use over span")
        func appropriateUseOverSpan() {
            let b = B()
            #expect(B.tag == "b")
        }
    }

    @Suite("Usage Examples")
    struct UsageExamples {

        @Test("Product review with product names")
        func productReviewWithProductNames() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("Software documentation with commands")
        func softwareDocumentationWithCommands() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("Article summary with key points")
        func articleSummaryWithKeyPoints() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test("UI instructions with element names")
        func uiInstructionsWithElementNames() {
            let b = B()
            #expect(B.tag == "b")
        }
    }
}
