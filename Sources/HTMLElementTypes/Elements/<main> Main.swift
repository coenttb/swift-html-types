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

/// Represents an HTML main element (`<main>`), which represents the dominant content of the document body.
///
/// The `Main` struct provides a type-safe way to create HTML main elements.
///
/// The content of a `<main>` element should be unique to the document. Content that is repeated across a set of 
/// documents or document sections such as sidebars, navigation links, copyright information, site logos, and 
/// search forms shouldn't be included unless the search form is the main function of the page.
///
/// A document mustn't have more than one `<main>` element that doesn't have the `hidden` attribute specified.
///
/// ## Example
///
/// ```swift
/// main {
///     h1 { "Apples" }
///     p { "The apple is the pomaceous fruit of the apple tree." }
///     article {
///         h2 { "Red Delicious" }
///         p { "These bright red apples are the most common found in many supermarkets." }
///     }
///     article {
///         h2 { "Granny Smith" }
///         p { "These juicy, green apples make a great filling for apple pies." }
///     }
/// }
/// ```
///
/// ## Accessibility Considerations
///
/// - The `<main>` element behaves like a `main` landmark role, which can be used by assistive technology
///   to quickly identify and navigate to the main content of the document.
/// - Adding an `id` attribute to the `<main>` element lets it be a target of a skip navigation link,
///   allowing assistive technology users to bypass large sections of repeated content.
/// - Browser reader mode functionality looks for the presence of the `<main>` element when converting
///   content into a specialized reader view.
///
public struct Main: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "main" }

    /// Creates a new Main element.
    public init(

    ) {

    }
}
