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

/// Represents an HTML navigation section element (`<nav>`), which defines a section of a page that contains navigation links.
///
/// The `NavigationSection` struct provides a type-safe way to create HTML navigation sections for menus, tables of contents, indexes, and other navigation elements.
///
/// ## Example
///
/// ```swift
/// nav {
///     ul {
///         li { a(href: "/home") { "Home" } }
///         li { a(href: "/about") { "About" } }
///         li { a(href: "/contact") { "Contact" } }
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - Use the `<nav>` element only for major blocks of navigation links
/// - A document may have several `<nav>` elements (e.g., one for site navigation and one for in-page navigation)
/// - Not all groups of links need to be in a `<nav>` element (e.g., footer links often don't need to be in a `<nav>`)
/// - For accessibility, consider using `aria-labelledby` to label navigation sections when a page has multiple navigation blocks
/// - Screen readers may use this element to determine whether to omit the initial rendering of navigation-only content
///
public struct NavigationSection: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "nav" }

    /// Creates a new NavigationSection element.
    public init(

        )
    {

    }
}
