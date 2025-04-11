//
//  File.swift
//  swift-html-types
//
//  Created by Coen ten Thije Boonkkamp on 11/04/2025.
//

import Foundation

public struct Abbr: Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "abbr"
    
    /// The URL for form submission
    package let value: String
    
    /// Initialize with a URL string
    public init(_ value: String) {
        self.value = value
    }
}

extension Abbr: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.value = value
    }
}

extension Abbr: CustomStringConvertible {
    /// Returns the string representation of the abbr URL
    public var description: String {
        return self.value
    }
}
