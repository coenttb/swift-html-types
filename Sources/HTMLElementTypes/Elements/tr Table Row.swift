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

/// Represents an HTML table row element (`<tr>`), which defines a row of cells in a table.
///
/// The `TableRow` struct provides a type-safe way to create HTML `<tr>` elements.
/// The row's cells are established using `<td>` (data cell) and `<th>` (header cell) elements.
///
/// ## Example
///
/// ```swift
/// table {
///     tr {
///         th(scope: .col) { "Name" }
///         th(scope: .col) { "Age" }
///         th(scope: .col) { "Location" }
///     }
///     tr {
///         td { "John Doe" }
///         td { "32" }
///         td { "New York" }
///     }
///     tr {
///         td { "Jane Smith" }
///         td { "28" }
///         td { "London" }
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - The `<tr>` element is valid as a child of a `<thead>`, `<tbody>`, or `<tfoot>` element
/// - If placed directly inside a `<table>`, browsers will implicitly create a `<tbody>` parent
/// - Use `<th>` elements for header cells and `<td>` elements for data cells
/// - Use CSS selectors like `:nth-of-type`, `:first-of-type`, and `:last-of-type` to style rows
/// - Avoid deprecated attributes like `align`, `bgcolor`, `char`, `charoff`, and `valign`; use CSS instead
///
public struct TableRow: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "tr" }

    /// Creates a new TableRow element.
    public init(

        )
    {

    }
}
