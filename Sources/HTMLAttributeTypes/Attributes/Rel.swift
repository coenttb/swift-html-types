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

/// An attribute that defines the relationship between the current document and a linked resource.
///
/// The `rel` attribute specifies the relationship between the current document and the linked document
/// or resource. The value is a space-separated list of link types, each representing a specific relationship.
/// Different values are valid depending on the element where the attribute is used.
///
/// ## Usage Notes
///
/// - Valid on `<link>`, `<a>`, `<area>`, and `<form>` elements
/// - Each value must be a valid link relation token recognized by IANA, HTML Living Standard, or Microformats wiki
/// - Multiple values should be separated by spaces
/// - Some values are only valid on specific elements
/// - Values are case-insensitive
///
/// ## Common Link Types by Element
///
/// ### For `<link>` Elements
/// - `stylesheet` - Imports a style sheet
/// - `icon` - Defines a favicon or other icon for the document
/// - `canonical` - Defines the preferred URL for the current document
/// - `alternate` - Alternate version of the document (different language, format, etc.)
/// - `preload`, `prefetch`, `preconnect` - Resource hints for performance optimization
///
/// ### For `<a>` and `<area>` Elements
/// - `nofollow` - Indicates that search engines should not follow the link
/// - `noopener` - Prevents the linked document from accessing `window.opener`
/// - `noreferrer` - Prevents passing the referrer information
/// - `external` - Indicates that the link goes to an external site
/// - `me` - Indicates that the linked document represents the person who owns the current content
///
/// ### For `<form>` Elements
/// - `help` - Links to context-sensitive help
/// - `license` - Links to licensing information
/// - `next`, `prev` - Pagination links
/// - `search` - Links to a search function
///
/// ## Examples
///
/// External link with security attributes:
/// ```html
/// <a href="https://example.com" rel="external noopener noreferrer">External site</a>
/// ```
///
/// CSS stylesheet:
/// ```html
/// <link rel="stylesheet" href="styles.css">
/// ```
///
/// Multiple favicons for different devices:
/// ```html
/// <link rel="icon" href="favicon.ico">
/// <link rel="icon" type="image/svg+xml" href="icon.svg">
/// <link rel="apple-touch-icon" href="apple-touch-icon.png">
/// ```
@dynamicMemberLookup
public struct Rel: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "rel" }

    /// The link relation values as a space-separated string
    public var rawValue: String

    /// Initialize with a single link relation value
    public init(value: String) {
        self.rawValue = value
    }
}

extension Rel: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = String

    public init(arrayLiteral elements: String...) {
        self.rawValue = elements.joined(separator: " ")
    }
}

extension Rel {
    /// Create a rel value for external links with recommended security attributes
    public static let secureExternal: Self = .init([Rel.external, .noopener, .noreferrer])
}

extension Rel {
    public init(_ rels: [Rel]) {
        self = .init(rels.map(\.description).joined(separator: " "))
    }
}

extension Rel {
    @inlinable public static var alternate: Self { "alternate" }
    @inlinable public static var author: Self { "author" }
    @inlinable public static var help: Self { "help" }
    @inlinable public static var license: Self { "license" }
    @inlinable public static var next: Self { "next" }
    @inlinable public static var prev: Self { "prev" }
    @inlinable public static var search: Self { "search" }

    // Link-specific types
    @inlinable public static var canonical: Self { "canonical" }
    @inlinable public static var stylesheet: Self { "stylesheet" }
    @inlinable public static var icon: Self { "icon" }
    @inlinable public static var manifest: Self { "manifest" }
    @inlinable public static var modulepreload: Self { "modulepreload" }
    @inlinable public static var preload: Self { "preload" }
    @inlinable public static var prefetch: Self { "prefetch" }
    @inlinable public static var preconnect: Self { "preconnect" }
    @inlinable public static var dns_prefetch: Self { "dns-prefetch" }

    // Anchor-specific types
    @inlinable public static var bookmark: Self { "bookmark" }
    @inlinable public static var external: Self { "external" }
    @inlinable public static var nofollow: Self { "nofollow" }
    @inlinable public static var noopener: Self { "noopener" }
    @inlinable public static var noreferrer: Self { "noreferrer" }
    @inlinable public static var tag: Self { "tag" }
    @inlinable public static var me: Self { "me" }

    // Security/privacy related types
    @inlinable public static var privacy_policy: Self { "privacy-policy" }
    @inlinable public static var terms_of_service: Self { "terms-of-service" }
}
