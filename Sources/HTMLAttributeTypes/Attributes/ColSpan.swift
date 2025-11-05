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

/// Represents the HTML `colspan` attribute, which specifies the number of columns a table cell should span.
///
/// ## Usage Notes
///
/// - Use this attribute with `<th>` and `<td>` elements to create cells that span multiple columns
/// - The value must be a positive integer
/// - Default value is 1 if not specified
///
/// ## Examples
///
/// ```html
/// <td colspan="2">Cell spans two columns</td>
/// ```
@dynamicMemberLookup
public struct ColSpan: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "colspan" }

    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}

extension ColSpan: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) {
        self.rawValue = String(value)
    }
}

extension ColSpan: CustomStringConvertible {
    /// Returns the string representation of the attribute value
    public var description: String {
        return self.rawValue
    }
}
