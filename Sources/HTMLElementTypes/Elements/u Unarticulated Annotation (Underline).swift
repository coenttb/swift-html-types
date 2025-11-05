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

/// Represents an HTML unarticulated annotation element (`<u>`), which indicates text that should
/// be rendered in a way that indicates it has a non-textual annotation.
///
/// The `UnarticulatedAnnotation` struct provides a type-safe way to create HTML `<u>` elements.
/// By default, this element renders as a solid underline, but can be styled using CSS.
///
/// ## Example
///
/// ```swift
/// u {
///     "This text appears with an underline"
/// }
/// ```
///
/// ## Best Practices
///
/// - Avoid using the `<u>` element with its default styling (underlined text) in a way that could be confused with hyperlinks
/// - Valid use cases include annotating spelling errors, applying proper name marks in Chinese text, and other forms of annotation
/// - Do NOT use `<u>` to underline text for presentation purposes or to denote book titles
/// - Consider using more appropriate semantic elements:
///   - `<em>` for stress emphasis
///   - `<b>` to draw attention to text
///   - `<mark>` to mark key words or phrases
///   - `<strong>` to indicate that text has strong importance
///   - `<cite>` to mark titles of books or other publications
///   - `<i>` for technical terms, transliterations, thoughts, or vessel names
/// - For non-semantic underlining, use CSS `text-decoration: underline` with a `<span>` element instead
///
public struct UnarticulatedAnnotation: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "u" }

    /// Creates a new UnarticulatedAnnotation element.
    public init(

        )
    {

    }
}
