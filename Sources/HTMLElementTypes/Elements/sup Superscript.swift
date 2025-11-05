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

/// Represents an HTML superscript element (`<sup>`), which specifies inline text
/// to be displayed as superscript for typographical reasons.
///
/// Superscripts are usually rendered with a raised baseline using smaller text.
///
/// ## Example
///
/// ```swift
/// sup {
///     "2"
/// }
/// ```
///
/// ## Usage Notes
///
/// The superscript element should only be used for typographical reasons—that is,
/// to change the position of the text to comply with typographical conventions
/// or standards, rather than solely for presentation or appearance purposes.
///
/// Appropriate use cases include:
/// - Displaying exponents, such as "x³"
/// - Displaying superior lettering for abbreviations (e.g., in French "Mlle")
/// - Representing ordinal numbers, such as "4th" instead of "fourth"
///
/// For purely presentational superscript, consider using CSS `vertical-align: super` instead.
///
public struct Superscript: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "sup" }

    /// Creates a new superscript element.
    public init(

        )
    {

    }
}
