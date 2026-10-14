import Testing
import WHATWG_HTML

@Suite struct `Aside Tests` {

    @Test func `Basic aside creation`() {
        _ = WHATWG.HTML.Aside.Element()
        #expect(WHATWG.HTML.Aside.Element.tag == "aside")
    }

    @Test func `Aside conforms to HTMLElement`() {
        let aside = WHATWG.HTML.Aside.Element()
        let element: any WHATWG.HTML.Element = aside
        #expect(type(of: element).tag == "aside")
    }

    @Suite struct `Common Use Cases` {

        @Test func `Sidebar aside`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Pull quote aside`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Advertisement aside`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Related links aside`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Author bio aside`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Quick facts aside`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Call-out box aside`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }
    }

    @Suite struct `Content Types` {

        @Test func `Navigation aside`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Supplementary information aside`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Glossary aside`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Tag cloud aside`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Related products aside`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Social media aside`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }
    }

    @Suite struct `Semantic Usage` {

        @Test func `Complementary content aside`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Tangentially related aside`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Supporting information aside`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Non-essential content aside`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }
    }

    @Suite struct `Layout Contexts` {

        @Test func `Article sidebar aside`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Page-level aside`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Section-level aside`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Multiple asides`() {
            _ = WHATWG.HTML.Aside.Element()
            _ = WHATWG.HTML.Aside.Element()

            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Aside within article`() {
            let aside = WHATWG.HTML.Aside.Element()
            let element: any WHATWG.HTML.Element = aside

            #expect(type(of: element).tag == "aside")
        }

        @Test func `Nested aside elements`() {
            _ = WHATWG.HTML.Aside.Element()
            _ = WHATWG.HTML.Aside.Element()

            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Aside collection`() {
            let asides = [
                WHATWG.HTML.Aside.Element(), WHATWG.HTML.Aside.Element(),
                WHATWG.HTML.Aside.Element(),
            ]

            #expect(asides.count == 3)
            asides.forEach { aside in #expect(type(of: aside).tag == "aside") }
        }
    }

    @Suite struct `Accessibility and ARIA` {

        @Test func `Implicit complementary role`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Landmark element aside`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Screen reader friendly aside`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }
    }

    @Suite struct `Content Guidelines` {

        @Test func `Removable content aside`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Non-parenthetical aside`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Indirectly related aside`() {
            _ = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }
    }
}
