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

/// Represents an HTML table element (`<table>`), which displays tabular data
/// in a two-dimensional table comprised of rows and columns of cells containing data.
///
/// The `Table` struct provides a type-safe way to create HTML tables. Tables should be used
/// for displaying tabular data, not for layout purposes. For proper semantics and accessibility,
/// tables should include appropriate table-related elements like `<thead>`, `<tbody>`, `<tfoot>`,
/// `<tr>`, `<th>`, and `<td>`.
///
/// ## Example
///
/// ```swift
/// table {
///     caption { "Employee Information" }
///     thead {
///         tr {
///             th(scope: .col) { "Name" }
///             th(scope: .col) { "Position" }
///             th(scope: .col) { "Department" }
///         }
///     }
///     tbody {
///         tr {
///             td { "John Smith" }
///             td { "Software Engineer" }
///             td { "Engineering" }
///         }
///         tr {
///             td { "Jane Doe" }
///             td { "Product Manager" }
///             td { "Product" }
///         }
///     }
///     tfoot {
///         tr {
///             th(colspan: 3) { "Updated: April 2025" }
///         }
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - Use tables only for tabular data, not for layout purposes
/// - Include a caption for better accessibility and context
/// - Use `<thead>`, `<tbody>`, and `<tfoot>` to properly structure your table
/// - Use `<th>` elements with appropriate `scope` attributes for headers
/// - For complex tables, use `id` and `headers` attributes to associate data cells with headers
/// - Avoid using deprecated presentational attributes; use CSS for styling instead
/// - Consider responsive design techniques for tables on small screens
/// - Keep table structure simple when possible for better accessibility
///
public struct Table: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "table" }

    /// Creates a new Table element.
    public init(

        )
    {

    }
}
