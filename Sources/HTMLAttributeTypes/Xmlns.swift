///
/// Xmlns.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 09/04/2025.
///

import Foundation

/// The `xmlns` attribute specifies the XML namespace for an HTML document.
///
/// The XML namespace is a URI that defines the document as being XHTML and specifies
/// the dialect of the markup language used. For HTML documents, the namespace is typically
/// `http://www.w3.org/1999/xhtml`.
///
/// ## Usage Notes
///
/// - Used primarily in the `<html>` root element
/// - Required for XHTML documents
/// - Optional in HTML5 documents
///
/// ## Examples
///
/// ```html
/// <html xmlns="http://www.w3.org/1999/xhtml">
/// ```
public struct Xmlns: Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "xmlns"
    
    /// The attribute value
    package let value: String
    
    /// Initialize with a value
    public init(_ value: String) {
        self.value = value
    }
}

extension Xmlns: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.value = value
    }
}

extension Xmlns: CustomStringConvertible {
    /// Returns the string representation of the attribute value
    public var description: String {
        return self.value
    }
}