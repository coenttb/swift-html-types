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

/// Represents the HTML `optimum` attribute, which specifies the optimum value for a `<meter>` element.
///
/// The optimum attribute is used with the `<meter>` element to indicate what value is the "optimum" value
/// within the range specified by the min and max attributes.
///
/// ## Usage Notes
///
/// - The optimum value should be within the range specified by min and max
/// - The optimum value works with low and high values to create different states
/// - If optimum > high, the higher the value, the better
/// - If optimum < low, the lower the value, the better
/// - If low < optimum < high, the closer to optimum, the better
///
/// ## Examples
///
/// ```html
/// <meter min="0" max="100" value="75" low="33" high="66" optimum="50">75%</meter>
/// ```
public struct Optimum: HTMLAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "optimum" }

    /// The attribute value
    public var value: Double

    /// Initialize with a value
    public init(_ value: Double) {
        self.value = value
    }
}

extension Optimum: ExpressibleByFloatLiteral {
    public init(floatLiteral value: FloatLiteralType) {
        self.value = value
    }
}

extension Optimum: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) {
        self.value = Double(value)
    }
}

extension Optimum: CustomStringConvertible {
    /// Returns the string representation of the attribute value
    public var description: String {
        return String(self.value)
    }
}
