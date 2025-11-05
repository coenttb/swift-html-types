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

/// Represents an HTML table header element (`<th>`), which defines a cell as the header of a group of table cells.
///
/// The `TableHeader` struct provides a type-safe way to create HTML table header elements with various attributes
/// that help define the scope and relationship of the header cell to other cells in the table.
///
/// ## Example
///
/// ```swift
/// table {
///     tr {
///         th(scope: .col) {
///             "Name"
///         }
///         th(scope: .col) {
///             "Age"
///         }
///     }
///     tr {
///         th(scope: .row) {
///             "John"
///         }
///         td {
///             "25"
///         }
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - Always use the `scope` attribute to explicitly define whether a header applies to a row or column
/// - For complex tables with multi-row or multi-column headers, use the `headers` attribute to associate headers
/// - Use `colspan` and `rowspan` attributes when a header spans multiple columns or rows
/// - Use semantic table structure with `<thead>`, `<tbody>`, and `<tfoot>` elements for better accessibility
/// - Avoid deprecated presentational attributes; use CSS for styling instead
///
public struct TableHeader: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "th" }

    /// A short, abbreviated description of the header cell's content
    public var abbr: HTMLAttributeTypes.Abbr?

    /// Number of columns this header cell spans
    public var colspan: HTMLAttributeTypes.ColSpan?

    /// Space-separated list of IDs of other header cells that provide headers for this cell
    public var headers: HTMLAttributeTypes.Headers?

    /// Number of rows this header cell spans
    public var rowspan: HTMLAttributeTypes.RowSpan?

    /// Defines which cells this header relates to (row, col, rowgroup, colgroup)
    public var scope: Scope?

    /// Creates a new TableHeader element with the specified attributes.
    ///
    /// - Parameters:
    ///   - abbr: A short description of the cell's content, useful for screen readers
    ///   - colspan: Number of columns this cell spans (default is 1)
    ///   - headers: IDs of related header cells
    ///   - rowspan: Number of rows this cell spans (default is 1)
    ///   - scope: Defines which cells this header relates to
    public init(
        abbr: HTMLAttributeTypes.Abbr? = nil,
        colspan: HTMLAttributeTypes.ColSpan? = nil,
        headers: HTMLAttributeTypes.Headers? = nil,
        rowspan: HTMLAttributeTypes.RowSpan? = nil,
        scope: Scope? = nil
    ) {
        self.abbr = abbr
        self.colspan = colspan
        self.headers = headers
        self.rowspan = rowspan
        self.scope = scope

    }
}
