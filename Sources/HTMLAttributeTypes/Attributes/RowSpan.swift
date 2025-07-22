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

/// Represents the HTML `rowspan` attribute, which specifies the number of rows a cell should span.
///
/// The `rowspan` attribute defines the number of rows a table cell should span vertically.
///
/// ## Usage Notes
///
/// - Used with `<td>` and `<th>` elements in tables
/// - Value must be a positive integer
/// - Default value is 1 if not specified
///
/// ## Examples
///
/// ```html
/// <td rowspan="2">This cell spans two rows</td>
/// ```
@dynamicMemberLookup
public struct RowSpan: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "rowspan" }

    /// The attribute value
    public var rawValue: String

    /// Initialize with a string value
    public init(value: String) {
        self.rawValue = value
    }
}

extension RowSpan: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) {
        self.init(value: String(value))
    }
}
