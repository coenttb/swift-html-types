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

/// Represents an HTML `<pre>` element, which displays preformatted text exactly as written in the HTML file.
///
/// The `PreformattedText` struct provides a type-safe way to create HTML preformatted text elements,
/// which preserve whitespace, line breaks, and spacing.
///
/// The text is typically rendered using a monospaced font. Whitespace inside this element is displayed
/// as written, with one exception: if one or more leading newline characters are included immediately
/// following the opening `<pre>` tag, the first newline character is stripped.
///
/// ## Example
///
/// ```swift
/// pre {
///     """
///     function hello() {
///         console.log("Hello, world!");
///     }
///     """
/// }
/// ```
///
/// ## Accessibility Considerations
///
/// - When using pre elements for ASCII art or diagrams, provide alternative descriptions
/// - Consider wrapping pre elements in `<figure>` with a `<figcaption>` for better accessibility
/// - For ASCII art, add role="img" and aria-label attributes to describe the content
///
/// ## Best Practices
///
/// - Use pre elements for displaying code, computer output, or ASCII art
/// - Often combined with elements like `<code>`, `<samp>`, or `<kbd>`
/// - Remember that < characters may need to be escaped as &lt; in the content
///
public struct PreformattedText: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "pre" }

    /// Creates a new PreformattedText element.
    public init(

        )
    {

    }
}
