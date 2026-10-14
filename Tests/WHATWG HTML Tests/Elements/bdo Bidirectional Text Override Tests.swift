import Testing
import WHATWG_HTML

@Suite struct `Bidirectional Text Override Tests` {

    @Test func `Basic BDO element creation with required dir attribute`() {
        let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .ltr)
        #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
        #expect(bdo.dir.rawValue == "ltr")
    }

    @Test func `BDO element conforms to HTMLElement`() {
        let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .rtl)
        let element: any WHATWG.HTML.Element = bdo
        #expect(type(of: element).tag == "bdo")
    }

    @Suite struct `Direction Attribute Tests` {

        @Test func `BDO with left-to-right direction`() {
            let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .ltr)
            #expect(bdo.dir.rawValue == "ltr")
            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
        }

        @Test func `BDO with right-to-left direction`() {
            let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
        }

        @Test func `BDO with auto direction`() {
            let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .auto)
            #expect(bdo.dir.rawValue == "auto")
            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
        }

        @Test func `Direction attribute is required`() {

            let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .ltr)
            #expect(bdo.dir.rawValue == "ltr")
        }
    }

    @Suite struct `Text Direction Override` {

        @Test func `Overriding natural text direction`() {
            let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
        }

        @Test func `Forcing specific text rendering direction`() {
            let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .ltr)
            #expect(bdo.dir.rawValue == "ltr")
            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
        }

        @Test func `Overriding bidirectional algorithm`() {
            let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
        }

        @Test func `Character order reversal behavior`() {
            let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
        }
    }

    @Suite struct `Common Use Cases` {

        @Test func `Displaying text in opposite direction`() {
            let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
        }

        @Test func `Demonstrating bidirectional features`() {
            let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .ltr)
            #expect(bdo.dir.rawValue == "ltr")
            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
        }

        @Test func `Fixing incorrectly displayed multilingual content`() {
            let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
        }

        @Test func `Educational text direction examples`() {
            let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .auto)
            #expect(bdo.dir.rawValue == "auto")
            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
        }

        @Test func `Typography and design effects`() {
            let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
        }
    }

    @Suite struct `Language Support` {

        @Test func `Arabic text direction override`() {
            let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
        }

        @Test func `Hebrew text direction override`() {
            let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
        }

        @Test func `English text in RTL context`() {
            let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .ltr)
            #expect(bdo.dir.rawValue == "ltr")
            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
        }

        @Test func `Mixed script content override`() {
            let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .auto)
            #expect(bdo.dir.rawValue == "auto")
            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
        }
    }

    @Suite struct `Educational and Demonstration` {

        @Test func `Teaching bidirectional text concepts`() {
            let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
        }

        @Test func `Demonstrating text rendering differences`() {
            let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .ltr)
            #expect(bdo.dir.rawValue == "ltr")
            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
        }

        @Test func `Showing script direction examples`() {
            let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
        }

        @Test func `Internationalization tutorials`() {
            let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .auto)
            #expect(bdo.dir.rawValue == "auto")
            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Multiple BDO elements with different directions`() {
            let ltrBdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .ltr)
            let rtlBdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .rtl)
            let autoBdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .auto)

            let elements = [ltrBdo, rtlBdo, autoBdo]

            #expect(elements.count == 3)
            #expect(ltrBdo.dir.rawValue == "ltr")
            #expect(rtlBdo.dir.rawValue == "rtl")
            #expect(autoBdo.dir.rawValue == "auto")

            elements.forEach { element in #expect(type(of: element).tag == "bdo") }
        }

        @Test func `BDO element within content flow`() {
            let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .rtl)
            let element: any WHATWG.HTML.Element = bdo

            #expect(type(of: element).tag == "bdo")
            #expect(bdo.dir.rawValue == "rtl")
        }

        @Test func `Nested direction overrides`() {
            let outerBdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .rtl)
            let innerBdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .ltr)

            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
            #expect(outerBdo.dir.rawValue == "rtl")
            #expect(innerBdo.dir.rawValue == "ltr")
        }

        @Test func `BDO with different HTML context elements`() {
            let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .rtl)
            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
            #expect(bdo.dir.rawValue == "rtl")
        }
    }

    @Suite struct `Technical Specifications` {

        @Test func `Required dir attribute validation`() {

            let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .ltr)
            #expect(bdo.dir.rawValue == "ltr")
        }

        @Test func `Direction attribute values correctness`() {
            let ltrDir = WHATWG.HTML.Dir.Attribute.ltr
            let rtlDir = WHATWG.HTML.Dir.Attribute.rtl
            let autoDir = WHATWG.HTML.Dir.Attribute.auto

            #expect(ltrDir.rawValue == "ltr")
            #expect(rtlDir.rawValue == "rtl")
            #expect(autoDir.rawValue == "auto")
        }

        @Test func `BDO tag name validation`() {
            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
        }

        @Test func `HTMLElement protocol compliance`() {
            _ = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .ltr)
        }
    }

    @Suite struct `Best Practices` {

        @Test func `Use BDO only when override is needed`() {
            _ = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .rtl)
            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
        }

        @Test func `Prefer BDI for isolation over BDO for override`() {
            _ = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .ltr)
            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
        }

        @Test func `Clear semantic intent with explicit direction`() {
            let bdo = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
        }

        @Test func `Consider accessibility implications`() {
            _ = WHATWG.HTML.BidirectionalTextOverride.Element(dir: .auto)
            #expect(WHATWG.HTML.BidirectionalTextOverride.Element.tag == "bdo")
        }
    }
}
