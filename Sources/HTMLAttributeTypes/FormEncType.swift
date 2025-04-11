//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 07/04/2025.
//

public struct FormEncType: Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "formenctype"
    
    /// The URL value
    package let value: String
    
    /// Initialize with a URL string
    public init(_ value: String) {
        self.value = value
    }
}

extension FormEncType: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.value = value
    }
}

extension FormEncType: CustomStringConvertible {
    /// Returns the string representation of the formenctype value
    public var description: String {
        return self.value
    }
}
