///
/// SourceType.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 09/04/2025.
///

import Foundation

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
public struct SourceType: Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "type"
    
    /// The link type value as a MIME type string
    package let value: String
    
    package let codecs: Codecs?
    
    public struct Codecs: Sendable, Equatable, ExpressibleByBooleanLiteral {
        public let value: Bool
        
        public init(_ value: Bool){
            self.value = value
        }
        
        public init(booleanLiteral value: BooleanLiteralType) {
            self = .init(value)
        }
    }
    
    /// Initialize with a custom MIME type string
    public init(
        _ value: String,
        codecs: Codecs? = nil
    ) {
        self.value = value
        self.codecs = codecs
    }
}

extension SourceType: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self = .init(value)
    }
}

extension SourceType: CustomStringConvertible {
    /// Returns the string representation of the type value
    public var description: String {
        if codecs == true {
            return "\(self.value) codecs"
        } else {
            return self.value
        }
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
