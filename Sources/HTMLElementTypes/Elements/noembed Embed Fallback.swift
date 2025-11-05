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

/// Represents an HTML `<noembed>` element, which provides fallback content for browsers that do not support the `<embed>` element.
///
/// The `EmbedFallback` struct provides a way to create HTML fallback content for embedded media.
///
/// > Important: This element is deprecated in HTML and should not be used in new projects.
/// > Use `<object>` instead, with fallback content between the opening and closing tags.
///
/// ## Example
///
/// ```swift
/// noembed {
///     "Alternative content for browsers that don't support embed"
/// }
/// ```
///
/// ## Best Practices
///
/// - Avoid using this element in new code as it is deprecated
/// - Use `<object>` with fallback content instead
/// - Provide descriptive alternative content that explains what would be shown
///
public struct EmbedFallback: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "noembed" }

    /// Creates a new EmbedFallback element with the specified content.
    @available(
        *,
        deprecated,
        message:
            "The <noembed> element is deprecated in HTML standards. Use <object> with fallback content instead."
    )
    public init(

        )
    {

    }
}
