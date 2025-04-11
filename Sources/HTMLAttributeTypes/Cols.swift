//
//  File.swift
//  swift-html-types
//
//  Created by Coen ten Thije Boonkkamp on 11/04/2025.
//

import Foundation

public struct Cols: Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "cols"
    
    /// The attribute value
    package let value: String
    
    /// Initialize with an integer value
    public init(_ value: Int) {
        self.value = String(value)
    }
}

extension Cols: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) {
        self.value = String(value)
    }
}

extension Cols: CustomStringConvertible {
    /// Returns the string representation of the attribute value
    public var description: String {
        return self.value
    }
}
