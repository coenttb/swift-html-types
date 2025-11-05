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

/// Represents the HTML type attribute for the `<link>` and `<source>` elements.
///
/// The `type` attribute specifies the MIME type of the linked resource or media source,
/// helping browsers understand how to process it.
/// Common values include:
/// - For `<link>`: MIME types like `text/css`, `image/x-icon`
/// - For `<source>`: Media types like `video/mp4`, `audio/mpeg`
///
/// ## Usage Notes
///
/// - Valid on the `<link>`, `<source>`, and other elements
/// - Should contain a valid MIME type string
/// - May include codecs parameter for media types
///
/// ## Examples
///
/// ```html
/// <!-- CSS Stylesheet -->
/// <link rel="stylesheet" type="text/css" href="styles.css">
///
/// <!-- Video source -->
/// <source src="video.mp4" type="video/mp4">
///
/// <!-- Audio with codecs -->
/// <source src="audio.mp4" type="audio/mp4; codecs='mp4a.40.2'">
/// ```
@dynamicMemberLookup
public struct SourceType: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "type" }

    /// The MIME type value as a string
    public var rawValue: String

    public let codecs: Codecs?

    /// Initialize with a string value
    public init(value: String) {
        self.rawValue = value
        self.codecs = nil
    }

    /// Initialize with a string value
    public init(value: String, codecs: Codecs? = nil) {
        self.rawValue = value
        self.codecs = codecs
    }
}

extension SourceType {
    public struct Codecs: Sendable, Hashable, ExpressibleByBooleanLiteral {
        public var rawValue: Bool

        public init(_ value: Bool) {
            self.rawValue = value
        }

        public init(booleanLiteral value: BooleanLiteralType) {
            self = .init(value)
        }
    }

    /// Returns the string representation of the type value
    public var description: String {
        if codecs == true {
            return "\(self.rawValue) codecs"
        } else {
            return self.rawValue
        }
    }
}

extension SourceType: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self = .init(value)
    }
}

extension SourceType {
    /// CSS stylesheet
    public static let css = SourceType("text/css")

    /// JavaScript
    public static let javascript = SourceType("text/javascript")

    /// Favicon
    public static let icon = SourceType("image/x-icon")

    /// SVG image
    public static let svg = SourceType("image/svg+xml")

    /// PNG image
    public static let png = SourceType("image/png")

    /// Web app manifest
    public static let manifest = SourceType("application/manifest+json")

    /// RSS feed
    public static let rss = SourceType("application/rss+xml")

    /// Atom feed
    public static let atom = SourceType("application/atom+xml")

    /// JSON data
    public static let json = SourceType("application/json")
}
