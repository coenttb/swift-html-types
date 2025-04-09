
///
/// High.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 4/9/2025.
///

import Foundation

/// Represents the `high` attribute, which specifies the range that is considered to be high for a given range on a meter element.
///
/// ## Usage Notes
///
/// - The `high` attribute is used with the `<meter>` element.
/// - If the value is higher than the `high` value, it's considered high value range.
/// - If specified, the `high` value must be:
///   - Greater than the `low` value
///   - Less than or equal to the `max` value
///
/// ## Examples
///
/// ```html
/// <meter value="90" min="0" max="100" low="33" high="67">90 out of 100</meter>
/// ```
public struct High: Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "high"
    
    /// The attribute value
    public let value: Double
    
    /// Initialize with a value
    public init(_ value: Double) {
        self.value = value
    }
}

extension High: ExpressibleByFloatLiteral {
    public init(floatLiteral value: Double) {
        self.value = value
    }
}

extension High: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) {
        self.value = Double(value)
    }
}

extension High: CustomStringConvertible {
    /// Returns the string representation of the attribute value
    public var description: String {
        return String(self.value)
    }
}
