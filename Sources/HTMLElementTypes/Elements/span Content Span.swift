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

/// Represents an HTML span element (`<span>`), which is a generic inline container
/// for phrasing content that doesn't inherently represent anything specific.
///
/// The `ContentSpan` struct provides a type-safe way to create HTML span elements.
/// Spans are typically used to group elements for styling purposes (using class or id attributes),
/// or because they share attribute values.
///
/// ## Example
///
/// ```swift
/// span {
///     "Some text"
/// }
/// ```
///
/// ```swift
/// span {
///     a(href: "portfolio.html", target: "_blank") {
///         "See my portfolio"
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - Use span only when no other semantic element is appropriate
/// - Unlike `div` (which is block-level), span is an inline-level element
/// - Commonly used with CSS classes to apply styling to portions of text
///
public struct ContentSpan: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "span" }

    /// Creates a new span element with the specified attributes.
    public init(

        )
    {

    }
}
