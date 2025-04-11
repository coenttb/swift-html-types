//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 07/04/2025.
//


public struct FormTarget: Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "formtarget"
    
    /// The URL value
    package let value: String
    
    /// Initialize with a URL string
    public init(_ value: String) {
        self.value = value
    }
}

extension FormTarget: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.value = value
    }
}

extension FormTarget: CustomStringConvertible {
    /// Returns the string representation of the formtarget value
    public var description: String {
        return self.value
    }
}
