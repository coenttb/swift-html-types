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

@Suite("Anchor Tests")
struct AnchorTests {

    @Test("Basic anchor creation")
    func basicAnchorCreation() {
        let anchor = Anchor()
        #expect(Anchor.tag == "a")
        #expect(anchor.href == nil)
        #expect(anchor.target == nil)
        #expect(anchor.rel == nil)
    }

    @Test("Anchor with href")
    func anchorWithHref() {
        let href = HTMLAttributeTypes.Href("https://example.com")
        let anchor = Anchor(href: href)
        #expect(anchor.href == href)
    }

    @Test("Anchor with target")
    func anchorWithTarget() {
        let target = HTMLAttributeTypes.Target.blank
        let anchor = Anchor(target: target)
        #expect(anchor.target == target)
    }

    @Test("Anchor with rel")
    func anchorWithRel() {
        let rel = HTMLAttributeTypes.Rel("noopener noreferrer")
        let anchor = Anchor(rel: rel)
        #expect(anchor.rel == rel)
    }

    @Test("Anchor with download")
    func anchorWithDownload() {
        let download = HTMLAttributeTypes.Download("filename.pdf")
        let anchor = Anchor(download: download)
        #expect(anchor.download == download)
    }

    @Test("Anchor with hreflang")
    func anchorWithHreflang() {
        let hreflang = HTMLAttributeTypes.Hreflang("en")
        let anchor = Anchor(hreflang: hreflang)
        #expect(anchor.hreflang == hreflang)
    }

    @Test("Anchor with ping")
    func anchorWithPing() {
        let ping = HTMLAttributeTypes.Ping("https://analytics.example.com/ping")
        let anchor = Anchor(ping: ping)
        #expect(anchor.ping == ping)
    }

    @Test("Anchor with referrer policy")
    func anchorWithReferrerPolicy() {
        let policy = HTMLAttributeTypes.ReferrerPolicy.noReferrer
        let anchor = Anchor(referrerpolicy: policy)
        #expect(anchor.referrerpolicy == policy)
    }

    @Test("Anchor with attribution source")
    func anchorWithAttributionSrc() {
        let attributionsrc = HTMLAttributeTypes.AttributionSrc()
        let anchor = Anchor(attributionsrc: attributionsrc)
        #expect(anchor.attributionsrc == attributionsrc)
    }

    @Test("Complete anchor configuration")
    func completeAnchorConfiguration() {
        let href = HTMLAttributeTypes.Href("https://example.com")
        let target = HTMLAttributeTypes.Target.blank
        let rel = HTMLAttributeTypes.Rel("noopener noreferrer")
        let download = HTMLAttributeTypes.Download("document.pdf")
        let hreflang = HTMLAttributeTypes.Hreflang("en")
        let ping = HTMLAttributeTypes.Ping("https://analytics.example.com/ping")
        let referrerpolicy = HTMLAttributeTypes.ReferrerPolicy.noReferrer
        let attributionsrc = HTMLAttributeTypes.AttributionSrc()

        let anchor = Anchor(
            attributionsrc: attributionsrc,
            download: download,
            href: href,
            hreflang: hreflang,
            ping: ping,
            referrerpolicy: referrerpolicy,
            rel: rel,
            target: target
        )

        #expect(anchor.attributionsrc == attributionsrc)
        #expect(anchor.download == download)
        #expect(anchor.href == href)
        #expect(anchor.hreflang == hreflang)
        #expect(anchor.ping == ping)
        #expect(anchor.referrerpolicy == referrerpolicy)
        #expect(anchor.rel == rel)
        #expect(anchor.target == target)
    }

    @Suite("Common Use Cases")
    struct CommonUseCases {

        @Test("Email link")
        func emailLink() {
            let href = HTMLAttributeTypes.Href("mailto:contact@example.com")
            let anchor = Anchor(href: href)
            #expect(anchor.href == href)
        }

        @Test("Telephone link")
        func telephoneLink() {
            let href = HTMLAttributeTypes.Href("tel:+15555555555")
            let anchor = Anchor(href: href)
            #expect(anchor.href == href)
        }

        @Test("In-page navigation")
        func inPageNavigation() {
            let href = HTMLAttributeTypes.Href("#section-id")
            let anchor = Anchor(href: href)
            #expect(anchor.href == href)
        }

        @Test("External link with security")
        func externalLinkWithSecurity() {
            let href = HTMLAttributeTypes.Href("https://external-site.com")
            let target = HTMLAttributeTypes.Target.blank
            let rel = HTMLAttributeTypes.Rel("noopener noreferrer")

            let anchor = Anchor(
                href: href,
                rel: rel,
                target: target
            )

            #expect(anchor.href == href)
            #expect(anchor.target == target)
            #expect(anchor.rel == rel)
        }

        @Test("Download link")
        func downloadLink() {
            let href = HTMLAttributeTypes.Href("/files/document.pdf")
            let download = HTMLAttributeTypes.Download("important-document.pdf")

            let anchor = Anchor(
                download: download,
                href: href
            )

            #expect(anchor.href == href)
            #expect(anchor.download == download)
        }

        @Test("Multilingual link")
        func multilingualLink() {
            let href = HTMLAttributeTypes.Href("https://example.fr")
            let hreflang = HTMLAttributeTypes.Hreflang("fr")

            let anchor = Anchor(
                href: href,
                hreflang: hreflang
            )

            #expect(anchor.href == href)
            #expect(anchor.hreflang == hreflang)
        }

        @Test("Tracked link")
        func trackedLink() {
            let href = HTMLAttributeTypes.Href("https://example.com")
            let ping = HTMLAttributeTypes.Ping(
                "https://analytics.example.com/ping https://tracking.example.com/click"
            )

            let anchor = Anchor(
                href: href,
                ping: ping
            )

            #expect(anchor.href == href)
            #expect(anchor.ping == ping)
        }
    }

    @Suite("Target Attribute Tests")
    struct TargetAttributeTests {

        @Test("Target self")
        func targetSelf() {
            let target = HTMLAttributeTypes.Target.`self`
            let anchor = Anchor(target: target)
            #expect(anchor.target == target)
        }

        @Test("Target blank")
        func targetBlank() {
            let target = HTMLAttributeTypes.Target.blank
            let anchor = Anchor(target: target)
            #expect(anchor.target == target)
        }

        @Test("Target parent")
        func targetParent() {
            let target = HTMLAttributeTypes.Target.parent
            let anchor = Anchor(target: target)
            #expect(anchor.target == target)
        }

        @Test("Target top")
        func targetTop() {
            let target = HTMLAttributeTypes.Target.top
            let anchor = Anchor(target: target)
            #expect(anchor.target == target)
        }

        @Test("Custom target")
        func customTarget() {
            let target = HTMLAttributeTypes.Target("myframe")
            let anchor = Anchor(target: target)
            #expect(anchor.target == target)
        }
    }

    @Suite("Referrer Policy Tests")
    struct ReferrerPolicyTests {

        @Test("No referrer")
        func noReferrer() {
            let policy = HTMLAttributeTypes.ReferrerPolicy.noReferrer
            let anchor = Anchor(referrerpolicy: policy)
            #expect(anchor.referrerpolicy == policy)
        }

        @Test("Origin")
        func origin() {
            let policy = HTMLAttributeTypes.ReferrerPolicy.origin
            let anchor = Anchor(referrerpolicy: policy)
            #expect(anchor.referrerpolicy == policy)
        }

        @Test("Same origin")
        func sameOrigin() {
            let policy = HTMLAttributeTypes.ReferrerPolicy.sameOrigin
            let anchor = Anchor(referrerpolicy: policy)
            #expect(anchor.referrerpolicy == policy)
        }

        @Test("Strict origin")
        func strictOrigin() {
            let policy = HTMLAttributeTypes.ReferrerPolicy.strictOrigin
            let anchor = Anchor(referrerpolicy: policy)
            #expect(anchor.referrerpolicy == policy)
        }
    }
}
