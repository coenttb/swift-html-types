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

/// Represents an HTML header element (`<header>`), which represents introductory content, typically
/// a group of introductory or navigational aids.
///
/// A header typically contains heading elements but may also include a logo, search form, author name,
/// and other elements.
///
/// ## Example
///
/// ```swift
/// header {
///     h1 { "Main Page Title" }
///     img(src: "logo.png", alt: "Company Logo")
/// }
/// ```
///
/// ## Accessibility
///
/// - The `<header>` element defines a `banner` landmark when its context is the `<body>` element.
/// - It is not considered a banner landmark when it is a descendant of an `<article>`, `<aside>`,
///   `<main>`, `<nav>`, or `<section>` element.
///
/// ## Best Practices
///
/// - Use `<header>` for introductory content at the beginning of a section or page
/// - A page can have multiple `<header>` elements for different sections
/// - Do not nest a `<header>` inside an `<address>`, `<footer>` or another `<header>` element
/// - The `<header>` element should not contain another `<header>` or a `<footer>` element
///
public struct Header: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "header" }

    /// Creates a new Header element.
    public init(

        )
    {

    }
}
