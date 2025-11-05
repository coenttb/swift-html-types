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

/// Deprecated attribute that specifies the font size as either a numeric or relative value.
///
/// Numeric values range from 1 to 7 with 1 being the smallest and 3 the default.
/// It can be defined using a relative value, like +2 or -3, which sets it relative to 3, the default value.
///
/// ## Usage Notes
///
/// - This attribute is deprecated, use CSS font-size property instead
/// - Accepts values from 1-7 or relative values like +2 or -3
///
/// ## Examples
///
/// ```html
/// <font size="5">Larger text</font>
/// <font size="+2">Relatively larger text</font>
/// ```
@dynamicMemberLookup
public struct FontSize: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "size" }

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the size attribute
    public init(value: String) {
        self.rawValue = value
    }
}

extension FontSize: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) {
        self.init(numericValue: value)
    }
}

extension FontSize {
    /// Initialize with a numeric value (1-7)
    public init(numericValue: Int) {
        precondition(numericValue >= 1 && numericValue <= 7, "Font size must be between 1 and 7")
        self.rawValue = String(numericValue)
    }

    /// Initialize with a relative value
    public init(relativeValue: Int) {
        if relativeValue > 0 {
            self.rawValue = "+\(relativeValue)"
        } else {
            self.rawValue = "\(relativeValue)"
        }
    }
}
