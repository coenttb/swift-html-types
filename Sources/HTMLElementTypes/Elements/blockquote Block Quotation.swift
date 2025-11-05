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

/// Represents an HTML blockquote element (`<blockquote>`), which indicates that the enclosed text
/// is an extended quotation.
///
/// The `BlockQuote` struct provides a type-safe way to create HTML block quotations with an optional
/// citation source URL.
///
/// ## Example
///
/// ```swift
/// blockquote(cite: "https://www.example.com/source") {
///     p {
///         "Words can be like X-rays, if you use them properly—they'll go through anything. You read and you're pierced."
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - Attribution for the quotation should be placed outside the blockquote element
/// - Use the `cite` attribute to reference the source document or message
/// - For shorter inline quotes, use the `q` element instead
/// - The content is typically rendered visually by indentation
///
public struct BlockQuote: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "blockquote" }

    /// A URL that designates a source document or message for the quoted information
    public var cite: HTMLAttributeTypes.Cite?

    /// Creates a new BlockQuote element with the specified citation source and content.
    ///
    /// - Parameters:
    ///   - cite: A URL that designates the source document for the quotation
    public init(
        cite: HTMLAttributeTypes.Cite? = nil
    ) {
        self.cite = cite
    }
}
