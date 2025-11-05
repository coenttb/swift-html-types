// ===----------------------------------------------------------------------===//
//
// Copyright (c) 2025 Coen ten Thije Boonkkamp
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of project contributors
//
// SPDX-License-Identifier: Apache-2.0
//
// ===----------------------------------------------------------------------===//

/// The `accept-charset` attribute specifies the character encodings that the server accepts.
///
/// This attribute applies to `<form>` elements and defines which character sets are
/// allowed to be submitted. Multiple character sets can be specified by separating them with commas.
///
/// ## Usage Notes
///
/// - The default value is the reserved string "UNKNOWN" (indicates the same encoding as the document).
/// - The value "UTF-8" is recommended for maximum compatibility.
/// - This attribute is rarely needed in modern web applications since most servers now support UTF-8.
///
/// ## Examples
///
/// ```html
/// <form accept-charset="UTF-8">...</form>
/// <form accept-charset="ISO-8859-1,UTF-8">...</form>
/// ```
@dynamicMemberLookup
public struct AcceptCharset: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "accept-charset" }

    /// The URL for form submission
    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}

// MARK: - Common Character Encodings
extension AcceptCharset {
    /// UTF-8 encoding (recommended for most applications)
    public static let utf8: AcceptCharset = "UTF-8"

    /// ISO Latin-1 encoding
    public static let latin1: AcceptCharset = "ISO-8859-1"

    /// ASCII encoding
    public static let ascii: AcceptCharset = "US-ASCII"

    /// Windows-1252 encoding (commonly used in Western European countries)
    public static let windows1252: AcceptCharset = "windows-1252"

    /// UTF-8 and ISO Latin-1 encodings
    public static let utf8AndLatin1: AcceptCharset = "UTF-8,ISO-8859-1"
}
