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

extension FormTarget {
    /// Opens the response in the current browsing context (default)
    public static let `self`: Self = "_self"
    
    /// Opens the response in a new browsing context (usually a new tab)
    public static let blank: Self = "_blank"
    
    /// Opens the response in the parent browsing context; if no parent exists, behaves as `self`
    public static let parent: Self = "_parent"
    
    /// Opens the response in the topmost browsing context; if no ancestors exist, behaves as `self`
    public static let top: Self = "_top"
    
    /// Allows embedded fenced frames to navigate the top-level frame
    public static let unfencedTop: Self = "_unfencedTop"
}
