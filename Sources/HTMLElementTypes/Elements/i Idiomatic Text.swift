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

/// Represents an HTML `<i>` element, which represents a range of text that is set off from the normal text for some reason,
/// such as idiomatic text, technical terms, taxonomical designations, among others.
///
/// The `IdiomaticText` struct provides a type-safe way to create HTML elements with proper semantic meaning.
///
/// ## Example
///
/// ```swift
/// i {
///     "Musa is one of two or three genera in the family Musaceae"
/// }
/// ```
///
/// ```swift
/// i(class: "term", lang: "la") {
///     "Veni, vidi, vici"
/// }
/// ```
///
/// ## Best Practices
///
/// - Use for text with different semantic meaning than surrounding text, such as:
///   - Alternative voice or mood
///   - Taxonomic designations
///   - Idiomatic terms from another language (include the `lang` attribute)
///   - Technical terms
///   - Transliterations
///   - Thoughts
///   - Ship or vessel names in Western writing systems
/// - Do not use `<i>` when another element is more appropriate:
///   - Use `<em>` for stress emphasis
///   - Use `<strong>` for importance
///   - Use `<mark>` for relevance
///   - Use `<cite>` for names of works
///   - Use `<dfn>` for defining terms
public struct IdiomaticText: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "i" }

    /// Creates a new IdiomaticText element with the specified content.
    public init(

        )
    {

    }
}
