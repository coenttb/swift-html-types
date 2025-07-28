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

/// Represents an HTML citation element (`<cite>`), which is used to mark up the title of a creative work.
///
/// The `Cite` struct provides a type-safe way to create citation elements in HTML.
/// The reference may be in an abbreviated form according to context-appropriate conventions related to citation metadata.
///
/// ## Examples
///
/// ```swift
/// cite {
///     "Nineteen Eighty-Four"
/// }
/// ```
///
/// ```swift
/// p {
///     "More information can be found in "
///     cite {
///         "[ISO-0000]"
///     }
///     "."
/// }
/// ```
///
/// ## Usage Notes
///
/// In the context of the `<cite>` element, a creative work could be, for example:
/// - A book, research paper, essay, or poem
/// - A musical score, song, play, film, or TV show
/// - A painting, sculpture, or exhibition
/// - A website, web page, blog post, or tweet
/// - A computer program or legal case report
///
/// ## Best Practices
///
/// - To include a reference to the source of quoted material which is contained within a `<blockquote>` or `<q>` element, 
///   use the `cite` attribute on those elements instead.
/// - Browsers typically style the contents of a `<cite>` element in italics by default.
/// - The `<cite>` element should only include the title of the work, not the author's name.
///
public struct Cite: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "cite" }

    /// Creates a new Cite element.
    public init(

    ) {

    }
}
