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

/// Represents an HTML title element (`<title>`), which defines the document's title
/// that is shown in a browser's title bar or a page's tab.
///
/// The `Title` struct provides a type-safe way to create the HTML title element,
/// which is an essential part of every HTML document and must be contained within
/// the head section. It only contains text; any tags within the element are ignored.
///
/// ## Example
///
/// ```swift
/// html {
///   head {
///     title { "Product Catalog - Example Company" }
///     // other metadata
///   }
///   body {
///     // page content
///   }
/// }
/// ```
///
/// ## Best Practices
///
/// - Every HTML document should have a unique, descriptive title
/// - Keep titles under 55-60 characters (search engine display limit)
/// - Put the most important information at the beginning of the title
/// - Avoid single word titles or keyword lists
/// - Include your site name, but typically after the page-specific information
/// - Use a pattern like "Page Name - Site Name" for consistency
///
/// ## SEO and Accessibility
///
/// - Title is a major factor in search engine ranking algorithms
/// - Screen readers announce the title when users navigate to a page
/// - Descriptive titles help users determine if the page contains relevant information
/// - When updating the title dynamically, consider using ARIA Live Regions
///
/// - Note: When rendered, this generates the HTML `<title>` element, which must be
///   placed within the `<head>` element of an HTML document.
public struct Title: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "title" }

    /// Creates a new Title element with the specified text content.
    public init(

    ) {

    }
}
