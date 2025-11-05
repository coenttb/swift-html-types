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

/// Represents an HTML style element (`<style>`), which contains style information for a document or part of a document.
///
/// The `Style` struct provides a type-safe way to embed CSS styling directly within an HTML document.
///
/// ## Example
///
/// ```swift
/// style {
///     """
///     p {
///         color: #26b72b;
///     }
///     code {
///         font-weight: bold;
///     }
///     """
/// }
/// ```
///
/// ## Best Practices
///
/// - The `<style>` element should be included inside the `<head>` of the document.
/// - In general, it's better to put styles in external stylesheets and apply them using `<link>` elements.
/// - When using multiple `<style>` and `<link>` elements, they are applied in the order they appear in the document.
/// - You can use the `media` attribute to apply styles conditionally based on media queries.
///
public struct Style: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "style" }

    /// Defines which media the style should be applied to. Its value is a media query, which defaults to "all" if the attribute is missing.
    public var media: HTMLAttributeTypes.Media?

    /// Explicitly indicates that certain operations should be blocked on the fetching of critical subresources.
    public var blocking: HTMLAttributeTypes.Blocking?

    /// A cryptographic nonce (number used once) used to allow inline styles in a style-src Content-Security-Policy.
    public var nonce: HTMLAttributeTypes.Nonce?

    /// Specifies alternative style sheet sets.
    public var title: HTMLAttributeTypes.Title?

    /// Creates a new Style element with the specified attributes.
    ///
    /// - Parameters:
    ///   - media: Defines which media the style should be applied to
    ///   - blocking: Indicates operations to be blocked on fetching critical subresources
    ///   - nonce: A cryptographic nonce for Content-Security-Policy
    ///   - title: Specifies alternative style sheet sets
    public init(
        media: HTMLAttributeTypes.Media? = nil,
        blocking: HTMLAttributeTypes.Blocking? = nil,
        nonce: HTMLAttributeTypes.Nonce? = nil,
        title: HTMLAttributeTypes.Title? = nil
    ) {
        self.media = media
        self.blocking = blocking
        self.nonce = nonce
        self.title = title
    }
}
