//
//  File 2.swift
//  swift-html-types
//
//  Created by Coen ten Thije Boonkkamp on 11/04/2025.
//

import Foundation

/// Represents the scrolling attribute for frame elements.
public enum Scrolling: String, Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "scrolling"
    
    /// Force scrollbars to appear even when not needed
    case yes
    
    /// Prevent scrollbars from appearing even when needed
    case no
    
    /// Allow browser to add scrollbars when necessary (default)
    case auto
}
