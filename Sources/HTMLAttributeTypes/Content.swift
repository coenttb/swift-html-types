//
//  File.swift
//  swift-html-types
//
//  Created by Coen ten Thije Boonkkamp on 11/04/2025.
//

import Foundation


public struct Content: Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "content"
    
    /// The field name that will contain the directionality information
    package let value: String
    
    /// Initialize with a field name for the directionality information
    public init(_ value: String) {
        self.value = value
    }
}

extension Content: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.value = value
    }
}

extension Content: CustomStringConvertible {
    /// Returns the string representation of the content value
    public var description: String {
        return self.value
    }
}
