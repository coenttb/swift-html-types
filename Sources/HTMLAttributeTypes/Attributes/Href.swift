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
@dynamicMemberLookup
public struct Href: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "href" }

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the href attribute
    public init(value: String) {
        self.rawValue = value
    }
}

extension Href {
    /// Create an Href for a telephone number
    /// - Parameter phoneNumber: The phone number (can include country code, dashes, spaces, etc.)
    /// - Returns: An Href with a tel: scheme
    public static func tel(_ phoneNumber: String) -> Href {
        return Href(value: "tel:\(phoneNumber)")
    }

    /// Create an Href for an email address
    /// - Parameter email: The email address
    /// - Returns: An Href with a mailto: scheme
    public static func mailto(_ email: String) -> Href {
        return Href(value: "mailto:\(email)")
    }

    /// Create an Href for SMS
    /// - Parameter phoneNumber: The phone number to send SMS to
    /// - Returns: An Href with an sms: scheme
    public static func sms(_ phoneNumber: String) -> Href {
        return Href(value: "sms:\(phoneNumber)")
    }

    /// Create an Href for a file URL
    /// - Parameter path: The file path
    /// - Returns: An Href with a file: scheme
    public static func file(_ path: String) -> Href {
        return Href(value: "file://\(path)")
    }

    /// Create an Href for a fragment (anchor) within the current page
    /// - Parameter fragment: The fragment identifier (without the # symbol)
    /// - Returns: An Href with just the fragment
    public static func fragment(_ fragment: String) -> Href {
        return Href(value: "#\(fragment)")
    }

    /// Create an Href for WhatsApp
    /// - Parameter phoneNumber: The phone number (with country code)
    /// - Returns: An Href with a WhatsApp URL scheme
    public static func whatsapp(_ phoneNumber: String) -> Href {
        return Href(value: "https://wa.me/\(phoneNumber)")
    }

    /// Create an Href for FaceTime
    /// - Parameter contact: Phone number or email address
    /// - Returns: An Href with a facetime: scheme
    public static func facetime(_ contact: String) -> Href {
        return Href(value: "facetime:\(contact)")
    }

    /// Create an Href for FaceTime video call
    /// - Parameter contact: Phone number or email address
    /// - Returns: An Href with a facetime-video: scheme
    public static func facetimeVideo(_ contact: String) -> Href {
        return Href(value: "facetime-video:\(contact)")
    }
}

// MARK: - Usage Examples
/*
// Foundation.URL
let websiteURL = URL(string: "https://example.com")!
let link1 = Link(href: Href.url(websiteURL), rel: "external")

// Telephone
let phoneLink = Link(href: Href.tel("+1-555-123-4567"), rel: "nofollow")

// Email
let emailLink = Link(href: Href.mailto("contact@example.com"), rel: "nofollow")
let emailWithSubject = Link(href: Href.mailto("support@example.com", subject: "Help Request"), rel: "nofollow")

// SMS
let smsLink = Link(href: Href.sms("+1-555-123-4567"), rel: "nofollow")
let smsWithBody = Link(href: Href.sms("+1-555-123-4567", body: "Hello there!"), rel: "nofollow")

// Fragment/Anchor
let anchorLink = Link(href: Href.fragment("section-1"), rel: "bookmark")

// WhatsApp
let whatsappLink = Link(href: Href.whatsapp("+1234567890"), rel: "nofollow")
let whatsappWithMessage = Link(href: Href.whatsapp("+1234567890", message: "Hello!"), rel: "nofollow")

// File
let fileLink = Link(href: Href.file("/path/to/document.pdf"), rel: "nofollow")

// FaceTime
let facetimeLink = Link(href: Href.facetime("user@example.com"), rel: "nofollow")
let facetimeVideoLink = Link(href: Href.facetimeVideo("+1-555-123-4567"), rel: "nofollow")
*/
