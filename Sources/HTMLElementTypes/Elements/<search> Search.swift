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

/// Represents an HTML search element (`<search>`), which is a container representing parts of the document or application with form controls or other content related to performing a search or filtering operation.
///
/// The `Search` struct provides a type-safe way to create HTML search elements.
///
/// ## Example
///
/// ```swift
/// search {
///     form {
///         label {
///             "Find a Movie"
///             for_("movie")
///         }
///         input.search {
///             id("movie")
///             name("q")
///         }
///         button.submit {
///             "Search"
///         }
///     }
/// }
/// ```
///
/// ## Usage Notes
///
/// - The `<search>` element is not for presenting search results. Rather, search results should be presented as part of the main content of the web page.
/// - Suggestions and links that are part of "quick search" functionality are appropriately nested within the contents of the `<search>` element as they are search features.
///
/// ## Accessibility
///
/// - The `<search>` element defines a "search" landmark, removing the need to add `role="search"` to a `<form>` element.
/// - When multiple search elements exist on a page, consider using the `title` attribute to distinguish between them.
///
public struct Search: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "search" }

    /// Creates a new Search element.
    public init() {

    }
}
