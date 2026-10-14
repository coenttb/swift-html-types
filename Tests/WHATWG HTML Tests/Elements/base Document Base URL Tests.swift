import Testing
import WHATWG_HTML

@Suite struct `Document Base URL Tests` {

    @Test func `Basic base element creation with href`() {
        let href = WHATWG.HTML.Href.Attribute("https://example.com/")
        let base = WHATWG.HTML.Base.Element(href: href)
        #expect(WHATWG.HTML.Base.Element.tag == "base")
        #expect(base.href == href)
        #expect(base.target == nil)
    }

    @Test func `Basic base element creation with target`() {
        let target = WHATWG.HTML.Target.Attribute.blank
        let base = WHATWG.HTML.Base.Element(target: target)
        #expect(WHATWG.HTML.Base.Element.tag == "base")
        #expect(base.href == nil)
        #expect(base.target == target)
    }

    @Test func `Basic base element creation with both href and target`() {
        let href = WHATWG.HTML.Href.Attribute("https://example.com/")
        let target = WHATWG.HTML.Target.Attribute.blank
        let base = WHATWG.HTML.Base.Element(href: href, target: target)
        #expect(WHATWG.HTML.Base.Element.tag == "base")
        #expect(base.href == href)
        #expect(base.target == target)
    }

    @Test func `Base element conforms to HTMLElement`() {
        let href = WHATWG.HTML.Href.Attribute("https://example.com/")
        let base = WHATWG.HTML.Base.Element(href: href)
        let element: any WHATWG.HTML.Element = base
        #expect(type(of: element).tag == "base")
    }

    @Suite struct `Configuration Tests` {

        @Test func `Configuration with href only`() {
            let href = WHATWG.HTML.Href.Attribute("https://example.com/")
            let configuration = WHATWG.HTML.Base.Element.Configuration.href(href)
            let base = WHATWG.HTML.Base.Element(configuration: configuration)

            #expect(base.configuration == configuration)
            #expect(base.href == href)
            #expect(base.target == nil)
        }

        @Test func `Configuration with target only`() {
            let target = WHATWG.HTML.Target.Attribute.blank
            let configuration = WHATWG.HTML.Base.Element.Configuration.target(target)
            let base = WHATWG.HTML.Base.Element(configuration: configuration)

            #expect(base.configuration == configuration)
            #expect(base.href == nil)
            #expect(base.target == target)
        }

        @Test func `Configuration with both href and target`() {
            let href = WHATWG.HTML.Href.Attribute("https://example.com/")
            let target = WHATWG.HTML.Target.Attribute.blank
            let configuration = WHATWG.HTML.Base.Element.Configuration.both(
                href: href,
                target: target
            )
            let base = WHATWG.HTML.Base.Element(configuration: configuration)

            #expect(base.configuration == configuration)
            #expect(base.href == href)
            #expect(base.target == target)
        }

        @Test func `Configuration equality`() {
            let href1 = WHATWG.HTML.Href.Attribute("https://example.com/")
            let href2 = WHATWG.HTML.Href.Attribute("https://example.com/")
            let href3 = WHATWG.HTML.Href.Attribute("https://different.com/")
            let target = WHATWG.HTML.Target.Attribute.blank

            let config1 = WHATWG.HTML.Base.Element.Configuration.href(href1)
            let config2 = WHATWG.HTML.Base.Element.Configuration.href(href2)
            let config3 = WHATWG.HTML.Base.Element.Configuration.href(href3)
            let config4 = WHATWG.HTML.Base.Element.Configuration.target(target)

            #expect(config1 == config2)
            #expect(config1 != config3)
            #expect(config1 != config4)
        }

        @Test func `Configuration is hashable`() {
            let href = WHATWG.HTML.Href.Attribute("https://example.com/")
            let target = WHATWG.HTML.Target.Attribute.blank

            let configurations: Set<WHATWG.HTML.Base.Element.Configuration> = [
                .href(href), .target(target), .both(href: href, target: target),
            ]

            #expect(configurations.count == 3)
        }
    }

    @Suite struct `Convenience Initializers` {

        @Test func `Href convenience initializer`() {
            let href = WHATWG.HTML.Href.Attribute("https://example.com/")
            let base = WHATWG.HTML.Base.Element(href: href)

            #expect(base.href == href)
            #expect(base.target == nil)

            if case .href(let configHref) = base.configuration {
                #expect(configHref == href)
            } else {
                #expect(Bool(false), "Expected href configuration")
            }
        }

        @Test func `Target convenience initializer`() {
            let target = WHATWG.HTML.Target.Attribute.blank
            let base = WHATWG.HTML.Base.Element(target: target)

            #expect(base.href == nil)
            #expect(base.target == target)

            if case .target(let configTarget) = base.configuration {
                #expect(configTarget == target)
            } else {
                #expect(Bool(false), "Expected target configuration")
            }
        }

        @Test func `Both href and target convenience initializer`() {
            let href = WHATWG.HTML.Href.Attribute("https://example.com/")
            let target = WHATWG.HTML.Target.Attribute.blank
            let base = WHATWG.HTML.Base.Element(href: href, target: target)

            #expect(base.href == href)
            #expect(base.target == target)

            if case .both(let configHref, let configTarget) = base.configuration {
                #expect(configHref == href)
                #expect(configTarget == target)
            } else {
                #expect(Bool(false), "Expected both configuration")
            }
        }
    }

    @Suite struct `Target Attribute Tests` {

        @Test func `Target self`() {
            let target = WHATWG.HTML.Target.Attribute.`self`
            let base = WHATWG.HTML.Base.Element(target: target)
            #expect(base.target == target)
        }

        @Test func `Target blank`() {
            let target = WHATWG.HTML.Target.Attribute.blank
            let base = WHATWG.HTML.Base.Element(target: target)
            #expect(base.target == target)
        }

        @Test func `Target parent`() {
            let target = WHATWG.HTML.Target.Attribute.parent
            let base = WHATWG.HTML.Base.Element(target: target)
            #expect(base.target == target)
        }

        @Test func `Target top`() {
            let target = WHATWG.HTML.Target.Attribute.top
            let base = WHATWG.HTML.Base.Element(target: target)
            #expect(base.target == target)
        }

        @Test func `Custom target`() {
            let target = WHATWG.HTML.Target.Attribute("myframe")
            let base = WHATWG.HTML.Base.Element(target: target)
            #expect(base.target == target)
        }
    }

    @Suite struct `Common Use Cases` {

        @Test func `Absolute base URL`() {
            let href = WHATWG.HTML.Href.Attribute("https://cdn.example.com/assets/")
            let base = WHATWG.HTML.Base.Element(href: href)

            #expect(base.href == href)
        }

        @Test func `Relative base URL`() {
            let href = WHATWG.HTML.Href.Attribute("/assets/")
            let base = WHATWG.HTML.Base.Element(href: href)

            #expect(base.href == href)
        }

        @Test func `Base URL with subdirectory`() {
            let href = WHATWG.HTML.Href.Attribute("https://example.com/app/v1/")
            let base = WHATWG.HTML.Base.Element(href: href)

            #expect(base.href == href)
        }

        @Test func `Default target for external links`() {
            let target = WHATWG.HTML.Target.Attribute.blank
            let base = WHATWG.HTML.Base.Element(target: target)

            #expect(base.target == target)
        }

        @Test func `CDN with new window target`() {
            let href = WHATWG.HTML.Href.Attribute("https://cdn.example.com/")
            let target = WHATWG.HTML.Target.Attribute.blank
            let base = WHATWG.HTML.Base.Element(href: href, target: target)

            #expect(base.href == href)
            #expect(base.target == target)
        }

        @Test func `Development environment base`() {
            let href = WHATWG.HTML.Href.Attribute("http://localhost:3000/")
            let base = WHATWG.HTML.Base.Element(href: href)

            #expect(base.href == href)
        }

        @Test func `Production environment base`() {
            let href = WHATWG.HTML.Href.Attribute("https://myapp.com/")
            let base = WHATWG.HTML.Base.Element(href: href)

            #expect(base.href == href)
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Base element for document head`() {
            let href = WHATWG.HTML.Href.Attribute("https://example.com/")
            let base = WHATWG.HTML.Base.Element(href: href)
            let element: any WHATWG.HTML.Element = base

            #expect(type(of: element).tag == "base")
        }

        @Test func `Multiple base configurations`() {
            let bases = [
                WHATWG.HTML.Base.Element(href: WHATWG.HTML.Href.Attribute("https://example.com/")),
                WHATWG.HTML.Base.Element(target: WHATWG.HTML.Target.Attribute.blank),
                WHATWG.HTML.Base.Element(
                    href: WHATWG.HTML.Href.Attribute("https://cdn.example.com/"),
                    target: WHATWG.HTML.Target.Attribute.`self`
                ),
            ]

            #expect(bases.count == 3)
            bases.forEach { base in
                #expect(type(of: base).tag == "base")
            }
        }

        @Test func `Base element as HTMLElement`() {
            let href = WHATWG.HTML.Href.Attribute("https://example.com/")
            let base = WHATWG.HTML.Base.Element(href: href)
            let element: any WHATWG.HTML.Element = base

            #expect(type(of: element).tag == "base")
        }
    }

    @Suite struct `URL Resolution` {

        @Test func `Base URL for relative paths`() {
            let href = WHATWG.HTML.Href.Attribute("https://example.com/assets/")
            let base = WHATWG.HTML.Base.Element(href: href)

            #expect(base.href == href)
        }

        @Test func `Base URL for root-relative paths`() {
            let href = WHATWG.HTML.Href.Attribute("/")
            let base = WHATWG.HTML.Base.Element(href: href)

            #expect(base.href == href)
        }

        @Test func `Base URL with trailing slash`() {
            let href = WHATWG.HTML.Href.Attribute("https://example.com/app/")
            let base = WHATWG.HTML.Base.Element(href: href)

            #expect(base.href == href)
        }

        @Test func `Base URL without trailing slash`() {
            let href = WHATWG.HTML.Href.Attribute("https://example.com/app")
            let base = WHATWG.HTML.Base.Element(href: href)

            #expect(base.href == href)
        }
    }

    @Suite struct `Security and Validation` {

        @Test func `HTTPS base URL`() {
            let href = WHATWG.HTML.Href.Attribute("https://secure.example.com/")
            let base = WHATWG.HTML.Base.Element(href: href)

            #expect(base.href == href)
        }

        @Test func `HTTP base URL`() {
            let href = WHATWG.HTML.Href.Attribute("http://example.com/")
            let base = WHATWG.HTML.Base.Element(href: href)

            #expect(base.href == href)
        }

        @Test func `File protocol base URL`() {
            let href = WHATWG.HTML.Href.Attribute("file:///path/to/directory/")
            let base = WHATWG.HTML.Base.Element(href: href)

            #expect(base.href == href)
        }
    }

    @Suite struct `Best Practices` {

        @Test func `Single base element per document`() {
            let href = WHATWG.HTML.Href.Attribute("https://example.com/")
            let base = WHATWG.HTML.Base.Element(href: href)

            #expect(WHATWG.HTML.Base.Element.tag == "base")
            #expect(base.href == href)
        }

        @Test func `Base element in document head`() {
            let href = WHATWG.HTML.Href.Attribute("https://example.com/")
            _ = WHATWG.HTML.Base.Element(href: href)

        }

        @Test func `Base element before other URL references`() {
            let href = WHATWG.HTML.Href.Attribute("https://example.com/")
            let base = WHATWG.HTML.Base.Element(href: href)

            #expect(base.href == href)
        }
    }
}
