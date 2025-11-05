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

/// Represents an HTML heading group element (`<hgroup>`), which groups a heading with
/// related content such as subheadings, alternative titles, or taglines.
///
/// The `HeadingGroup` struct provides a type-safe way to create HTML heading group elements.
///
/// ## Example
///
/// ```swift
/// hgroup {
///     h1 {
///         "Frankenstein"
///     }
///     p {
///         "Or: The Modern Prometheus"
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - Use `<hgroup>` to associate a heading with secondary content like subheadings or taglines
/// - Include exactly one heading element (`<h1>` through `<h6>`) within the `<hgroup>`
/// - Use `<p>` elements for the secondary content
/// - Note that only the heading element contributes to the document outline
/// - The `<hgroup>` has an implicit ARIA role of "group"
///
public struct HeadingGroup: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "hgroup" }

    /// Creates a new HeadingGroup element.
    public init(

        )
    {

    }
}
