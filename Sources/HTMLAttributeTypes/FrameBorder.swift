//
//  File 2.swift
//  swift-html-types
//
//  Created by Coen ten Thije Boonkkamp on 11/04/2025.
//

import Foundation

/// Represents the frameborder attribute for frame elements.
public struct FrameBorder: Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "frameborder"
    
    /// The attribute value
    package let value: String
    
    /// Initialize with a value
    public init(_ value: String) {
        self.value = value
    }
}

extension FrameBorder: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.value = value
    }
}

extension FrameBorder: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) {
        self.value = String(value)
    }
}

extension FrameBorder: CustomStringConvertible {
    /// Returns the string representation of the attribute value
    public var description: String {
        return self.value
    }
}

