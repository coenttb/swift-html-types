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


/// An attribute that marks an element for performance timing measurement.
///
/// The `elementtiming` attribute flags an element for performance tracking by the 
/// PerformanceObserver API using the "element" type. It allows developers to measure 
/// when specific important elements become visible to the user, which is useful for 
/// monitoring and optimizing page performance.
///
/// ## Usage Notes
///
/// - Can be applied to:
///   - `<img>` elements
///   - `<image>` elements inside SVG
///   - Poster images of `<video>` elements
///   - Elements with a background image
///   - Text-containing elements like `<p>`, `<h1>`, etc.
/// - The attribute value becomes an identifier for the element in performance entries
/// - In the DOM, this attribute is reflected as `Element.elementtiming`
/// - Requires a PerformanceObserver to capture and process the timing data
///
/// ## When to Use
///
/// Good candidates for element timing measurement include:
///
/// - Hero/main images for articles or product pages
/// - Critical text content (headings, product descriptions)
/// - Carousel images on shopping sites
/// - Video poster images
/// - Above-the-fold content that directly affects user experience
///
/// ## Browser Support
///
/// Element Timing is part of the Web Performance API but has limited browser support.
/// Check current compatibility before relying on it for critical features.
///
/// ## Examples
///
/// Timing a main image:
/// ```html
/// <img src="hero.jpg" alt="Hero image" elementtiming="hero-image">
/// ```
///
/// Timing important text:
/// ```html
/// <h1 elementtiming="page-title">Welcome to Our Website</h1>
/// ```
///
/// Timing a background image element:
/// ```html
/// <div class="banner" style="background-image:url(banner.jpg)" elementtiming="main-banner"></div>
/// ```
public struct Elementtiming: StringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "elementtiming" }
    
    /// The attribute value
    public let rawValue: String
    
    /// Initialize with a value for the elementtiming attribute
    public init(value: String) {
        self.rawValue = value
    }
}
   
extension Elementtiming {
    /// Create an elementtiming value with a prefixed category for organization
    public init(category: String, name: String, separator: String = "-") {
        self.rawValue = "\(category)\(separator)\(name)"
    }
    
    /// Common predefined timing categories for semantic naming
    public struct Category: Sendable, Equatable, ExpressibleByStringLiteral, CustomStringConvertible {
        public var value: String
        
        public init(_ value: String){
            self.value = value
        }
        
        public init(stringLiteral value: StringLiteralType) {
            self.value = value
        }
        /// Main page hero or feature element
        public static let hero: Self = "hero"
        
        /// Primary content elements
        public static let main: Self = "main"
        
        /// Header elements
        public static let header: Self = "header"
        
        /// Navigation elements
        public static let nav: Self = "nav"
        
        /// Footer elements
        public static let footer: Self = "footer"
        
        /// Image elements
        public static let image: Self = "image"
        
        /// Text content elements
        public static let text: Self = "text"
        
        /// Interactive elements
        public static let interactive: Self = "interactive"
        
        /// Layout or structural elements
        public static let layout: Self = "layout"
        
        /// Custom category
        public static let custom: Self = "custom"
        
        public var description: String { self.value }
    }
    
    /// Create an elementtiming value with a predefined category
    public init(category: Category, name: String, separator: String = "-") {
        if category == .custom {
            self.rawValue = name
        } else {
            self.rawValue = "\(category.description)\(separator)\(name)"
        }
    }
}
