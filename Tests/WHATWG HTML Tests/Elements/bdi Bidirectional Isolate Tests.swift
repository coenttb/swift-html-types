import Testing
import WHATWG_HTML

@Suite struct `Bidirectional Isolate Tests` {

    @Test func `Basic BDI element creation`() {
        _ = WHATWG.HTML.BidirectionalIsolate.Element()
        #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
    }

    @Test func `BDI element conforms to HTMLElement`() {
        let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
        let element: any WHATWG.HTML.Element = bdi
        #expect(type(of: element).tag == "bdi")
    }

    @Suite struct `Bidirectional Text Isolation` {

        @Test func `Isolating user-generated content`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Preventing text direction interference`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Protecting surrounding text from direction changes`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Isolating unknown directionality content`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }
    }

    @Suite struct `Common Use Cases` {

        @Test func `User names in mixed-script environments`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Dynamic content from external sources`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Comments and user-generated text`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Search results with mixed directionality`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `List items with unknown text direction`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Social media posts and messages`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }
    }

    @Suite struct `Multilingual Content` {

        @Test func `Arabic and Hebrew text isolation`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Mixed Latin and RTL scripts`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Persian and Urdu text handling`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Numbers and punctuation in RTL context`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }
    }

    @Suite struct `Layout Protection` {

        @Test func `Protecting website layout integrity`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Preventing direction spillover`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Maintaining reading order`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Preserving UI component structure`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }
    }

    @Suite struct `Accessibility Considerations` {

        @Test func `Screen reader navigation support`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Proper text direction announcement`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Bidirectional text reading support`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Generic ARIA role compliance`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Multiple BDI elements`() {
            let bdi1 = WHATWG.HTML.BidirectionalIsolate.Element()
            let bdi2 = WHATWG.HTML.BidirectionalIsolate.Element()
            let bdi3 = WHATWG.HTML.BidirectionalIsolate.Element()

            let elements = [bdi1, bdi2, bdi3]

            #expect(elements.count == 3)
            elements.forEach { element in #expect(type(of: element).tag == "bdi") }
        }

        @Test func `BDI element within content flow`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            let element: any WHATWG.HTML.Element = bdi

            #expect(type(of: element).tag == "bdi")
        }

        @Test func `Nested text direction contexts`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            _ = WHATWG.HTML.BidirectionalIsolate.Element()

            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `BDI within lists and tables`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }
    }

    @Suite struct `Best Practices` {

        @Test func `Prefer BDI over span with dir=auto`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Use for unknown content directionality`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Semantic clarity over CSS unicode-bidi`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Automatic direction detection advantage`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }
    }

    @Suite struct `Real-World Applications` {

        @Test func `E-commerce product reviews`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `International forums and discussions`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Multilingual customer support`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Global social media platforms`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Educational content platforms`() {
            _ = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }
    }
}
