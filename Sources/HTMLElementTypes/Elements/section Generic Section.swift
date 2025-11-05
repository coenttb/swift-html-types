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

/// Represents an HTML section element (`<section>`), which represents a generic standalone
/// section of a document that doesn't have a more specific semantic element to represent it.
///
/// The `Section` struct provides a type-safe way to create HTML section elements with appropriate attributes.
/// Sections should always have a heading (h1-h6), with very few exceptions.
///
/// ## Example
///
/// ```swift
/// section {
///     h2 { "Introduction" }
///     p { "This document provides a guide to help with the important task of choosing the correct Apple." }
/// }
/// ```
///
/// ## Best Practices
///
/// - Use `<section>` only if there isn't a more specific element to represent it
/// - Each section should typically include a heading (h1-h6) as a child element
/// - If content represents a standalone unit (like an article), use `<article>` instead
/// - If content represents tangential information, use `<aside>` instead
/// - If content represents the main content area, use `<main>` instead
/// - If you only need a styling wrapper, use `<div>` instead
///
public struct Section: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "section" }

    /// Creates a new Section element with the specified attributes.
    public init(

        )
    {

    }
}
