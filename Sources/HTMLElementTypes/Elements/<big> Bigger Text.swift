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

/// Represents an HTML `<big>` element, which renders text at a font size one level larger than surrounding text.
///
/// The `Big` struct provides a type-safe way to create HTML big elements. Note that this element is deprecated
/// in HTML standards and CSS `font-size: larger` is recommended instead.
///
/// ## Example
///
/// ```swift
/// big {
///     "This text will appear bigger"
/// }
/// ```
///
/// ## Best Practices
///
/// - Consider using CSS `font-size` property instead as `<big>` is deprecated
/// - For modern development, prefer using semantic elements with appropriate CSS styling
///
public struct Big: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "big" }

    /// Creates a new Big element.
    public init() {}
}
