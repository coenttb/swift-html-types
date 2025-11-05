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

import HTMLAttributeTypes

/// Represents an HTML meta element (`<meta>`), which provides metadata about the document
/// that cannot be expressed by other HTML meta-related elements.
///
/// The `Meta` struct provides a type-safe way to create HTML meta elements for various
/// types of metadata, including character encoding, viewport settings, page descriptions,
/// and more. It is a void element (has no content) and uses different attribute combinations
/// to specify the type of metadata it provides.
///
/// Meta elements can provide four main types of metadata:
/// - Character encoding declaration (using the `charset` attribute)
/// - Document-level metadata (using the `name` and `content` attributes)
/// - Pragma directives (using the `http-equiv` and `content` attributes)
/// - User-defined metadata (using the `itemprop` attribute)
///
/// ## Examples
///
/// ```swift
/// // Character encoding
/// meta(charset: "utf-8")
///
/// // Viewport settings
/// meta(name: .viewport, content: "width=device-width, initial-scale=1")
///
/// // Page description
/// meta(name: .description, content: "A page about HTML metadata")
///
/// // Redirect
/// meta(httpEquiv: .refresh, content: "3;url=https://example.com")
/// ```
///
/// ## Best Practices
///
/// - Always include charset and viewport meta elements
/// - Place the charset declaration as early as possible in the head
/// - Include a description meta element for SEO (150-160 characters)
/// - Use Open Graph meta tags for better social media sharing
/// - Avoid using http-equiv="refresh" for accessibility reasons
///
/// - Note: When rendered, this generates an HTML `<meta>` element with the appropriate
///   attributes based on the metadata type.
public struct Meta: HTMLElement {
    @inlinable public static var tag: String { "meta" }

    /// Declares the document's character encoding.
    ///
    /// In HTML5, the only valid value is "utf-8". The charset meta element
    /// should be placed as early as possible within the head element.
    public var charset: CharSet?

    /// Contains the value for the http-equiv or name attribute.
    ///
    /// The format and meaning of this attribute depends on which attribute
    /// it's paired with (name, http-equiv, or itemprop).
    public var content: Content?

    /// Defines a pragma directive.
    ///
    /// Provides information equivalent to what can be given by a similarly named HTTP header.
    /// Uses the HttpEquiv enum for type-safe value selection.
    public var httpEquiv: HttpEquiv?

    /// Defines the media for which the theme color applies.
    ///
    /// Only used with `name="theme-color"`. Accepts a media query.
    public var media: Media?

    /// Provides document-level metadata in terms of name-value pairs.
    ///
    /// Uses the Name enum for type-safe value selection of common metadata types.
    public var name: MetaName?

    /// Creates a new Meta element with custom attributes.
    ///
    /// Use this initializer when you need to set multiple or custom attributes.
    ///
    /// - Parameters:
    ///   - charset: The document's character encoding
    ///   - content: The value for the http-equiv or name attribute
    ///   - httpEquiv: Pragma directive
    ///   - media: Media query for theme-color
    ///   - name: Metadata name
    public init(
        charset: CharSet? = nil,
        content: Content? = nil,
        httpEquiv: HttpEquiv? = nil,
        media: Media? = nil,
        name: MetaName? = nil
    ) {
        self.charset = charset
        self.content = content
        self.httpEquiv = httpEquiv
        self.media = media
        self.name = name
    }

    /// Creates a new Meta element with name and content.
    ///
    /// Use this initializer for document-level metadata like viewport settings,
    /// descriptions, authors, etc.
    ///
    /// - Parameters:
    ///   - name: The metadata name (from standard set)
    ///   - content: The metadata value
    ///   - media: Optional media query (only for theme-color)
    public init(
        name: MetaName,
        content: Content,
        media: Media? = nil
    ) {
        self.name = name
        self.content = content
        self.media = media
    }

    /// Creates a new Meta element with custom name and content.
    ///
    /// Use this initializer for document-level metadata using non-standard names.
    ///
    /// - Parameters:
    ///   - name: The custom metadata name
    ///   - content: The metadata value
    ///   - media: Optional media query
    public init(
        content: Content,
        media: Media? = nil
    ) {
        self.content = content
        self.media = media
    }

    /// Creates a new Meta element with http-equiv and content.
    ///
    /// Use this initializer for pragma directives like refresh, content-security-policy, etc.
    ///
    /// - Parameters:
    ///   - httpEquiv: The pragma directive name
    ///   - content: The directive value
    public init(
        httpEquiv: HttpEquiv,
        content: Content
    ) {
        self.httpEquiv = httpEquiv
        self.content = content
    }
}

// MARK: - Convenient Factory Methods

extension Meta {
    /// Creates a meta element for UTF-8 character encoding.
    public static let utf8 = Meta(charset: "utf-8")

    /// Creates a meta element for responsive viewport.
    public static let viewport = Meta(
        name: .viewport,
        content: "width=device-width, initial-scale=1"
    )
    //
    //    /// Creates a description meta element.
    //    ///
    //    /// - Parameter description: The page description (recommended 150-160 characters)
    //    /// - Returns: A meta element with name="description"
    //    public static func description(_ description: String) -> Meta {
    //        return Meta(name: Name.description, content: description)
    //    }
    //
    //    /// Creates a theme-color meta element.
    //    ///
    //    /// - Parameters:
    //    ///   - color: The theme color (CSS color value)
    //    ///   - media: Optional media query for when the color applies
    //    /// - Returns: A meta element with name="theme-color"
    //    public static func themeColor(_ color: String, media: Media? = nil) -> Meta {
    //        return Meta(name: .themeColor, content: color, media: media)
    //    }
    //
    //    /// Creates a refresh meta element for redirecting to another URL.
    //    ///
    //    /// - Parameters:
    //    ///   - seconds: The number of seconds before redirecting
    //    ///   - url: The URL to redirect to
    //    /// - Returns: A meta element with http-equiv="refresh"
    //    ///
    //    /// - Warning: This method should be used with caution for accessibility reasons.
    //    ///   People using assistive technology may not have enough time to read the content
    //    ///   before being redirected.
    //    public static func redirect(after seconds: Int, to url: String) -> Meta {
    //        return Meta(httpEquiv: .refresh, content: "\(seconds);url=\(url)")
    //    }
    //
    /// Creates a meta element for Open Graph protocol.
    ///
    /// - Parameters:
    ///   - property: The Open Graph property (e.g., "og:title", "og:description")
    ///   - content: The property value
    /// - Returns: A meta element with property and content attributes
    public static func openGraph(property: String, content: Content) -> Meta {
        return Meta(name: .init(stringLiteral: property), content: content)
    }
}
