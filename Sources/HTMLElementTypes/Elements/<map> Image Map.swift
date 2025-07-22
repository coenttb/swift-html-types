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

/// Represents an HTML `<map>` element, which defines an image map (clickable areas on an image).
///
/// The `Map` struct provides a type-safe way to create HTML image maps with associated `<area>` elements.
/// Image maps allow you to define regions on an image that act as hyperlinks.
///
/// ## Example
///
/// ```swift
/// map(name: "infographic") {
///     area(shape: .poly, coords: "130,147,200,107,254,219,130,228", href: "https://example.com/html", alt: "HTML")
///     area(shape: .poly, coords: "130,147,130,228,6,219,59,107", href: "https://example.com/css", alt: "CSS")
/// }
/// ```
///
/// ## Best Practices
///
/// - Always provide a descriptive `name` attribute to reference the map
/// - Use the `<area>` element to define clickable regions within the map
/// - Ensure the `name` attribute matches the corresponding `usemap` attribute on the `<img>` element
/// - Include `alt` attributes on all `<area>` elements for accessibility
///
public struct Map: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "map" }

    /// The name attribute gives the map a unique name so that it can be referenced.
    /// The name must be non-empty with no space characters and must be unique across all maps in the document.
    public var name: Name?

    /// Creates a new Map element with the specified attributes.
    ///
    /// - Parameters:
    ///   - name: A unique identifier for the map, used to reference it from an image's `usemap` attribute, typically containing `<area>` elements
    public init(
        name: Name? = nil
    ) {
        self.name = name

    }
}
