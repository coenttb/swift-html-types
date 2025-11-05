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

/// Represents the `headers` attribute, which identifies the header cell(s)
/// that apply to a table data or header cell.
///
/// The `headers` attribute provides a way to explicitly associate data cells with their headers
/// for improved accessibility, especially in complex tables.
///
/// ## Usage Notes
///
/// - Use this attribute on `<td>` and `<th>` elements to reference the `id` values of the
///   header cells that apply to the cell.
/// - Multiple header IDs should be separated by spaces.
/// - This attribute is particularly useful for accessibility in complex tables with
///   non-standard layouts.
///
/// ## Examples
///
/// ```html
/// <th id="header1">Header 1</th>
/// <td headers="header1">Data cell</td>
/// ```
@dynamicMemberLookup
public struct Headers: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "headers" }

    /// Contains a list of space-separated strings, each corresponding to the id attribute of the <th> elements that provide headings for this table cell.
    public let rawValue: String

    /// Initialize with a value for the headers attribute
    public init(value: String) {
        self.rawValue = value
    }
}

extension Headers: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: String...) {
        self = .init(value: elements.joined(separator: " "))
    }
}
