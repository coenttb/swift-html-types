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

/// Represents an HTML mark element (`<mark>`), which represents text that is marked or highlighted
/// for reference or notation purposes due to its relevance in the enclosing context.
///
/// The `Mark` struct provides a type-safe way to create HTML mark elements for highlighting text.
///
/// ## Example
///
/// ```swift
/// mark {
///     "This text is highlighted for relevance"
/// }
/// ```
///
/// ## Best Practices
///
/// - Use mark to highlight text of special interest, such as search results or key phrases
/// - Don't use mark for syntax highlighting; use span with appropriate CSS instead
/// - Don't confuse mark with strong; mark indicates relevance while strong indicates importance
///
/// ## Accessibility
///
/// The presence of the mark element is not announced by most screen reading technology by default.
/// Consider using CSS ::before and ::after pseudo-elements to make it more accessible if necessary.
///
public struct Mark: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "mark" }

    /// Creates a new Mark element with the specified content.
    public init() {
    }
}
