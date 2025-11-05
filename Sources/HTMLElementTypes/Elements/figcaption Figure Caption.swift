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

/// Represents an HTML figure caption element (`<figcaption>`), which provides a caption or legend describing the contents of its
/// parent `<figure>` element, giving the figure an accessible description.
///
/// The `FigureCaption` struct provides a type-safe way to create HTML figure caption elements.
///
/// ## Example
///
/// ```swift
/// figure {
///     img(src: "/images/elephant.jpg", alt: "Elephant at sunset")
///     figcaption {
///         "An elephant at sunset"
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - A `<figcaption>` must be either the first or last child of its parent `<figure>` element
/// - Use `<figcaption>` to provide an accessible description for the figure content
/// - Only include one `<figcaption>` per `<figure>` element
///
public struct FigureCaption: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "figcaption" }

    /// Creates a new FigureCaption element.
    public init(

        )
    {

    }
}
