//
//  File.swift
//  swift-html-types
//
//  Created by Coen ten Thije Boonkkamp on 11/04/2025.
//

import Foundation

/// HTTP-equivalent values for pragma directives.
///
/// These values correspond to particular HTTP headers and are used with
/// the http-equiv attribute to provide document-level directives.
public struct HttpEquiv: Sendable, Equatable {
    
    package let value: String
    
    public init(_ value: String) {
        self.value = value
    }
    
}

extension HttpEquiv: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self = .init(value)
    }
}

extension HttpEquiv: CustomStringConvertible {
    /// Returns the string representation of the href value
    public var description: String {
        return self.value
    }
}


extension HttpEquiv {
    /// Defines a content security policy for the page.
    public static let contentSecurityPolicy: Self = "content-security-policy"
    
    /// Declares the MIME type and character encoding.
    public static let contentType: Self = "content-type"
    
    /// Sets the name of the default CSS style sheet set.
    public static let defaultStyle: Self = "default-style"
    
    /// Specifies page reload or redirect behavior.
    public static let refresh: Self = "refresh"
    
    /// Specifies Internet Explorer compatibility mode.
    public static let xUaCompatible: Self = "x-ua-compatible"
}
