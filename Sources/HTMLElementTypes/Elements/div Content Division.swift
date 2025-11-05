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

/// Represents an HTML div element (`<div>`), which is the generic container for flow content.
///
/// The `ContentDivision` struct provides a type-safe way to create HTML div elements.
/// The div element has no effect on the content or layout until styled using CSS.
///
/// ## Example
///
/// ```swift
/// div {
///     p {
///         "Any kind of content here. Such as paragraphs, tables, etc."
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - Use the `<div>` element only when no other semantic element (such as `<article>` or `<nav>`) is appropriate
/// - Use CSS properties or techniques such as CSS Grid or CSS Flexbox to align and position `<div>` elements on the page
/// - Apply styles using the `class` or `id` attributes
///
/// ## Accessibility
///
/// The `<div>` element has an implicit ARIA role of "generic", not "none". This may affect certain
/// ARIA combination declarations that expect a direct descendant element with a certain role to function properly.
///
public struct ContentDivision: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "div" }

    /// Creates a new ContentDivision element.
    public init(

        )
    {

    }
}
