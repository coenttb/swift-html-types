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

/// Represents an HTML table body element (`<tbody>`), which encapsulates a set of table rows
/// that comprise the body of a table's main data.
///
/// The `TableBody` struct provides a type-safe way to create HTML table body elements that
/// define a semantic section for the main content rows in a table. This is important for both
/// accessibility and proper table rendering.
///
/// ## Example
///
/// ```swift
/// table {
///     thead {
///         tr {
///             th(scope: .col) { "Name" }
///             th(scope: .col) { "Age" }
///             th(scope: .col) { "Location" }
///         }
///     }
///     tbody {
///         tr {
///             td { "John" }
///             td { "25" }
///             td { "New York" }
///         }
///         tr {
///             td { "Jane" }
///             td { "30" }
///             td { "San Francisco" }
///         }
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - Always use `<tbody>` in tables to properly structure table content
/// - Place after any `<caption>`, `<colgroup>`, and `<thead>` elements
/// - Each table can have multiple `<tbody>` elements for logical grouping of rows
/// - For complex tables, use multiple `<tbody>` elements to group related rows
/// - For multi-page tables (when printing), the `<tbody>` content is distributed across pages
/// - Use CSS for styling rather than deprecated presentational attributes
/// - Remember that even if you don't explicitly use `<tbody>`, browsers will implicitly create one
///
public struct TableBody: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "tbody" }

    /// Creates a new TableBody element.
    public init(

        )
    {

    }
}
