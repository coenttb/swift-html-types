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

/// Represents the `low` attribute, which specifies the range that is considered to be low for a given range on a meter element.
///
/// ## Usage Notes
///
/// - The `low` attribute is used with the `<meter>` element.
/// - If the value is lower than the `low` value, it's considered low value range.
/// - If specified, the `low` value must be:
///   - Greater than or equal to the `min` value
///   - Less than the `high` value
///
/// ## Examples
///
/// ```html
/// <meter value="20" min="0" max="100" low="33" high="67">20 out of 100</meter>
/// ```
public struct Low: HTMLAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "low" }

    /// The attribute value
    public let value: Double

    /// Initialize with a value
    public init(_ value: Double) {
        self.value = value
    }
}

extension Low: ExpressibleByFloatLiteral {
    public init(floatLiteral value: Double) {
        self.value = value
    }
}

extension Low: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) {
        self.value = Double(value)
    }
}

extension Low: CustomStringConvertible {
    /// Returns the string representation of the attribute value
    public var description: String {
        return String(self.value)
    }
}
