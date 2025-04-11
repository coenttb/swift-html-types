//
//  File.swift
//  swift-html-types
//
//  Created by Coen ten Thije Boonkkamp on 11/04/2025.
//

import Foundation

/// Represents the marginheight attribute for frame elements.
public struct MarginHeight: Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "marginheight"
    
    /// The attribute value
    package let value: String
    
    /// Initialize with a value
    public init(_ value: String) {
        self.value = value
    }
}

extension MarginHeight: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.value = value
    }
}

extension MarginHeight: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) {
        self.value = String(value)
    }
}

extension MarginHeight: CustomStringConvertible {
    /// Returns the string representation of the attribute value
    public var description: String {
        return self.value
    }
}
