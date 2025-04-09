///
/// Headers.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 08/04/2025.
///

import Foundation

/// Represents the `headers` attribute, which identifies the header cell(s) 
/// that apply to a table data or header cell.
///
/// The `headers` attribute provides a way to explicitly associate data cells with their headers
/// for improved accessibility, especially in complex tables.
///
/// ## Usage Notes
///
/// - Use this attribute on `<td>` and `<th>` elements to reference the `id` values of the 
///   header cells that apply to the cell.
/// - Multiple header IDs should be separated by spaces.
/// - This attribute is particularly useful for accessibility in complex tables with 
///   non-standard layouts.
///
/// ## Examples
///
/// ```html
/// <th id="header1">Header 1</th>
/// <td headers="header1">Data cell</td>
/// ```
public struct Headers: Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "headers"
    
    /// Contains a list of space-separated strings, each corresponding to the id attribute of the <th> elements that provide headings for this table cell.
    package let value: String
    
    /// Initialize with a value
    public init(_ value: String) {
        self.value = value
    }
}

extension Headers {
    public init(_ values: [String]){
        self = .init(values.joined(separator: " "))
    }
}

extension Headers: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.value = value
    }
}

extension Headers: CustomStringConvertible {
    /// Returns the string representation of the attribute value
    public var description: String {
        return self.value
    }
}
