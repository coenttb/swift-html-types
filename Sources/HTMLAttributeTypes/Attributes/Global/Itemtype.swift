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

/// Specifies the vocabulary URL for microdata items.
///
/// The `itemtype` global attribute specifies the URL of the vocabulary that defines the
/// properties (`itemprop`) in a microdata structure. It works in conjunction with the
/// `itemscope` attribute, which establishes the scope of the item. Common vocabularies
/// include schema.org, which is supported by major search engines.
///
/// The value of this attribute must be one or more valid absolute URLs that point to
/// vocabularies defining item types. Multiple URLs must use the same vocabulary and
/// should be separated by spaces.
///
/// ## Usage Notes
///
/// - Can only be used on elements that have the `itemscope` attribute
/// - Defines the vocabulary (e.g., schema.org) for the item's properties
/// - The value must be one or more valid absolute URLs
/// - Multiple URLs must all point to the same vocabulary
/// - Commonly used vocabularies include schema.org types like Person, Event, Product, etc.
/// - Elements with both `itemscope` and `itemtype` may also have `itemid` for global identification
///
/// ## Examples
///
/// Basic usage for a person:
/// ```html
/// <div itemscope itemtype="https://schema.org/Person">
///   <span itemprop="name">Jane Doe</span>
///   <span itemprop="jobTitle">Professor</span>
///   <a href="mailto:jane@example.com" itemprop="email">jane@example.com</a>
/// </div>
/// ```
///
/// Multiple item types (though this is rare):
/// ```html
/// <div itemscope itemtype="https://schema.org/Person https://schema.org/Teacher">
///   <span itemprop="name">Jane Doe</span>
///   <span itemprop="jobTitle">Professor</span>
/// </div>
/// ```
///
/// Nested items with different types:
/// ```html
/// <div itemscope itemtype="https://schema.org/Product">
///   <span itemprop="name">Smartphone X</span>
///   <span itemprop="description">The latest smartphone with amazing features.</span>
///
///   <div itemprop="offers" itemscope itemtype="https://schema.org/Offer">
///     <span itemprop="price">599.99</span>
///     <meta itemprop="priceCurrency" content="USD" />
///     <link itemprop="availability" href="https://schema.org/InStock" />
///   </div>
///
///   <div itemprop="review" itemscope itemtype="https://schema.org/Review">
///     <span itemprop="reviewRating" itemscope itemtype="https://schema.org/Rating">
///       <meta itemprop="ratingValue" content="4.5" />
///     </span>
///     <span itemprop="author" itemscope itemtype="https://schema.org/Person">
///       <span itemprop="name">John Smith</span>
///     </span>
///   </div>
/// </div>
/// ```
@dynamicMemberLookup
public struct Itemtype: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "itemtype" }

    /// The URL or space-separated list of URLs defining the vocabulary
    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}

extension Itemtype {
    /// Initialize with a schema.org type
    public init(schemaOrg type: String) {
        self = .init("https://schema.org/\(type)")
    }
}

extension Itemtype: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = String

    public init(arrayLiteral elements: String...) {
        self = .init(elements.joined(separator: " "))
    }
}
