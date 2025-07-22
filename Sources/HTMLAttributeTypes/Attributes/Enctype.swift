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

/// An attribute that specifies how form data should be encoded when submitted.
///
/// The `enctype` attribute defines the MIME type of the form submission. It is only
/// relevant when the form's method is POST, as it determines how the form data is
/// encoded before sending it to the server.
///
/// ## Available Encoding Types
///
/// - `application/x-www-form-urlencoded` (default): Standard form encoding
/// - `multipart/form-data`: Required for file uploads
/// - `text/plain`: Minimal encoding, useful for debugging
///
/// ## Encoding Type Characteristics
///
/// ### application/x-www-form-urlencoded
/// - Default encoding if enctype is not specified
/// - All characters are encoded (spaces converted to "+" and special characters to hex values)
/// - Form data is sent as a single block in the request body
/// - Format is similar to URL query parameters: `name1=value1&name2=value2`
/// - Not suitable for file uploads
///
/// ### multipart/form-data
/// - Required for forms that include file uploads
/// - Form data is sent in multiple parts, each with its own MIME type
/// - Preserves filenames, content types, and binary data
/// - More overhead than other encodings
/// - Used with `<input type="file">` elements
///
/// ### text/plain
/// - Minimal encoding (spaces remain spaces, no special character encoding)
/// - Each form field is sent on a new line
/// - Primarily useful for debugging, not recommended for production
/// - Format is: `name1=value1\r\nname2=value2`
///
/// ## Usage Notes
///
/// - Only applies to forms using the POST method
/// - Can be overridden by `formenctype` attributes on submit buttons
/// - Always use `multipart/form-data` when the form includes file uploads
/// - For most forms without file uploads, the default encoding is sufficient
///
/// ## Examples
///
/// ```swift
/// // Form with default encoding
/// HTML.form.action("/submit").method(.post)
///
/// // Form with file uploads
/// HTML.form.action("/upload").method(.post).enctype(.multipartFormData)
///
/// // Form for debugging
/// HTML.form.action("/debug").method(.post).enctype(.textPlain)
///
/// // Using string value
/// HTML.form.enctype("multipart/form-data")
/// ```
@dynamicMemberLookup
public struct EncType: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "enctype" }

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the encoding type
    public init(value: String) {
        self.rawValue = value
    }
}

extension EncType {
    /// Standard form encoding (default)
    @inlinable public static var urlEncoded: Self { "application/x-www-form-urlencoded" }

    /// Required for file uploads
    @inlinable public static var multipartFormData: Self { "multipart/form-data" }

    /// Minimal encoding, useful for debugging
    @inlinable public static var textPlain: Self { "text/plain" }
}
