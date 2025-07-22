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

/// Represents an HTML b element (`<b>`), which is used to draw attention to text without conveying
/// extra importance or emphasis.
///
/// The `B` struct provides a type-safe way to create HTML bold text elements. Note that this
/// element should be used for stylistic purposes only, not to indicate importance or emphasis
/// (use `<strong>` or `<em>` for that).
///
/// ## Example
///
/// ```swift
/// b {
///     "This text will appear bold but does not have semantic importance."
/// }
/// ```
///
/// ## Semantic Usage
///
/// The `<b>` element should be used in cases where other elements like `<strong>`, `<em>`,
/// `<mark>`, or `<span>` are not more appropriate:
///
/// - Use `<strong>` for text with strong importance
/// - Use `<em>` for text with emphatic stress
/// - Use `<mark>` for text with marking/highlighting relevance
/// - Use `<span>` with CSS for pure styling purposes
///
/// Appropriate use cases for `<b>` include:
/// - Keywords in a document
/// - Product names in a review
/// - Actionable words in interactive text-based software
/// - Article leads or summaries
///
/// - Note: When rendered, this generates an HTML `<b>` element with bold styling but no
///   additional semantic weight beyond bringing attention to the text.
public struct B: HTMLElement {
    @inlinable public static var tag: String { "b" }

    /// Creates a new B element with the specified content.
    public init() {}
}
