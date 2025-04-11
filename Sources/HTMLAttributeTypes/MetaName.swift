//
//  File 2.swift
//  swift-html-types
//
//  Created by Coen ten Thije Boonkkamp on 11/04/2025.
//

import Foundation

/// Standard metadata names for the name attribute.
///
/// These values are commonly used with the name attribute to provide
/// various types of document-level metadata.
public struct MetaName: Attribute {
    public static let attribute: String = "name"
    
    package let value: String
    
    public init(_ value: String) {
        self.value = value
    }
}

extension MetaName: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) {
        self = .init(value)
    }
}

extension MetaName: CustomStringConvertible {
    public var description: String { value }
}

extension MetaName {
    /// Name of the application that generated the document.
    public static let application: Self = "application-name"
    
    /// Name of the document's author.
    public static let author: Self = "author"
    
    /// Summary of the page's content.
    public static let description: Self = "description"
    
    /// Software that generated the document.
    public static let generator: Self = "generator"
    
    /// Comma-separated list of keywords relevant to the page.
    public static let keywords: Self = "keywords"
    
    /// Referrer policy for links away from the document.
    public static let referrer: Self = "referrer"
    
    /// Suggested color for customizing browser UI elements.
    public static let themeColor: Self = "theme-color"
    
    /// Instructions for search engine crawlers.
    public static let robots: Self = "robots"
    
    /// Settings for the visual viewport on mobile devices.
    public static let viewport: Self = "viewport"
}
