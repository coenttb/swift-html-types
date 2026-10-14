import Testing
import WHATWG_HTML

@Suite struct `Bring Attention To Tests` {

    @Test func `Basic B element creation`() {
        _ = WHATWG.HTML.B.Element()
        #expect(WHATWG.HTML.B.Element.tag == "b")
    }

    @Test func `B element conforms to HTMLElement`() {
        let b = WHATWG.HTML.B.Element()
        let element: any WHATWG.HTML.Element = b
        #expect(type(of: element).tag == "b")
    }

    @Suite struct `Common Use Cases` {

        @Test func `Keywords in document`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Product names in review`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Actionable words in interactive software`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Article leads or summaries`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Important terms without semantic importance`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Navigation or UI element labels`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }
    }

    @Suite struct `Semantic Distinction` {

        @Test func `Stylistic bold without importance`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Visual attention without emphasis`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Bold text for readability`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Non-semantic bold formatting`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }
    }

    @Suite struct `Typography and Design` {

        @Test func `Bold text in body content`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Highlighted terms`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Interface element styling`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Text differentiation`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }
    }

    @Suite struct `Content Types` {

        @Test func `Technical documentation keywords`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Menu item names`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Button labels`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Brand names in content`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `File names or paths`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Command names`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }
    }

    @Suite struct `Inline Context` {

        @Test func `Bold span within paragraph`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Bold text in lists`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Bold text in table cells`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Bold text in headers`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Multiple B elements`() {
            let b1 = WHATWG.HTML.B.Element()
            let b2 = WHATWG.HTML.B.Element()
            let b3 = WHATWG.HTML.B.Element()

            let elements = [b1, b2, b3]

            #expect(elements.count == 3)
            elements.forEach { element in #expect(type(of: element).tag == "b") }
        }

        @Test func `B element within content flow`() {
            let b = WHATWG.HTML.B.Element()
            let element: any WHATWG.HTML.Element = b

            #expect(type(of: element).tag == "b")
        }

        @Test func `Nested B elements`() {
            _ = WHATWG.HTML.B.Element()
            _ = WHATWG.HTML.B.Element()

            #expect(WHATWG.HTML.B.Element.tag == "b")
        }
    }

    @Suite struct `Accessibility Considerations` {

        @Test func `Screen reader neutral bold`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Visual-only formatting`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Non-semantic styling`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }
    }

    @Suite struct `Best Practices` {

        @Test func `Appropriate use over strong`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Appropriate use over em`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Appropriate use over mark`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Appropriate use over span`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }
    }

    @Suite struct `Usage Examples` {

        @Test func `Product review with product names`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Software documentation with commands`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Article summary with key points`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `UI instructions with element names`() {
            _ = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }
    }
}
