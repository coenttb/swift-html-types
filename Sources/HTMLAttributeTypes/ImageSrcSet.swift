//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 06/04/2025.
//

public struct ImageSrcSet: Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "imagesrcset"
    
    /// The URL value
    package let value: String
    
    /// Initialize with a URL string
    public init(_ value: String) {
        self.value = value
    }
}

extension ImageSrcSet: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self.value = value
    }
}

extension ImageSrcSet: CustomStringConvertible {
    /// Returns the string representation of the imagesrcset value
    public var description: String {
        return self.value
    }
}

