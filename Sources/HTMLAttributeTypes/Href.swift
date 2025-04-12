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


/// An attribute that specifies the URL that a hyperlink points to.
///
/// The `href` attribute is most commonly used on `<a>` elements to create hyperlinks,
/// but it's also used on several other elements like `<area>`, `<base>`, and `<link>`.
/// It defines the destination URL that the element links to.
///
/// ## Supported URL Schemes
///
/// Links are not restricted to HTTP-based URLs; they can use any URL scheme supported by browsers:
///
/// - HTTP and HTTPS URLs (e.g., `https://example.com`)
/// - Telephone numbers with `tel:` URLs (e.g., `tel:+1-234-567-8910`)
/// - Email addresses with `mailto:` URLs (e.g., `mailto:example@example.com`)
/// - SMS text messages with `sms:` URLs (e.g., `sms:+1-234-567-8910`)
/// - Local file paths with `file:` URLs (e.g., `file:///path/to/file.html`)
/// - Executable code with `javascript:` URLs (not recommended for security reasons)
///
/// ## URL Features
///
/// URLs can also include features to locate specific parts of the resource:
///
/// - Document fragments with hash symbols (e.g., `#section-id`)
/// - Specific text portions with text fragments (e.g., `#:~:text=Search%20Text`)
/// - Media fragments to specify time ranges in media files (e.g., `#t=10,20`)
///
/// ## Usage Notes
///
/// - For security reasons, use caution when creating links to `javascript:` URLs.
/// - When linking to external sites, consider using `rel="noopener"` to prevent security vulnerabilities.
/// - Links to non-HTTP protocols may not be supported by all browsers.
/// - Use absolute URLs when linking across domains and relative URLs for same-domain links.
/// - Empty `href` values (`href=""`) or omitted `href` attributes make the element act as a placeholder.
///
/// ## Examples
///
/// ```swift
/// // Basic external link
/// HTML.a.href("https://example.com").text("Visit Example.com")
///
/// // Link with a fragment
/// HTML.a.href("https://example.com/page#section").text("Go to Section")
///
/// // Email link
/// HTML.a.href(Href.email("example@example.com")).text("Contact Us")
///
/// // Phone link
/// HTML.a.href(Href.tel("123-456-7890")).text("Call Us")
///
/// // Relative link
/// HTML.a.href("/about").text("About Us")
/// ```
public struct Href: StringAttribute {
    /// The name of the HTML attribute
    public static let attribute: String = "href"
    
    /// The attribute value
    public let rawValue: String
    
    /// Initialize with a value for the href attribute
    public init(value: String) {
        self.rawValue = value
    }
}

