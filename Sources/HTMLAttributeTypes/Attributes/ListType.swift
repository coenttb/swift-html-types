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

/// Represents the HTML `type` attribute for ordered lists.
///
/// The `type` attribute specifies the numbering type for an ordered list.
///
/// ## Examples
///
/// ```html
/// <ol type="i">
///   <li>First item</li>
///   <li>Second item</li>
///   <li>Third item</li>
/// </ol>
/// ```
@dynamicMemberLookup
public struct ListType: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "type" }

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the type attribute
    public init(value: String) {
        self.rawValue = value
    }
}

extension ListType {
    /// Lowercase letters (a, b, c, ...)
    @inlinable public static var lowerAlpha: Self { "a" }

    /// Uppercase letters (A, B, C, ...)
    @inlinable public static var upperAlpha: Self { "A" }

    /// Lowercase Roman numerals (i, ii, iii, ...)
    @inlinable public static var lowerRoman: Self { "i" }

    /// Uppercase Roman numerals (I, II, III, ...)
    @inlinable public static var upperRoman: Self { "I" }

    /// Numbers (1, 2, 3, ...) - default
    @inlinable public static var decimal: Self { "1" }
}
