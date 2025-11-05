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

/// Represents an HTML center element (`<center>`), which centers text horizontally.
///
/// The `Center` struct provides a type-safe way to create centered text elements.
///
/// > **Deprecation Notice**: The `<center>` element is deprecated in HTML5.
/// > Use CSS `text-align: center` with `<div>` or `<p>` elements instead.
///
/// ## Example
///
/// ```swift
/// center {
///     "This text will be centered."
///     p {
///         "So will this paragraph."
///     }
/// }
/// ```
///
/// ## CSS Alternative (Recommended)
///
/// ```html
/// <div style="text-align:center">
///   This text will be centered.
///   <p>So will this paragraph.</p>
/// </div>
/// ```
///
/// ## Best Practices
///
/// - Avoid using this element in new code as it is deprecated
/// - Instead, use CSS `text-align: center` with `<div>` or `<p>` elements
/// - For centering blocks, use CSS properties like `margin-left` and `margin-right` set to `auto`
///
public struct Center: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "center" }

    /// Creates a new Center element.
    public init(

        )
    {

    }
}
