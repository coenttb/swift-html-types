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

/// Represents the HTML `start` attribute for ordered lists.
///
/// The `start` attribute specifies the starting value of an ordered list.
/// Always an Arabic numeral (1, 2, 3, etc.), even when the numbering
/// type is letters or Roman numerals.
///
/// ## Examples
///
/// ```html
/// <ol start="4">
///   <li>This will be item #4</li>
///   <li>This will be item #5</li>
///   <li>This will be item #6</li>
/// </ol>
/// ```
///
/// ```html
/// <!-- For a list with type="A", starting from "D" -->
/// <ol type="A" start="4">
///   <li>This will be item D</li>
///   <li>This will be item E</li>
///   <li>This will be item F</li>
/// </ol>
/// ```
@dynamicMemberLookup
public struct Start: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "start" }

    /// The attribute value
    public var rawValue: String

    /// Initialize with a string value
    public init(value: String) {
        self.rawValue = value
    }

    /// Initialize with an integer value
    public init(_ value: Int) {
        self.init(value: String(value))
    }
}

extension Start: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) {
        self.init(value)
    }
}
