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

/// Represents an HTML list item element (`<li>`), which is used to represent an item in a list.
///
/// The `ListItem` struct provides a type-safe way to create HTML list items for use within
/// ordered lists (`<ol>`), unordered lists (`<ul>`), or menus (`<menu>`).
///
/// ## Example
///
/// ```swift
/// ul {
///     li {
///         "First item"
///     }
///     li {
///         "Second item"
///     }
/// }
/// ```
///
/// ## Ordered List with Custom Value
///
/// ```swift
/// ol {
///     li(value: 3) {
///         "Third item"
///     }
///     li {
///         "Fourth item"
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - Use list items only within appropriate parent elements (`<ul>`, `<ol>`, or `<menu>`)
/// - The `value` attribute only has meaning within ordered lists
/// - Use CSS for styling rather than deprecated attributes like `type`
///
public struct ListItem: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "li" }

    /// The ordinal value of the list item (only meaningful within `<ol>` elements).
    /// This integer attribute indicates the current ordinal value as defined by the
    /// parent `<ol>` element. List items that follow this one continue numbering from this value.
    public var value: Value<Int>?

    /// Creates a new list item element with the specified value.
    ///
    /// - Parameters:
    ///   - value: The ordinal value of the list item (only meaningful within `<ol>` elements)
    public init(
        value: Value<Int>? = nil
    ) {
        self.value = value

    }
}
