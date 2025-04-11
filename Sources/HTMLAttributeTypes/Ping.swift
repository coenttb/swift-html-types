//
//  File.swift
//  swift-html
//
//  Created by Coen ten Thije Boonkkamp on 03/04/2025.
//


//ping
//A space-separated list of URLs. When the link is followed, the browser will send POST requests with the body PING to the URLs. Typically for tracking.
public struct Ping: Attribute {
    /// The name of the HTML attribute
    public static let attribute: String = "ping"
    
    /// The URL value
    package let value: String
    
    /// Initialize with a URL string
    public init(_ value: String) {
        self.value = value
    }
}

extension Ping: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self = .init(value)
    }
}

extension Ping: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: String...) {
        self = .init(elements.joined(separator: " "))
    }
}

extension Ping: CustomStringConvertible {
    /// Returns the string representation of the ping value
    public var description: String {
        return self.value
    }
}


