//
//  File.swift
//  swift-html-types
//
//  Created by Coen ten Thije Boonkkamp on 11/04/2025.
//

import Foundation

public struct Label: Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "label"
    
    /// The URL value
    package let value: String
    
    /// Initialize with a URL string
    public init(_ value: String) {
        self.value = value
    }
}

extension Label: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.value = value
    }
}

extension Label: CustomStringConvertible {
    /// Returns the string representation of the label value
    public var description: String {
        return self.value
    }
}
