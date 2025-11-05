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

/// Represents an HTML table column group element (`<colgroup>`), which defines a group of columns
/// within a table.
///
/// The `TableColumnGroup` struct provides a type-safe way to create HTML column group elements.
/// The `<colgroup>` element is used to apply properties to entire groups of columns in a table.
///
/// ## Example
///
/// ```swift
/// // With span attribute (no col elements inside):
/// table {
///   caption {
///     "Personal weekly activities"
///   }
///   colgroup(span: 5, class: "weekdays")
///   colgroup(span: 2, class: "weekend")
///   // Table rows would follow here
/// }
///
/// // With col elements inside (no span attribute):
/// table {
///   caption {
///     "Superheros and sidekicks"
///   }
///   colgroup {
///     col()
///     col(span: 2, class: "batman")
///     col(span: 2, class: "flash")
///   }
///   // Table rows would follow here
/// }
/// ```
///
/// ## Usage Notes
///
/// - The `<colgroup>` element should appear within a `<table>`, after any `<caption>` element,
///   but before any `<thead>`, `<tbody>`, `<tfoot>`, and `<tr>` elements
/// - If a `span` attribute is present, the `<colgroup>` cannot contain any `<col>` elements
/// - If no `span` attribute is present, the `<colgroup>` can contain zero or more `<col>` elements
/// - Limited CSS properties have an effect: background, border, visibility, and width
///
/// ## Best Practices
///
/// - Use column groups to apply consistent styling to multiple columns at once
/// - For complex tables, use meaningful class names for your column groups
/// - Consider using `<colgroup>` with `<col>` elements for more granular control
///   of individual columns
///
/// - Note: When rendered, this generates an HTML `<colgroup>` element containing column definitions.
public struct TableColumnGroup: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "colgroup" }

    /// The number of consecutive columns this column group spans
    /// Note: Cannot be used if the column group contains col elements
    public var span: HTMLAttributeTypes.Span?

    /// Creates a new TableColumnGroup element with an optional span attribute and content.
    ///
    /// - Parameters:
    ///   - span: The number of consecutive columns this column group spans
    ///
    /// - Note: Either use the span attribute OR include col elements as content, not both.
    ///   According to the HTML specification, if the span attribute is present,
    ///   the colgroup element cannot contain any col elements.
    public init(
        span: HTMLAttributeTypes.Span? = nil
    ) {
        self.span = span

    }
}
