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

@Suite("Document Base URL Tests")
struct DocumentBaseURLTests {

    @Test("Basic base element creation with href")
    func basicBaseElementCreationWithHref() {
        let href = Href("https://example.com/")
        let base = Base(href: href)
        #expect(Base.tag == "base")
        #expect(base.href == href)
        #expect(base.target == nil)
    }

    @Test("Basic base element creation with target")
    func basicBaseElementCreationWithTarget() {
        let target = Target.blank
        let base = Base(target: target)
        #expect(Base.tag == "base")
        #expect(base.href == nil)
        #expect(base.target == target)
    }

    @Test("Basic base element creation with both href and target")
    func basicBaseElementCreationWithBoth() {
        let href = Href("https://example.com/")
        let target = Target.blank
        let base = Base(href: href, target: target)
        #expect(Base.tag == "base")
        #expect(base.href == href)
        #expect(base.target == target)
    }

    @Test("Base element conforms to HTMLElement")
    func baseElementConformsToHTMLElement() {
        let href = Href("https://example.com/")
        let base = Base(href: href)
        let element: any HTMLElement = base
        #expect(type(of: element).tag == "base")
    }

    @Suite("Configuration Tests")
    struct ConfigurationTests {

        @Test("Configuration with href only")
        func configurationWithHrefOnly() {
            let href = Href("https://example.com/")
            let configuration = Base.Configuration.href(href)
            let base = Base(configuration: configuration)

            #expect(base.configuration == configuration)
            #expect(base.href == href)
            #expect(base.target == nil)
        }

        @Test("Configuration with target only")
        func configurationWithTargetOnly() {
            let target = Target.blank
            let configuration = Base.Configuration.target(target)
            let base = Base(configuration: configuration)

            #expect(base.configuration == configuration)
            #expect(base.href == nil)
            #expect(base.target == target)
        }

        @Test("Configuration with both href and target")
        func configurationWithBoth() {
            let href = Href("https://example.com/")
            let target = Target.blank
            let configuration = Base.Configuration.both(href: href, target: target)
            let base = Base(configuration: configuration)

            #expect(base.configuration == configuration)
            #expect(base.href == href)
            #expect(base.target == target)
        }

        @Test("Configuration equality")
        func configurationEquality() {
            let href1 = Href("https://example.com/")
            let href2 = Href("https://example.com/")
            let href3 = Href("https://different.com/")
            let target = Target.blank

            let config1 = Base.Configuration.href(href1)
            let config2 = Base.Configuration.href(href2)
            let config3 = Base.Configuration.href(href3)
            let config4 = Base.Configuration.target(target)

            #expect(config1 == config2)
            #expect(config1 != config3)
            #expect(config1 != config4)
        }

        @Test("Configuration is hashable")
        func configurationIsHashable() {
            let href = Href("https://example.com/")
            let target = Target.blank

            let configurations: Set<Base.Configuration> = [
                .href(href),
                .target(target),
                .both(href: href, target: target),
            ]

            #expect(configurations.count == 3)
        }
    }

    @Suite("Convenience Initializers")
    struct ConvenienceInitializers {

        @Test("Href convenience initializer")
        func hrefConvenienceInitializer() {
            let href = Href("https://example.com/")
            let base = Base(href: href)

            #expect(base.href == href)
            #expect(base.target == nil)

            if case .href(let configHref) = base.configuration {
                #expect(configHref == href)
            } else {
                #expect(Bool(false), "Expected href configuration")
            }
        }

        @Test("Target convenience initializer")
        func targetConvenienceInitializer() {
            let target = Target.blank
            let base = Base(target: target)

            #expect(base.href == nil)
            #expect(base.target == target)

            if case .target(let configTarget) = base.configuration {
                #expect(configTarget == target)
            } else {
                #expect(Bool(false), "Expected target configuration")
            }
        }

        @Test("Both href and target convenience initializer")
        func bothHrefAndTargetConvenienceInitializer() {
            let href = Href("https://example.com/")
            let target = Target.blank
            let base = Base(href: href, target: target)

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

    @Suite("Target Attribute Tests")
    struct TargetAttributeTests {

        @Test("Target self")
        func targetSelf() {
            let target = Target.`self`
            let base = Base(target: target)
            #expect(base.target == target)
        }

        @Test("Target blank")
        func targetBlank() {
            let target = Target.blank
            let base = Base(target: target)
            #expect(base.target == target)
        }

        @Test("Target parent")
        func targetParent() {
            let target = Target.parent
            let base = Base(target: target)
            #expect(base.target == target)
        }

        @Test("Target top")
        func targetTop() {
            let target = Target.top
            let base = Base(target: target)
            #expect(base.target == target)
        }

        @Test("Custom target")
        func customTarget() {
            let target = Target("myframe")
            let base = Base(target: target)
            #expect(base.target == target)
        }
    }

    @Suite("Common Use Cases")
    struct CommonUseCases {

        @Test("Absolute base URL")
        func absoluteBaseURL() {
            let href = Href("https://cdn.example.com/assets/")
            let base = Base(href: href)

            #expect(base.href == href)
        }

        @Test("Relative base URL")
        func relativeBaseURL() {
            let href = Href("/assets/")
            let base = Base(href: href)

            #expect(base.href == href)
        }

        @Test("Base URL with subdirectory")
        func baseURLWithSubdirectory() {
            let href = Href("https://example.com/app/v1/")
            let base = Base(href: href)

            #expect(base.href == href)
        }

        @Test("Default target for external links")
        func defaultTargetForExternalLinks() {
            let target = Target.blank
            let base = Base(target: target)

            #expect(base.target == target)
        }

        @Test("CDN with new window target")
        func cdnWithNewWindowTarget() {
            let href = Href("https://cdn.example.com/")
            let target = Target.blank
            let base = Base(href: href, target: target)

            #expect(base.href == href)
            #expect(base.target == target)
        }

        @Test("Development environment base")
        func developmentEnvironmentBase() {
            let href = Href("http://localhost:3000/")
            let base = Base(href: href)

            #expect(base.href == href)
        }

        @Test("Production environment base")
        func productionEnvironmentBase() {
            let href = Href("https://myapp.com/")
            let base = Base(href: href)

            #expect(base.href == href)
        }
    }

    @Suite("Integration Tests")
    struct IntegrationTests {

        @Test("Base element for document head")
        func baseElementForDocumentHead() {
            let href = Href("https://example.com/")
            let base = Base(href: href)
            let element: any HTMLElement = base

            #expect(type(of: element).tag == "base")
        }

        @Test("Multiple base configurations")
        func multipleBaseConfigurations() {
            let bases = [
                Base(href: Href("https://example.com/")),
                Base(target: Target.blank),
                Base(href: Href("https://cdn.example.com/"), target: Target.`self`),
            ]

            #expect(bases.count == 3)
            bases.forEach { base in
                #expect(base is any HTMLElement)
                #expect(type(of: base).tag == "base")
            }
        }

        @Test("Base element as HTMLElement")
        func baseElementAsHTMLElement() {
            let href = Href("https://example.com/")
            let base = Base(href: href)
            let element: any HTMLElement = base

            #expect(type(of: element).tag == "base")
        }
    }

    @Suite("URL Resolution")
    struct URLResolution {

        @Test("Base URL for relative paths")
        func baseURLForRelativePaths() {
            let href = Href("https://example.com/assets/")
            let base = Base(href: href)

            #expect(base.href == href)
        }

        @Test("Base URL for root-relative paths")
        func baseURLForRootRelativePaths() {
            let href = Href("/")
            let base = Base(href: href)

            #expect(base.href == href)
        }

        @Test("Base URL with trailing slash")
        func baseURLWithTrailingSlash() {
            let href = Href("https://example.com/app/")
            let base = Base(href: href)

            #expect(base.href == href)
        }

        @Test("Base URL without trailing slash")
        func baseURLWithoutTrailingSlash() {
            let href = Href("https://example.com/app")
            let base = Base(href: href)

            #expect(base.href == href)
        }
    }

    @Suite("Security and Validation")
    struct SecurityAndValidation {

        @Test("HTTPS base URL")
        func httpsBaseURL() {
            let href = Href("https://secure.example.com/")
            let base = Base(href: href)

            #expect(base.href == href)
        }

        @Test("HTTP base URL")
        func httpBaseURL() {
            let href = Href("http://example.com/")
            let base = Base(href: href)

            #expect(base.href == href)
        }

        @Test("File protocol base URL")
        func fileProtocolBaseURL() {
            let href = Href("file:///path/to/directory/")
            let base = Base(href: href)

            #expect(base.href == href)
        }
    }

    @Suite("Best Practices")
    struct BestPractices {

        @Test("Single base element per document")
        func singleBaseElementPerDocument() {
            let href = Href("https://example.com/")
            let base = Base(href: href)

            #expect(Base.tag == "base")
            #expect(base.href == href)
        }

        @Test("Base element in document head")
        func baseElementInDocumentHead() {
            let href = Href("https://example.com/")
            let base = Base(href: href)

            #expect(base is any HTMLElement)
        }

        @Test("Base element before other URL references")
        func baseElementBeforeOtherURLReferences() {
            let href = Href("https://example.com/")
            let base = Base(href: href)

            #expect(base.href == href)
        }
    }
}
