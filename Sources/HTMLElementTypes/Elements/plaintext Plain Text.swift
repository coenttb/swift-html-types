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

/// Represents an HTML `<plaintext>` element, which renders everything following the start tag as raw text.
///
/// > **Warning**: This element is deprecated since HTML 2 and should not be used.
/// > Browsers may treat it as a `<pre>` element that still interprets HTML within.
///
/// The `<plaintext>` element has no closing tag, as everything after it is considered raw text.
///
/// ## Alternatives
///
/// Instead of `<plaintext>`, use:
/// - The `<pre>` element for preformatted text
/// - The `<code>` element for inline code
/// - A text file with the `text/plain` MIME-type if plaintext is needed as the first element
///
/// ## Example
///
/// ```swift
/// plaintext {
///     "This text will be displayed as-is, without HTML parsing."
/// }
/// ```
///
/// ## Best Practices
///
/// - **Do not use this element** in new code as it is deprecated.
/// - Use `<pre>` or `<code>` elements instead and escape special characters.
/// - Apply monospaced fonts via CSS using `font-family: monospace` where needed.
///
@available(
    *,
    deprecated,
    message: "The <plaintext> element is deprecated. Use <pre> or <code> instead."
)
public struct PlainText: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "plaintext" }

    /// Creates a new plaintext element.
    @available(
        *,
        deprecated,
        message: "The <plaintext> element is deprecated. Use <pre> or <code> instead."
    )
    public init(

        )
    {

    }
}
