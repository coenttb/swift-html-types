//
// Cite.swift
// swift-html
//
// Created by Coen ten Thije Boonkkamp on 07/04/2025.
//

import Foundation

/// Represents the `cite` attribute, which contains a URL that designates a source document or message for the information quoted.
///
/// The `cite` attribute is used on elements like `<blockquote>`, `<q>`, `<ins>`, and `<del>` to indicate the source of the quoted material.
///
/// ## Usage Notes
///
/// - The value should be a valid URL pointing to the source document.
/// - This attribute is purely advisory, and most browsers don't display it in any special way.
///
/// ## Examples
///
/// ```html
/// <blockquote cite="https://example.com/source">Quoted text</blockquote>
/// ```
public struct Cite: Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "cite"
    
    /// The attribute value (URL to the source document)
    package let value: String
    
    /// Initialize with a value
    public init(_ value: String) {
        self.value = value
    }
}

extension Cite: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.value = value
    }
}

extension Cite: CustomStringConvertible {
    /// Returns the string representation of the attribute value
    public var description: String {
        return self.value
    }
}
