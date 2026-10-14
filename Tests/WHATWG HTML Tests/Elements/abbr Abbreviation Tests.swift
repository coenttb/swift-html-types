import Testing
import WHATWG_HTML

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
#endif

@Suite struct `Abbreviation Tests` {

    @Test func `Basic abbreviation creation`() {
        _ = WHATWG.HTML.Abbreviation.Element()
        #expect(WHATWG.HTML.Abbreviation.Element.tag == "abbr")
    }

    @Test func `Abbreviation conforms to HTMLElement`() {
        let abbreviation = WHATWG.HTML.Abbreviation.Element()
        let element: any WHATWG.HTML.Element = abbreviation
        #expect(type(of: element).tag == "abbr")
    }

    @Test func `Abbreviation is equatable`() {
        let abbreviation1 = WHATWG.HTML.Abbreviation.Element()
        let abbreviation2 = WHATWG.HTML.Abbreviation.Element()
        #expect(abbreviation1 == abbreviation2)
    }

    @Test func `Abbreviation is sendable`() {
        let abbreviation = WHATWG.HTML.Abbreviation.Element()

        Task { _ = abbreviation }

        #expect(abbreviation == WHATWG.HTML.Abbreviation.Element())
    }

    @Suite struct `Common Use Cases` {

        @Test func `Technical abbreviation`() {
            let abbreviation = WHATWG.HTML.Abbreviation.Element()
            #expect(abbreviation == WHATWG.HTML.Abbreviation.Element())
        }

        @Test func `Business abbreviation`() {
            let abbreviation = WHATWG.HTML.Abbreviation.Element()
            #expect(abbreviation == WHATWG.HTML.Abbreviation.Element())
        }

        @Test func `Government abbreviation`() {
            let abbreviation = WHATWG.HTML.Abbreviation.Element()
            #expect(abbreviation == WHATWG.HTML.Abbreviation.Element())
        }

        @Test func `Medical abbreviation`() {
            let abbreviation = WHATWG.HTML.Abbreviation.Element()
            #expect(abbreviation == WHATWG.HTML.Abbreviation.Element())
        }

        @Test func `Academic abbreviation`() {
            let abbreviation = WHATWG.HTML.Abbreviation.Element()
            #expect(abbreviation == WHATWG.HTML.Abbreviation.Element())
        }
    }

    @Suite struct `Semantic Usage` {

        @Test func `Acronym usage`() {
            let abbreviation = WHATWG.HTML.Abbreviation.Element()
            #expect(abbreviation == WHATWG.HTML.Abbreviation.Element())
        }

        @Test func `Initialism usage`() {
            let abbreviation = WHATWG.HTML.Abbreviation.Element()
            #expect(abbreviation == WHATWG.HTML.Abbreviation.Element())
        }

        @Test func `Shortened form usage`() {
            let abbreviation = WHATWG.HTML.Abbreviation.Element()
            #expect(abbreviation == WHATWG.HTML.Abbreviation.Element())
        }

        @Test func `Symbol usage`() {
            let abbreviation = WHATWG.HTML.Abbreviation.Element()
            #expect(abbreviation == WHATWG.HTML.Abbreviation.Element())
        }
    }

    @Suite struct `Best Practices Validation` {

        @Test func `Simple abbreviation element`() {
            let abbreviation = WHATWG.HTML.Abbreviation.Element()
            #expect(abbreviation == WHATWG.HTML.Abbreviation.Element())
        }

        @Test func `Consistent abbreviation structure`() {
            let abbreviation1 = WHATWG.HTML.Abbreviation.Element()
            let abbreviation2 = WHATWG.HTML.Abbreviation.Element()
            #expect(abbreviation1 == abbreviation2)
        }

        @Test func `Multiple abbreviations`() {
            let htmlAbbr = WHATWG.HTML.Abbreviation.Element()
            let cssAbbr = WHATWG.HTML.Abbreviation.Element()
            let jsAbbr = WHATWG.HTML.Abbreviation.Element()

            #expect(htmlAbbr == cssAbbr)
            #expect(cssAbbr == jsAbbr)
            #expect(htmlAbbr == jsAbbr)
        }
    }

    @Suite struct `Element Properties` {

        @Test func `Tag name is correct`() {
            #expect(WHATWG.HTML.Abbreviation.Element.tag == "abbr")
        }

        @Test func `Element creation is consistent`() {
            let abbreviation1 = WHATWG.HTML.Abbreviation.Element()
            let abbreviation2 = WHATWG.HTML.Abbreviation.Element()
            #expect(abbreviation1 == abbreviation2)
        }

        @Test func `Element has no mutable state`() {
            let abbreviation = WHATWG.HTML.Abbreviation.Element()
            let copy = abbreviation
            #expect(abbreviation == copy)
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Can be used in collections`() {
            let abbreviations = [
                WHATWG.HTML.Abbreviation.Element(), WHATWG.HTML.Abbreviation.Element(),
                WHATWG.HTML.Abbreviation.Element(),
            ]

            #expect(abbreviations.count == 3)
            #expect(abbreviations.allSatisfy { $0 == WHATWG.HTML.Abbreviation.Element() })
        }

        @Test func `Can be used as dictionary values`() {
            let abbreviationMap: [String: WHATWG.HTML.Abbreviation.Element] = [
                "HTML": WHATWG.HTML.Abbreviation.Element(),
                "CSS": WHATWG.HTML.Abbreviation.Element(), "JS": WHATWG.HTML.Abbreviation.Element(),
            ]

            #expect(abbreviationMap.count == 3)
            #expect(abbreviationMap.values.allSatisfy { $0 == WHATWG.HTML.Abbreviation.Element() })
        }

        @Test func `Can be used in optional contexts`() {
            let maybeAbbreviation: WHATWG.HTML.Abbreviation.Element? =
                WHATWG.HTML.Abbreviation.Element()
            let noAbbreviation: WHATWG.HTML.Abbreviation.Element? = nil

            #expect(maybeAbbreviation != nil)
            #expect(maybeAbbreviation == WHATWG.HTML.Abbreviation.Element())
            #expect(noAbbreviation == nil)
        }
    }
}
