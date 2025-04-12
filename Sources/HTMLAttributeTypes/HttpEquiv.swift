//===----------------------------------------------------------------------===//
//
// Copyright (c) 2025 Coen ten Thije Boonkkamp
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of project contributors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//


/// HTTP-equivalent values for pragma directives.
///
/// These values correspond to particular HTTP headers and are used with
/// the http-equiv attribute to provide document-level directives.
public struct HttpEquiv: StringAttribute {
    /// The name of the HTML attribute
    public static let attribute: String = "http-equiv"
    
    /// The attribute value
    public let rawValue: String
    
    /// Initialize with a value for the http-equiv attribute
    public init(value: String) {
        self.rawValue = value
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
