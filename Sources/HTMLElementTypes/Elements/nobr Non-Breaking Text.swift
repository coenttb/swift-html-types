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

/// Represents an HTML `<nobr>` element, which prevents the text it contains from automatically wrapping across multiple lines.
///
/// ## Deprecation Notice
///
/// This element is deprecated and was never standard HTML. It's recommended to use the CSS property `white-space: nowrap` instead.
///
/// ## Example
///
/// ```swift
/// nobr {
///     "Long line with no breaks"
/// }
/// ```
///
/// ## Best Practice
///
/// Instead of using this element, use CSS:
/// ```html
/// <span style="white-space: nowrap;">Long line with no breaks</span>
/// ```
///
public struct NoBr: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "nobr" }

    /// Creates a new NoBr element with the specified content.
    @available(
        *,
        deprecated,
        message:
            "Although this element is widely supported, it was never standard HTML. Use CSS property `white-space: nowrap` instead."
    )
    public init(

        )
    {

    }
}
