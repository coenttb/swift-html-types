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

/// Represents an HTML `<strike>` element, which places a strikethrough (horizontal line) over text.
///
/// > **Deprecated**: This element is deprecated in HTML 4 and XHTML 1, and obsoleted in the HTML Living Standard.
/// > - If semantically representing deleted content, use `<del>` instead.
/// > - In all other cases, use `<s>` element.
///
/// ## Example
///
/// ```swift
/// strike {
///     "Today's Special: Salmon"
/// }
/// ```
///
/// ## Best Practices
///
/// - Avoid using this element in new code as it is deprecated.
/// - Use `<s>` for content that is no longer relevant or accurate.
/// - Use `<del>` for content that has been deleted from a document.
/// - Consider using CSS `text-decoration: line-through` for styling purposes instead.
///
public struct Strike: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "strike" }

    /// Creates a new Strike element.
    public init(

        )
    {

    }
}
