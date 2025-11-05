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

/// Represents an HTML teletype text element (`<tt>`), which displays text in a monospace font.
///
/// The `TeletypeText` struct provides a type-safe way to create HTML `<tt>` elements.
/// This element is obsolete in HTML5 and should generally be avoided in favor of more
/// semantic elements or CSS styling.
///
/// ## Example
///
/// ```swift
/// tt {
///     "This text appears in a monospace font"
/// }
/// ```
///
/// ## Best Practices
///
/// - This element is deprecated/obsolete. Consider using one of these semantic alternatives:
///   - `<code>` for computer code
///   - `<kbd>` for keyboard input
///   - `<samp>` for sample output
///   - `<var>` for variables
///   - `<pre>` for preformatted text blocks
/// - For non-semantic monospace text, use CSS `font-family: monospace` with a `<span>` element
///
public struct TeletypeText: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "tt" }

    /// Creates a new TeletypeText element.
    public init(

        )
    {

    }
}
