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

/// Represents the HTML `scope` attribute, which specifies the cells that a header cell relates to.
///
/// The `scope` attribute clarifies the relationship between header cells and data cells in a table,
/// which is particularly important for screen readers and other assistive technologies.
///
/// ## Usage Notes
///
/// - Used with the `<th>` element in tables
/// - Recommended for accessibility in complex tables
///
/// ## Examples
///
/// ```html
/// <!-- Column header -->
/// <th scope="col">Product</th>
///
/// <!-- Row header -->
/// <th scope="row">Widget X</th>
/// ```
@dynamicMemberLookup
public struct Scope: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "scope" }

    /// The scope value
    public var rawValue: String

    /// Initialize with a scope value string
    public init(value: String) {
        self.rawValue = value
    }
}

extension Scrolling {
    /// The header relates to all cells of the row it belongs to
    @inlinable public static var row: Self { "row" }

    /// The header relates to all cells of the column it belongs to
    @inlinable public static var col: Self { "col" }

    /// The header belongs to a rowgroup and relates to all of its cells
    @inlinable public static var rowgroup: Self { "rowgroup" }

    /// The header belongs to a colgroup and relates to all of its cells
    @inlinable public static var colgroup: Self { "colgroup" }
}
