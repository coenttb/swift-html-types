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

/// Represents the HTML data attribute for the `<object>` element.
///
/// The `data` attribute specifies the URL of the resource to be used by the object.
/// This can be any type of media, document, or other resource the browser can display
/// or process. At least one of `data` or `type` attributes must be defined for the object element.
///
/// ## Usage Notes
///
/// - Specifies the URL of the resource to be embedded
/// - Can point to various file types like PDFs, videos, images, or HTML pages
/// - Local files or remote URLs are both supported
/// - If the browser cannot display the object, fallback content inside the element will be shown
///
/// ## Examples
///
/// ```html
/// <!-- Embed a PDF -->
/// <object data="document.pdf" type="application/pdf" width="600" height="400">
///   <p>Your browser doesn't support PDFs. <a href="document.pdf">Download the PDF</a> instead.</p>
/// </object>
///
/// <!-- Embed another HTML page -->
/// <object data="page.html" type="text/html" width="500" height="300">
///   <p>Unable to display the page.</p>
/// </object>
/// ```
@dynamicMemberLookup
public struct ObjectData: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "data" }

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the data attribute
    public init(value: String) {
        self.rawValue = value
    }
}
