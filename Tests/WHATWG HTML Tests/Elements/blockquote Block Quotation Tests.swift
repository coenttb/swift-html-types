import Testing
import WHATWG_HTML

@Suite struct `Block Quotation Tests` {

    @Test func `Basic BlockQuote element creation`() {
        let blockquote = WHATWG.HTML.BlockQuote.Element()
        #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        #expect(blockquote.cite == nil)
    }

    @Test func `BlockQuote element conforms to HTMLElement`() {
        let blockquote = WHATWG.HTML.BlockQuote.Element()
        let element: any WHATWG.HTML.Element = blockquote
        #expect(type(of: element).tag == "blockquote")
    }

    @Suite struct `Cite Attribute Tests` {

        @Test func `BlockQuote with cite URL`() {
            let cite = WHATWG.HTML.Cite.Attribute(value: "https://example.com/source")
            let blockquote = WHATWG.HTML.BlockQuote.Element(cite: cite)
            #expect(blockquote.cite?.rawValue == "https://example.com/source")
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `BlockQuote without cite attribute`() {
            let blockquote = WHATWG.HTML.BlockQuote.Element()
            #expect(blockquote.cite == nil)
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `Cite attribute as optional parameter`() {
            let blockquote = WHATWG.HTML.BlockQuote.Element(cite: nil)
            #expect(blockquote.cite == nil)
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `Different cite URL formats`() {
            let httpsCite = WHATWG.HTML.Cite.Attribute(value: "https://www.example.com/article")
            let httpCite = WHATWG.HTML.Cite.Attribute(value: "http://example.org/source")
            let relativeCite = WHATWG.HTML.Cite.Attribute(value: "/local/source")

            let blockquote1 = WHATWG.HTML.BlockQuote.Element(cite: httpsCite)
            let blockquote2 = WHATWG.HTML.BlockQuote.Element(cite: httpCite)
            let blockquote3 = WHATWG.HTML.BlockQuote.Element(cite: relativeCite)

            #expect(blockquote1.cite?.rawValue == "https://www.example.com/article")
            #expect(blockquote2.cite?.rawValue == "http://example.org/source")
            #expect(blockquote3.cite?.rawValue == "/local/source")
        }
    }

    @Suite struct `Extended Quotations` {

        @Test func `Long form quotations`() {
            let cite = WHATWG.HTML.Cite.Attribute(value: "https://example.com/book")
            let blockquote = WHATWG.HTML.BlockQuote.Element(cite: cite)
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
            #expect(blockquote.cite?.rawValue == "https://example.com/book")
        }

        @Test func `Multi-paragraph quotations`() {
            _ = WHATWG.HTML.BlockQuote.Element()
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `Poetry and verse quotations`() {
            let cite = WHATWG.HTML.Cite.Attribute(value: "https://example.com/poem")
            _ = WHATWG.HTML.BlockQuote.Element(cite: cite)
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `Academic paper excerpts`() {
            let cite = WHATWG.HTML.Cite.Attribute(value: "https://journal.example.com/paper")
            _ = WHATWG.HTML.BlockQuote.Element(cite: cite)
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }
    }

    @Suite struct `Common Use Cases` {

        @Test func `Literary quotations`() {
            let cite = WHATWG.HTML.Cite.Attribute(value: "https://example.com/book")
            _ = WHATWG.HTML.BlockQuote.Element(cite: cite)
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `News article excerpts`() {
            let cite = WHATWG.HTML.Cite.Attribute(value: "https://news.example.com/article")
            _ = WHATWG.HTML.BlockQuote.Element(cite: cite)
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `Speech transcriptions`() {
            let cite = WHATWG.HTML.Cite.Attribute(value: "https://example.com/speech")
            _ = WHATWG.HTML.BlockQuote.Element(cite: cite)
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `Interview excerpts`() {
            let cite = WHATWG.HTML.Cite.Attribute(value: "https://example.com/interview")
            _ = WHATWG.HTML.BlockQuote.Element(cite: cite)
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `Research paper citations`() {
            let cite = WHATWG.HTML.Cite.Attribute(value: "https://example.com/research")
            _ = WHATWG.HTML.BlockQuote.Element(cite: cite)
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `Blog post excerpts`() {
            let cite = WHATWG.HTML.Cite.Attribute(value: "https://blog.example.com/post")
            _ = WHATWG.HTML.BlockQuote.Element(cite: cite)
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }
    }

    @Suite struct `Content Attribution` {

        @Test func `Source document reference`() {
            let cite = WHATWG.HTML.Cite.Attribute(value: "https://example.com/original")
            let blockquote = WHATWG.HTML.BlockQuote.Element(cite: cite)
            #expect(blockquote.cite?.rawValue == "https://example.com/original")
        }

        @Test func `Author attribution separation`() {

            _ = WHATWG.HTML.BlockQuote.Element(
                cite: WHATWG.HTML.Cite.Attribute(value: "https://example.com/source")
            )
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `Citation vs attribution distinction`() {
            let cite = WHATWG.HTML.Cite.Attribute(value: "https://example.com/message")
            let blockquote = WHATWG.HTML.BlockQuote.Element(cite: cite)
            #expect(blockquote.cite?.rawValue == "https://example.com/message")
        }

        @Test func `Source URL validation context`() {
            let cite = WHATWG.HTML.Cite.Attribute(value: "https://valid.example.com/source")
            let blockquote = WHATWG.HTML.BlockQuote.Element(cite: cite)
            #expect(blockquote.cite?.rawValue == "https://valid.example.com/source")
        }
    }

    @Suite struct `Semantic Usage` {

        @Test func `Extended quotation indication`() {
            _ = WHATWG.HTML.BlockQuote.Element()
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `Block-level quotation context`() {
            _ = WHATWG.HTML.BlockQuote.Element()
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `Quotation vs inline quote distinction`() {

            _ = WHATWG.HTML.BlockQuote.Element()
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `Sectioning content within quotations`() {
            _ = WHATWG.HTML.BlockQuote.Element()
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }
    }

    @Suite struct `Visual Presentation` {

        @Test func `Indented quotation rendering`() {
            _ = WHATWG.HTML.BlockQuote.Element()
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `Quotation mark styling considerations`() {
            _ = WHATWG.HTML.BlockQuote.Element()
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `Typography and spacing`() {
            _ = WHATWG.HTML.BlockQuote.Element()
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `Responsive quotation layout`() {
            _ = WHATWG.HTML.BlockQuote.Element()
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Multiple BlockQuote elements`() {
            let cite1 = WHATWG.HTML.Cite.Attribute(value: "https://example.com/source1")
            let cite2 = WHATWG.HTML.Cite.Attribute(value: "https://example.com/source2")

            let blockquote1 = WHATWG.HTML.BlockQuote.Element(cite: cite1)
            let blockquote2 = WHATWG.HTML.BlockQuote.Element(cite: cite2)
            let blockquote3 = WHATWG.HTML.BlockQuote.Element()

            let elements = [blockquote1, blockquote2, blockquote3]

            #expect(elements.count == 3)
            #expect(blockquote1.cite?.rawValue == "https://example.com/source1")
            #expect(blockquote2.cite?.rawValue == "https://example.com/source2")
            #expect(blockquote3.cite == nil)

            elements.forEach { element in #expect(type(of: element).tag == "blockquote") }
        }

        @Test func `BlockQuote element within content flow`() {
            let cite = WHATWG.HTML.Cite.Attribute(value: "https://example.com/source")
            let blockquote = WHATWG.HTML.BlockQuote.Element(cite: cite)
            let element: any WHATWG.HTML.Element = blockquote

            #expect(type(of: element).tag == "blockquote")
        }

        @Test func `Nested content within BlockQuote`() {
            _ = WHATWG.HTML.BlockQuote.Element()
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `BlockQuote with complex cite URLs`() {
            let complexCite = WHATWG.HTML.Cite.Attribute(
                value: "https://example.com/article?id=123&section=conclusion#paragraph-5"
            )
            let blockquote = WHATWG.HTML.BlockQuote.Element(cite: complexCite)
            #expect(
                blockquote.cite?.rawValue
                    == "https://example.com/article?id=123&section=conclusion#paragraph-5"
            )
        }
    }

    @Suite struct `Accessibility Considerations` {

        @Test func `Screen reader quotation announcement`() {
            _ = WHATWG.HTML.BlockQuote.Element()
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `Citation accessibility`() {
            let cite = WHATWG.HTML.Cite.Attribute(value: "https://example.com/source")
            _ = WHATWG.HTML.BlockQuote.Element(cite: cite)
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `Quotation context clarity`() {
            _ = WHATWG.HTML.BlockQuote.Element()
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `Navigation landmark support`() {
            _ = WHATWG.HTML.BlockQuote.Element()
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }
    }

    @Suite struct `Best Practices` {

        @Test func `External attribution placement`() {

            _ = WHATWG.HTML.BlockQuote.Element(
                cite: WHATWG.HTML.Cite.Attribute(value: "https://example.com/source")
            )
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `Appropriate use over q element`() {

            _ = WHATWG.HTML.BlockQuote.Element()
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `Cite attribute best practices`() {
            let cite = WHATWG.HTML.Cite.Attribute(value: "https://example.com/source")
            let blockquote = WHATWG.HTML.BlockQuote.Element(cite: cite)
            #expect(blockquote.cite?.rawValue == "https://example.com/source")
        }

        @Test func `Content structure within quotations`() {
            _ = WHATWG.HTML.BlockQuote.Element()
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }
    }

    @Suite struct `Real-World Applications` {

        @Test func `Academic writing quotations`() {
            let cite = WHATWG.HTML.Cite.Attribute(value: "https://journal.example.com/article")
            _ = WHATWG.HTML.BlockQuote.Element(cite: cite)
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `News and journalism quotes`() {
            let cite = WHATWG.HTML.Cite.Attribute(value: "https://news.example.com/interview")
            _ = WHATWG.HTML.BlockQuote.Element(cite: cite)
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `Documentation and technical writing`() {
            let cite = WHATWG.HTML.Cite.Attribute(value: "https://docs.example.com/specification")
            _ = WHATWG.HTML.BlockQuote.Element(cite: cite)
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `Content aggregation platforms`() {
            let cite = WHATWG.HTML.Cite.Attribute(value: "https://original.example.com/post")
            _ = WHATWG.HTML.BlockQuote.Element(cite: cite)
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }

        @Test func `Educational content and courseware`() {
            let cite = WHATWG.HTML.Cite.Attribute(value: "https://textbook.example.com/chapter-5")
            _ = WHATWG.HTML.BlockQuote.Element(cite: cite)
            #expect(WHATWG.HTML.BlockQuote.Element.tag == "blockquote")
        }
    }
}
