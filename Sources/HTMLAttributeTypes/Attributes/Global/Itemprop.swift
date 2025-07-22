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

/// Defines a property of an item in microdata.
///
/// The `itemprop` global attribute adds properties to an item in HTML microdata. It specifies
/// the property name in a name-value pair. The element containing the `itemprop` attribute defines
/// the property value either through its contents, a relevant attribute, or by being an item itself
/// (when combined with `itemscope`).
///
/// Microdata is used to embed machine-readable data in HTML documents, primarily for search engines
/// and other automated tools to extract structured information.
///
/// ## Value Determination
///
/// The value of an itemprop is determined based on the element type:
///
/// - If the element has `itemscope`: The value is the item itself
/// - If the element is `<meta>`: The value is the `content` attribute
/// - For media elements (`<audio>`, `<img>`, etc.): The value is the URL in the `src` attribute
/// - For link elements (`<a>`, `<link>`, etc.): The value is the URL in the `href` attribute
/// - For `<data>` elements: The value is the `value` attribute
/// - For `<time>` elements: The value is the `datetime` attribute
/// - For other elements: The value is the element's text content
///
/// ## Usage Notes
///
/// - Can be applied to any HTML element
/// - Multiple properties can be specified in a space-separated list (e.g., `itemprop="name title"`)
/// - Properties can have multiple values by using multiple elements with the same property name
/// - Property names should be valid strings without `.` or `:` characters, unless they are URLs
/// - Typically used with `itemscope` and `itemtype` attributes
/// - Often used with schema.org vocabularies for structured data
///
/// ## Examples
///
/// Basic usage with a movie:
/// ```html
/// <div itemscope itemtype="https://schema.org/Movie">
///   <h1 itemprop="name">The Matrix</h1>
///   <span itemprop="director">Lana Wachowski</span>
///   <span itemprop="director">Lilly Wachowski</span>
///   <span itemprop="genre">Science Fiction</span>
///   <a href="trailer.html" itemprop="trailer">Watch Trailer</a>
/// </div>
/// ```
///
/// Multiple properties in a single element:
/// ```html
/// <div itemscope>
///   <span itemprop="favorite-color favorite-fruit">orange</span>
/// </div>
/// ```
///
/// Nested items:
/// ```html
/// <div itemscope>
///   <p>Name: <span itemprop="name">Amanda</span></p>
///   <p>
///     Band:
///     <span itemprop="band" itemscope>
///       <span itemprop="name">Jazz Band</span>
///       (<span itemprop="size">12</span> players)
///     </span>
///   </p>
/// </div>
/// ```
@dynamicMemberLookup
public struct Itemprop: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "itemprop" }

    /// The property name or space-separated list of property names
    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}

extension Itemprop: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = String

    public init(arrayLiteral elements: String...) {
        self.rawValue = elements.joined(separator: " ")
    }
}
