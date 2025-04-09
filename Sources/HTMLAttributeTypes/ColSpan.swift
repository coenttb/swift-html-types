///
/// ColSpan.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 08/04/2025.
///

import Foundation

/// Represents the HTML `colspan` attribute, which specifies the number of columns a table cell should span.
///
/// ## Usage Notes
///
/// - Use this attribute with `<th>` and `<td>` elements to create cells that span multiple columns
/// - The value must be a positive integer
/// - Default value is 1 if not specified
///
/// ## Examples
///
/// ```html
/// <td colspan="2">Cell spans two columns</td>
/// ```
public struct ColSpan: Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "colspan"
    
    /// The attribute value
    package let value: String
    
    /// Initialize with an integer value
    public init(_ value: Int) {
        self.value = String(value)
    }
}

extension ColSpan: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) {
        self.value = String(value)
    }
}

extension ColSpan: CustomStringConvertible {
    /// Returns the string representation of the attribute value
    public var description: String {
        return self.value
    }
}