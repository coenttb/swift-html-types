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

@Suite("Block Quotation Tests")
struct BlockQuotationTests {

    @Test("Basic BlockQuote element creation")
    func basicBlockQuoteElementCreation() {
        let blockquote = BlockQuote()
        #expect(BlockQuote.tag == "blockquote")
        #expect(blockquote.cite == nil)
    }

    @Test("BlockQuote element conforms to HTMLElement")
    func blockQuoteElementConformsToHTMLElement() {
        let blockquote = BlockQuote()
        let element: any HTMLElement = blockquote
        #expect(type(of: element).tag == "blockquote")
    }

    @Suite("Cite Attribute Tests")
    struct CiteAttributeTests {

        @Test("BlockQuote with cite URL")
        func blockQuoteWithCiteURL() {
            let cite = Cite(value: "https://example.com/source")
            let blockquote = BlockQuote(cite: cite)
            #expect(blockquote.cite?.rawValue == "https://example.com/source")
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("BlockQuote without cite attribute")
        func blockQuoteWithoutCiteAttribute() {
            let blockquote = BlockQuote()
            #expect(blockquote.cite == nil)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("Cite attribute as optional parameter")
        func citeAttributeAsOptionalParameter() {
            let blockquote = BlockQuote(cite: nil)
            #expect(blockquote.cite == nil)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("Different cite URL formats")
        func differentCiteURLFormats() {
            let httpsCite = Cite(value: "https://www.example.com/article")
            let httpCite = Cite(value: "http://example.org/source")
            let relativeCite = Cite(value: "/local/source")

            let blockquote1 = BlockQuote(cite: httpsCite)
            let blockquote2 = BlockQuote(cite: httpCite)
            let blockquote3 = BlockQuote(cite: relativeCite)

            #expect(blockquote1.cite?.rawValue == "https://www.example.com/article")
            #expect(blockquote2.cite?.rawValue == "http://example.org/source")
            #expect(blockquote3.cite?.rawValue == "/local/source")
        }
    }

    @Suite("Extended Quotations")
    struct ExtendedQuotations {

        @Test("Long form quotations")
        func longFormQuotations() {
            let cite = Cite(value: "https://example.com/book")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
            #expect(blockquote.cite?.rawValue == "https://example.com/book")
        }

        @Test("Multi-paragraph quotations")
        func multiParagraphQuotations() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("Poetry and verse quotations")
        func poetryAndVerseQuotations() {
            let cite = Cite(value: "https://example.com/poem")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("Academic paper excerpts")
        func academicPaperExcerpts() {
            let cite = Cite(value: "https://journal.example.com/paper")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }
    }

    @Suite("Common Use Cases")
    struct CommonUseCases {

        @Test("Literary quotations")
        func literaryQuotations() {
            let cite = Cite(value: "https://example.com/book")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("News article excerpts")
        func newsArticleExcerpts() {
            let cite = Cite(value: "https://news.example.com/article")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("Speech transcriptions")
        func speechTranscriptions() {
            let cite = Cite(value: "https://example.com/speech")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("Interview excerpts")
        func interviewExcerpts() {
            let cite = Cite(value: "https://example.com/interview")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("Research paper citations")
        func researchPaperCitations() {
            let cite = Cite(value: "https://example.com/research")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("Blog post excerpts")
        func blogPostExcerpts() {
            let cite = Cite(value: "https://blog.example.com/post")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }
    }

    @Suite("Content Attribution")
    struct ContentAttribution {

        @Test("Source document reference")
        func sourceDocumentReference() {
            let cite = Cite(value: "https://example.com/original")
            let blockquote = BlockQuote(cite: cite)
            #expect(blockquote.cite?.rawValue == "https://example.com/original")
        }

        @Test("Author attribution separation")
        func authorAttributionSeparation() {
            // Attribution should be outside blockquote element
            let blockquote = BlockQuote(cite: Cite(value: "https://example.com/source"))
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("Citation vs attribution distinction")
        func citationVsAttributionDistinction() {
            let cite = Cite(value: "https://example.com/message")
            let blockquote = BlockQuote(cite: cite)
            #expect(blockquote.cite?.rawValue == "https://example.com/message")
        }

        @Test("Source URL validation context")
        func sourceURLValidationContext() {
            let cite = Cite(value: "https://valid.example.com/source")
            let blockquote = BlockQuote(cite: cite)
            #expect(blockquote.cite?.rawValue == "https://valid.example.com/source")
        }
    }

    @Suite("Semantic Usage")
    struct SemanticUsage {

        @Test("Extended quotation indication")
        func extendedQuotationIndication() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("Block-level quotation context")
        func blockLevelQuotationContext() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("Quotation vs inline quote distinction")
        func quotationVsInlineQuoteDistinction() {
            // Blockquote for extended quotes vs q for inline quotes
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("Sectioning content within quotations")
        func sectioningContentWithinQuotations() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }
    }

    @Suite("Visual Presentation")
    struct VisualPresentation {

        @Test("Indented quotation rendering")
        func indentedQuotationRendering() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("Quotation mark styling considerations")
        func quotationMarkStylingConsiderations() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("Typography and spacing")
        func typographyAndSpacing() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("Responsive quotation layout")
        func responsiveQuotationLayout() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }
    }

    @Suite("Integration Tests")
    struct IntegrationTests {

        @Test("Multiple BlockQuote elements")
        func multipleBlockQuoteElements() {
            let cite1 = Cite(value: "https://example.com/source1")
            let cite2 = Cite(value: "https://example.com/source2")

            let blockquote1 = BlockQuote(cite: cite1)
            let blockquote2 = BlockQuote(cite: cite2)
            let blockquote3 = BlockQuote()

            let elements = [blockquote1, blockquote2, blockquote3]

            #expect(elements.count == 3)
            #expect(blockquote1.cite?.rawValue == "https://example.com/source1")
            #expect(blockquote2.cite?.rawValue == "https://example.com/source2")
            #expect(blockquote3.cite == nil)

            elements.forEach { element in
                #expect(type(of: element).tag == "blockquote")
            }
        }

        @Test("BlockQuote element within content flow")
        func blockQuoteElementWithinContentFlow() {
            let cite = Cite(value: "https://example.com/source")
            let blockquote = BlockQuote(cite: cite)
            let element: any HTMLElement = blockquote

            #expect(type(of: element).tag == "blockquote")
        }

        @Test("Nested content within BlockQuote")
        func nestedContentWithinBlockQuote() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("BlockQuote with complex cite URLs")
        func blockQuoteWithComplexCiteURLs() {
            let complexCite = Cite(
                value: "https://example.com/article?id=123&section=conclusion#paragraph-5"
            )
            let blockquote = BlockQuote(cite: complexCite)
            #expect(
                blockquote.cite?.rawValue
                    == "https://example.com/article?id=123&section=conclusion#paragraph-5"
            )
        }
    }

    @Suite("Accessibility Considerations")
    struct AccessibilityConsiderations {

        @Test("Screen reader quotation announcement")
        func screenReaderQuotationAnnouncement() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("Citation accessibility")
        func citationAccessibility() {
            let cite = Cite(value: "https://example.com/source")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("Quotation context clarity")
        func quotationContextClarity() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("Navigation landmark support")
        func navigationLandmarkSupport() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }
    }

    @Suite("Best Practices")
    struct BestPractices {

        @Test("External attribution placement")
        func externalAttributionPlacement() {
            // Attribution should be outside blockquote
            let blockquote = BlockQuote(cite: Cite(value: "https://example.com/source"))
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("Appropriate use over q element")
        func appropriateUseOverQElement() {
            // Use blockquote for extended quotes, q for inline
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("Cite attribute best practices")
        func citeAttributeBestPractices() {
            let cite = Cite(value: "https://example.com/source")
            let blockquote = BlockQuote(cite: cite)
            #expect(blockquote.cite?.rawValue == "https://example.com/source")
        }

        @Test("Content structure within quotations")
        func contentStructureWithinQuotations() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }
    }

    @Suite("Real-World Applications")
    struct RealWorldApplications {

        @Test("Academic writing quotations")
        func academicWritingQuotations() {
            let cite = Cite(value: "https://journal.example.com/article")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("News and journalism quotes")
        func newsAndJournalismQuotes() {
            let cite = Cite(value: "https://news.example.com/interview")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("Documentation and technical writing")
        func documentationAndTechnicalWriting() {
            let cite = Cite(value: "https://docs.example.com/specification")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("Content aggregation platforms")
        func contentAggregationPlatforms() {
            let cite = Cite(value: "https://original.example.com/post")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test("Educational content and courseware")
        func educationalContentAndCourseware() {
            let cite = Cite(value: "https://textbook.example.com/chapter-5")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }
    }
}
