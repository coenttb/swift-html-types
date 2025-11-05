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

/// Represents the HTML type attribute for the `<link>` element.
///
/// The `type` attribute specifies the MIME type of the linked resource, helping browsers understand how to process it.
/// Common values include:
/// - `text/css` for stylesheets
/// - `text/javascript` for JavaScript files
/// - `image/x-icon` for favicons
/// - `application/json` for JSON data
/// - `application/manifest+json` for web app manifests
///
/// ## Usage Notes
///
/// - This attribute is valid on the `<link>` element
/// - Should contain a valid MIME type string
/// - For stylesheets, modern browsers will correctly interpret CSS with or without this attribute
///
/// ## Examples
///
/// ```html
/// <!-- CSS Stylesheet -->
/// <link rel="stylesheet" type="text/css" href="styles.css">
///
/// <!-- Favicon -->
/// <link rel="icon" type="image/x-icon" href="favicon.ico">
///
/// <!-- Web App Manifest -->
/// <link rel="manifest" type="application/manifest+json" href="manifest.json">
///
/// <!-- Alternative Formats -->
/// <link rel="alternate" type="application/rss+xml" href="rss.xml">
/// ```
@dynamicMemberLookup
public struct LinkType: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "type" }

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the type attribute
    public init(value: String) {
        self.rawValue = value
    }
}

extension LinkType {
    /// CSS stylesheet
    public static let css = LinkType("text/css")

    /// JavaScript
    public static let javascript = LinkType("text/javascript")

    /// Favicon
    public static let icon = LinkType("image/x-icon")

    /// SVG image
    public static let svg = LinkType("image/svg+xml")

    /// PNG image
    public static let png = LinkType("image/png")

    /// Web app manifest
    public static let manifest = LinkType("application/manifest+json")

    /// RSS feed
    public static let rss = LinkType("application/rss+xml")

    /// Atom feed
    public static let atom = LinkType("application/atom+xml")

    /// JSON data
    public static let json = LinkType("application/json")
}
