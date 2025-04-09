//
//  AcceptCharset.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 04/04/2025.
//

import Foundation

/// The `accept-charset` attribute specifies the character encodings that the server accepts.
///
/// This attribute applies to `<form>` elements and defines which character sets are 
/// allowed to be submitted. Multiple character sets can be specified by separating them with commas.
///
/// ## Usage Notes
///
/// - The default value is the reserved string "UNKNOWN" (indicates the same encoding as the document).
/// - The value "UTF-8" is recommended for maximum compatibility.
/// - This attribute is rarely needed in modern web applications since most servers now support UTF-8.
///
/// ## Examples
///
/// ```html
/// <form accept-charset="UTF-8">...</form>
/// <form accept-charset="ISO-8859-1,UTF-8">...</form>
/// ```
public struct AcceptCharset: Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "accept-charset"
    
    /// The attribute value
    package let value: String
    
    /// Initialize with a value
    public init(_ value: String) {
        self.value = value
    }
}

extension AcceptCharset: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.value = value
    }
}

extension AcceptCharset: CustomStringConvertible {
    /// Returns the string representation of the attribute value
    public var description: String {
        return self.value
    }
}

// MARK: - Common Character Encodings
extension AcceptCharset {
    /// UTF-8 encoding (recommended for most applications)
    public static let utf8: AcceptCharset = "UTF-8"
    
    /// ISO Latin-1 encoding
    public static let latin1: AcceptCharset = "ISO-8859-1"
    
    /// ASCII encoding
    public static let ascii: AcceptCharset = "US-ASCII"
    
    /// Windows-1252 encoding (commonly used in Western European countries)
    public static let windows1252: AcceptCharset = "windows-1252"
    
    /// UTF-8 and ISO Latin-1 encodings
    public static let utf8AndLatin1: AcceptCharset = "UTF-8,ISO-8859-1"
}
