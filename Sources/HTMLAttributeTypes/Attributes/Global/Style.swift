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

/// Defines inline CSS styles for an HTML element.
///
/// The `style` global attribute contains CSS styling declarations to be applied directly to an element.
/// It allows for element-specific styling without requiring an external stylesheet or a `<style>` tag
/// in the document head. The value consists of one or more CSS property-value pairs separated by
/// semicolons.
///
/// While the `style` attribute is widely supported and convenient for quick styling, it's generally
/// recommended to use external CSS stylesheets or CSS modules for maintainable styling. Inline styles
/// have higher specificity than external styles and can make it harder to maintain consistent design
/// across a website.
///
/// ## Usage Notes
///
/// - The value must be valid CSS syntax for declarations that would appear inside a CSS rule
/// - Multiple declarations must be separated by semicolons (`;`)
/// - No curly braces, selectors, or `@rules` are allowed
/// - Best used for one-off styling, testing, or dynamically generated styles
/// - Should not be used to convey semantic information
/// - For hiding elements, use the `hidden` attribute instead
///
/// ## Examples
///
/// Basic usage:
/// ```html
/// <div style="color: blue; background-color: yellow; padding: 5px;">
///   This is styled text
/// </div>
/// ```
///
/// Multiple properties:
/// ```html
/// <p style="font-family: Arial, sans-serif; font-size: 16px; line-height: 1.5; text-align: center;">
///   This paragraph has multiple style properties
/// </p>
/// ```
///
/// Using CSS variables:
/// ```html
/// <span style="color: var(--accent-color); font-weight: bold;">
///   This uses a CSS variable
/// </span>
/// ```
///
/// ## Best Practices
///
/// - Prefer external stylesheets for reusable styles
/// - Use class-based styling for consistent design systems
/// - Reserve inline styles for truly unique, one-off styling needs
/// - Consider using CSS-in-JS or styled components for component libraries
/// - Remember that inline styles override external styles due to CSS specificity rules
@dynamicMemberLookup
public struct Style: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "style" }

    /// The CSS declarations
    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}

extension Style {
    /// Initialize with CSS declarations as key-value pairs
    public init(_ declarations: [String: String]) {
        let formattedDeclarations = declarations.map { key, value in
            "\(key): \(value)"
        }.joined(separator: "; ")

        self = .init(formattedDeclarations)
    }

    /// Initialize with a dictionary of CSS properties and values
    public init(properties: [String: String]) {
        self.init(properties)
    }
}

extension Style: ExpressibleByDictionaryLiteral {
    public init(dictionaryLiteral elements: (String, String)...) {
        let dict = Dictionary(uniqueKeysWithValues: elements)
        self.init(dict)
    }
}
