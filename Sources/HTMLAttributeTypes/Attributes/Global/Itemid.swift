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

/// Provides a unique, global identifier for an item in microdata.
///
/// The `itemid` global attribute is part of the HTML Microdata specification and provides
/// a unique global identifier for an item. This identifier allows search engines and other
/// parsers to recognize and process structured data within HTML documents.
///
/// Microdata is a way to embed machine-readable data in HTML documents. It's primarily used
/// for search engine optimization and to enable rich snippets in search results.
///
/// ## Usage Notes
///
/// - Can only be used on elements that have both `itemscope` and `itemtype` attributes
/// - Only relevant when the `itemtype` refers to a vocabulary that supports global identifiers
/// - The value should be a URL or URN (though the spec technically requires a URL)
/// - Commonly used with schema.org vocabularies for structured data
///
/// ## Examples
///
/// Basic usage for a book:
/// ```html
/// <div itemscope
///      itemtype="https://schema.org/Book"
///      itemid="urn:isbn:978-0374228484">
///   <h1 itemprop="name">Owls of the Eastern Ice</h1>
///   <p>By <span itemprop="author">Jonathan C. Slaght</span></p>
///   <meta itemprop="datePublished" content="2020-08-04"/>
/// </div>
/// ```
///
/// Product example:
/// ```html
/// <div itemscope
///      itemtype="https://schema.org/Product"
///      itemid="https://example.com/products/123">
///   <h2 itemprop="name">Smartphone X</h2>
///   <img itemprop="image" src="smartphone-x.jpg" alt="Smartphone X"/>
///   <div itemprop="description">Latest smartphone with amazing features.</div>
///   <div itemprop="offers" itemscope itemtype="https://schema.org/Offer">
///     <meta itemprop="priceCurrency" content="USD"/>
///     <meta itemprop="price" content="599.99"/>
///   </div>
/// </div>
/// ```
@dynamicMemberLookup
public struct Itemid: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "itemid" }

    /// The global identifier value (URL or URN)
    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}
