//===----------------------------------------------------------------------===//
//
// Copyright (c) 2025 Coen ten Thije Boonkkamp
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of project contributors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//


/// Standard metadata names for the name attribute.
///
/// These values are commonly used with the name attribute to provide
/// various types of document-level metadata.
public struct MetaName: StringAttribute {
    public static let attribute: String = "name"
    
    public let rawValue: String
    
    public init(value: String) {
        self.rawValue = value
    }
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
