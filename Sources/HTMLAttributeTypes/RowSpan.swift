///
/// RowSpan.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 08/04/2025.
///

import Foundation

/// Represents the HTML `rowspan` attribute, which specifies the number of rows a cell should span.
///
/// The `rowspan` attribute defines the number of rows a table cell should span vertically.
///
/// ## Usage Notes
///
/// - Used with `<td>` and `<th>` elements in tables
/// - Value must be a positive integer
/// - Default value is 1 if not specified
///
/// ## Examples
///
/// ```html
/// <td rowspan="2">This cell spans two rows</td>
/// ```
public struct RowSpan: Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "rowspan"
    
    /// The attribute value
    package let value: String
    
    /// Initialize with an integer value
    public init(_ value: Int) {
        self.value = String(value)
    }
}

extension RowSpan: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) {
        self.init(value)
    }
}

extension RowSpan: CustomStringConvertible {
    /// Returns the string representation of the attribute value
    public var description: String {
        return self.value
    }
}