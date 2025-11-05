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

/// Represents an HTML table head element (`<thead>`), which encapsulates a set of table rows
/// that comprise the head of a table with information about the table's columns.
///
/// The `TableHead` struct provides a type-safe way to create HTML table head elements that
/// define a semantic section for column headers in a table. This is important for both
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
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - Always use `<thead>` in tables with a clear header section to improve semantics and accessibility
/// - Place after any `<caption>` and `<colgroup>` elements, but before `<tbody>`, `<tfoot>`, and `<tr>`
/// - Include `<th>` elements with appropriate `scope` attributes within your header rows
/// - For multi-page tables (when printing), the table head content repeats on each page
/// - Use CSS for styling rather than deprecated presentational attributes
/// - For complex tables, consider using multiple header rows within a single `<thead>` element
///
public struct TableHead: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "thead" }

    /// Creates a new TableHead element.
    public init(

        )
    {

    }
}
