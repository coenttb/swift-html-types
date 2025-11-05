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

@Suite("Aside Tests")
struct AsideTests {

    @Test("Basic aside creation")
    func basicAsideCreation() {
        let aside = Aside()
        #expect(Aside.tag == "aside")
    }

    @Test("Aside conforms to HTMLElement")
    func asideConformsToHTMLElement() {
        let aside = Aside()
        let element: any HTMLElement = aside
        #expect(type(of: element).tag == "aside")
    }

    @Suite("Common Use Cases")
    struct CommonUseCases {

        @Test("Sidebar aside")
        func sidebarAside() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test("Pull quote aside")
        func pullQuoteAside() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test("Advertisement aside")
        func advertisementAside() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test("Related links aside")
        func relatedLinksAside() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test("Author bio aside")
        func authorBioAside() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test("Quick facts aside")
        func quickFactsAside() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test("Call-out box aside")
        func callOutBoxAside() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }
    }

    @Suite("Content Types")
    struct ContentTypes {

        @Test("Navigation aside")
        func navigationAside() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test("Supplementary information aside")
        func supplementaryInformationAside() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test("Glossary aside")
        func glossaryAside() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test("Tag cloud aside")
        func tagCloudAside() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test("Related products aside")
        func relatedProductsAside() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test("Social media aside")
        func socialMediaAside() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }
    }

    @Suite("Semantic Usage")
    struct SemanticUsage {

        @Test("Complementary content aside")
        func complementaryContentAside() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test("Tangentially related aside")
        func tangentiallyRelatedAside() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test("Supporting information aside")
        func supportingInformationAside() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test("Non-essential content aside")
        func nonEssentialContentAside() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }
    }

    @Suite("Layout Contexts")
    struct LayoutContexts {

        @Test("Article sidebar aside")
        func articleSidebarAside() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test("Page-level aside")
        func pageLevelAside() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test("Section-level aside")
        func sectionLevelAside() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test("Multiple asides")
        func multipleAsides() {
            let primaryAside = Aside()
            let secondaryAside = Aside()

            #expect(Aside.tag == "aside")
            #expect(primaryAside is any HTMLElement)
            #expect(secondaryAside is any HTMLElement)
        }
    }

    @Suite("Integration Tests")
    struct IntegrationTests {

        @Test("Aside within article")
        func asideWithinArticle() {
            let aside = Aside()
            let element: any HTMLElement = aside

            #expect(type(of: element).tag == "aside")
        }

        @Test("Nested aside elements")
        func nestedAsideElements() {
            let parentAside = Aside()
            let nestedAside = Aside()

            #expect(Aside.tag == "aside")
            #expect(parentAside is any HTMLElement)
            #expect(nestedAside is any HTMLElement)
        }

        @Test("Aside collection")
        func asideCollection() {
            let asides = [
                Aside(),
                Aside(),
                Aside(),
            ]

            #expect(asides.count == 3)
            asides.forEach { aside in
                #expect(type(of: aside).tag == "aside")
            }
        }
    }

    @Suite("Accessibility and ARIA")
    struct AccessibilityAndARIA {

        @Test("Implicit complementary role")
        func implicitComplementaryRole() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test("Landmark element aside")
        func landmarkElementAside() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test("Screen reader friendly aside")
        func screenReaderFriendlyAside() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }
    }

    @Suite("Content Guidelines")
    struct ContentGuidelines {

        @Test("Removable content aside")
        func removableContentAside() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test("Non-parenthetical aside")
        func nonParentheticalAside() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test("Indirectly related aside")
        func indirectlyRelatedAside() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }
    }
}
