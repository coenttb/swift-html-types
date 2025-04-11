//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 03/04/2025.
//


//hreflang
//Hints at the human language of the linked URL. No built-in functionality. Allowed values are the same as the global lang attribute.

public struct Hreflang: Attribute {
    public static let attribute: String = "hreflang"
    
    private var value: String
    
    public init(_ value: String) {
        self.value = value
    }
}

extension Hreflang: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self = .init(value)
    }
}

extension Hreflang: CustomStringConvertible {
    /// Returns the string representation of the href value
    public var description: String {
        return self.value
    }
}
