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

/// Represents an HTML aside element (`<aside>`), which defines content that is indirectly
/// related to the main content of the document.
///
/// The `Aside` struct provides a type-safe way to create HTML aside elements that represent
/// sidebars, call-out boxes, or other supporting content that enhances but isn't essential
/// to the main content.
///
/// ## Example
///
/// ```swift
/// article {
///   paragraph { "The Disney movie The Little Mermaid was first released to theatres in 1989." }
///
///   aside {
///     paragraph { "The movie earned $87 million during its initial release." }
///   }
///
///   paragraph { "More info about the movie..." }
/// }
/// ```
///
/// ## Best Practices
///
/// - Use for content that could be removed without reducing the meaning of the main content
/// - Do not use for parenthesized text that's part of the main flow
/// - Common uses include sidebars, pull quotes, advertising, and supplementary information
/// - Don't place aside elements inside `<address>` elements
/// - The aside element has an implicit ARIA role of "complementary"
///
/// - Note: When rendered, this generates an HTML `<aside>` element with the appropriate
///   attributes based on the configuration.
public struct Aside: HTMLElement {
    @inlinable public static var tag: String { "aside" }

    /// Creates a new Aside element with the specified content.
    public init() {}
}
