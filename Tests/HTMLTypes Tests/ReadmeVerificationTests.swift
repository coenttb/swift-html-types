//
//  ReadmeVerificationTests.swift
//  swift-html-types
//
//  Created by automated README verification
//

import Foundation
import HTMLTypes
import HTMLTypesFoundation
import Testing

/// Tests that verify all README code examples compile and work correctly.
/// Each test corresponds to a code block in the README.
@Suite("README Verification Tests")
struct ReadmeVerificationTests {

    // MARK: - Quick Start Examples (lines 40-56)

    @Test("README Quick Start: Basic elements")
    func quickStartBasicElements() {
        // Create elements with appropriate attributes
        let anchor = Anchor(href: "https://example.com")
        let input = Input.search(name: "query", placeholder: "Search...")

        #expect(anchor.href == "https://example.com")
        #expect(input.name == "query")
    }

    @Test("README Quick Start: Foundation integration")
    func quickStartFoundationIntegration() {
        let url: Foundation.URL = .init(string: "https://example.com")!
        let anchor = Anchor(href: Href(url))

        #expect(anchor.href == "https://example.com")
    }

    // MARK: - Usage Examples (lines 65-91)

    @Test("README Usage: Input search attributes")
    func usageInputSearch() {
        // Test that all these attributes are accepted for search input
        let _ = Input.search(
            name: "q",
            value: "test query",
            list: "suggestions",
            maxlength: 100,
            minlength: 3,
            pattern: "[A-Za-z]+",
            placeholder: "Search...",
            readonly: true,
            size: 30,
            spellcheck: Spellcheck(true),
            required: true,
            disabled: false,
            form: "search-form"
        )

        // Test passes if the above compiles
        #expect(true)
    }

    @Test("README Usage: Input color attributes")
    func usageInputColor() {
        // Test that color input accepts the limited set of attributes
        let _ = Input.color(
            name: "bg-color",
            value: "#ff0000",
            disabled: false,
            form: "color-form"
        )

        // Test passes if the above compiles
        #expect(true)
    }
}
