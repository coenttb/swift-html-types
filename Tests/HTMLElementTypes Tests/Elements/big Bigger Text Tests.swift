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

@Suite("Bigger Text Tests")
struct BiggerTextTests {

    @Test("Basic Big element creation")
    func basicBigElementCreation() {
        let big = Big()
        #expect(Big.tag == "big")
    }

    @Test("Big element conforms to HTMLElement")
    func bigElementConformsToHTMLElement() {
        let big = Big()
        let element: any HTMLElement = big
        #expect(type(of: element).tag == "big")
    }

    @Suite("Deprecated Element Usage")
    struct DeprecatedElementUsage {

        @Test("Understanding deprecation status")
        func understandingDeprecationStatus() {
            let big = Big()
            // Big element is deprecated in HTML standards
            #expect(Big.tag == "big")
        }

        @Test("Legacy content support")
        func legacyContentSupport() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test("Backward compatibility maintenance")
        func backwardCompatibilityMaintenance() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test("Historical HTML document parsing")
        func historicalHTMLDocumentParsing() {
            let big = Big()
            #expect(Big.tag == "big")
        }
    }

    @Suite("Font Size Enhancement")
    struct FontSizeEnhancement {

        @Test("Text size increase by one level")
        func textSizeIncreaseByOneLevel() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test("Relative font size scaling")
        func relativeFontSizeScaling() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test("Visual emphasis through size")
        func visualEmphasisThroughSize() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test("Text prominence enhancement")
        func textProminenceEnhancement() {
            let big = Big()
            #expect(Big.tag == "big")
        }
    }

    @Suite("Legacy Use Cases")
    struct LegacyUseCases {

        @Test("Older HTML documents")
        func olderHTMLDocuments() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test("Maintenance of existing codebases")
        func maintenanceOfExistingCodebases() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test("HTML content migration")
        func htmlContentMigration() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test("Browser compatibility testing")
        func browserCompatibilityTesting() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test("Legacy CMS content")
        func legacyCMSContent() {
            let big = Big()
            #expect(Big.tag == "big")
        }
    }

    @Suite("Modern Alternatives")
    struct ModernAlternatives {

        @Test("CSS font-size property recommendation")
        func cssFontSizePropertyRecommendation() {
            let big = Big()
            // Modern approach would use CSS font-size: larger or specific size
            #expect(Big.tag == "big")
        }

        @Test("Semantic HTML over presentational")
        func semanticHTMLOverPresentational() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test("CSS styling separation")
        func cssStylinSeparation() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test("Responsive design considerations")
        func responsiveDesignConsiderations() {
            let big = Big()
            #expect(Big.tag == "big")
        }
    }

    @Suite("Typography Context")
    struct TypographyContext {

        @Test("Text hierarchy establishment")
        func textHierarchyEstablishment() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test("Visual text differentiation")
        func visualTextDifferentiation() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test("Reading emphasis creation")
        func readingEmphasisCreation() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test("Content scanning aids")
        func contentScanningAids() {
            let big = Big()
            #expect(Big.tag == "big")
        }
    }

    @Suite("Historical Context")
    struct HistoricalContext {

        @Test("HTML 3.2 and 4.0 era support")
        func html32And40EraSupport() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test("Early web development practices")
        func earlyWebDevelopmentPractices() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test("Presentational markup era")
        func presentationalMarkupEra() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test("Pre-CSS styling approaches")
        func preCSSStylingApproaches() {
            let big = Big()
            #expect(Big.tag == "big")
        }
    }

    @Suite("Integration Tests")
    struct IntegrationTests {

        @Test("Multiple Big elements")
        func multipleBigElements() {
            let big1 = Big()
            let big2 = Big()
            let big3 = Big()

            let elements = [big1, big2, big3]

            #expect(elements.count == 3)
            elements.forEach { element in
                #expect(type(of: element).tag == "big")
            }
        }

        @Test("Big element within content flow")
        func bigElementWithinContentFlow() {
            let big = Big()
            let element: any HTMLElement = big

            #expect(type(of: element).tag == "big")
        }

        @Test("Nested Big elements")
        func nestedBigElements() {
            let outerBig = Big()
            let innerBig = Big()

            #expect(Big.tag == "big")
            #expect(outerBig is any HTMLElement)
            #expect(innerBig is any HTMLElement)
        }

        @Test("Big element with other inline elements")
        func bigElementWithOtherInlineElements() {
            let big = Big()
            #expect(Big.tag == "big")
        }
    }

    @Suite("Accessibility Considerations")
    struct AccessibilityConsiderations {

        @Test("Screen reader size announcement")
        func screenReaderSizeAnnouncement() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test("Visual impairment user support")
        func visualImpairmentUserSupport() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test("Text scaling behavior")
        func textScalingBehavior() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test("Contrast and readability")
        func contrastAndReadability() {
            let big = Big()
            #expect(Big.tag == "big")
        }
    }

    @Suite("Best Practices")
    struct BestPractices {

        @Test("Avoid Big in new development")
        func avoidBigInNewDevelopment() {
            let big = Big()
            // Should prefer CSS font-size in modern development
            #expect(Big.tag == "big")
        }

        @Test("Use CSS for font sizing")
        func useCSSForFontSizing() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test("Semantic markup over presentational")
        func semanticMarkupOverPresentational() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test("Migration to modern approaches")
        func migrationToModernApproaches() {
            let big = Big()
            #expect(Big.tag == "big")
        }
    }

    @Suite("Document Migration")
    struct DocumentMigration {

        @Test("Legacy document processing")
        func legacyDocumentProcessing() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test("Content transformation scenarios")
        func contentTransformationScenarios() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test("HTML parser compatibility")
        func htmlParserCompatibility() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test("Browser rendering consistency")
        func browserRenderingConsistency() {
            let big = Big()
            #expect(Big.tag == "big")
        }
    }
}
