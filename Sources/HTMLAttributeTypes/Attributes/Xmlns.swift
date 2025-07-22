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

/// The `xmlns` attribute specifies the XML namespace for an HTML document.
///
/// The XML namespace is a URI that defines the document as being XHTML and specifies
/// the dialect of the markup language used. For HTML documents, the namespace is typically
/// `http://www.w3.org/1999/xhtml`.
///
/// ## Usage Notes
///
/// - Used primarily in the `<html>` root element
/// - Required for XHTML documents
/// - Optional in HTML5 documents
/// - Required when serving documents as XHTML
///
/// ## Examples
///
/// ```html
/// <html xmlns="http://www.w3.org/1999/xhtml">
/// ```
@dynamicMemberLookup
public struct Xmlns: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "xmlns" }

    /// The namespace URI
    public var rawValue: String

    /// Initialize with a string value
    public init(value: String) {
        self.rawValue = value
    }

    /// Initialize with a value
    public init(_ value: String) {
        self.init(value: value)
    }

    /// Standard HTML namespace
    @inlinable public static var html: Self { "http://www.w3.org/1999/xhtml" }
}
