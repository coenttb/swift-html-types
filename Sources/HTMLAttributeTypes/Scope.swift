//===----------------------------------------------------------------------===//
//
// Copyright (c) 2025 Coen ten Thije Boonkkamp
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of project contributors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//


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
public struct Scope: StringAttribute, CustomStringConvertible {
    /// The name of the HTML attribute
    public static let attribute: String = "scope"
    
    /// The scope value
    public var rawValue: String
    
    /// Initialize with a scope value string
    public init(value: String) {
        self.rawValue = value
    }
}

extension Scrolling {
    /// The header relates to all cells of the row it belongs to
    public static let row: Self = "row"
    
    /// The header relates to all cells of the column it belongs to
    public static let col: Self = "col"
    
    /// The header belongs to a rowgroup and relates to all of its cells
    public static let rowgroup: Self = "rowgroup"
    
    /// The header belongs to a colgroup and relates to all of its cells
    public static let colgroup: Self = "colgroup"
}
