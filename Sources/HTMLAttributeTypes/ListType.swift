///
/// ListType.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 05/04/2025.
///

/// Represents the HTML `type` attribute for ordered lists.
///
/// The `type` attribute specifies the numbering type for an ordered list.
///
/// ## Examples
///
/// ```html
/// <ol type="i">
///   <li>First item</li>
///   <li>Second item</li>
///   <li>Third item</li>
/// </ol>
/// ```
public struct ListType: Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "type"
    
    /// Lowercase letters (a, b, c, ...)
    public static let lowerAlpha: Self = "a"
    
    /// Uppercase letters (A, B, C, ...)
    public static let upperAlpha: Self = "A"
    
    /// Lowercase Roman numerals (i, ii, iii, ...)
    public static let lowerRoman: Self = "i"
    
    /// Uppercase Roman numerals (I, II, III, ...)
    public static let upperRoman: Self = "I"
    
    /// Numbers (1, 2, 3, ...) - default
    public static let decimal: Self = "1"
    
    /// The attribute value
    package let value: String
    
    /// Initialize with a Value
    public init(_ value: String) {
        self.value = value
    }
}

extension ListType: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.init(value)
    }
}

extension ListType: CustomStringConvertible {
    /// Returns the string representation of the attribute value
    public var description: String {
        return value
    }
}
