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
public struct ListType: StringAttribute {
    /// The name of the HTML attribute
    public static let attribute: String = "type"
    
    /// The attribute value
    public let rawValue: String
    
    /// Initialize with a value for the type attribute
    public init(value: String) {
        self.rawValue = value
    }
}
 
extension ListType {
    /// Lowercase letters (a, b, c, ...)
    public static let lowerAlpha: Self = "a"
    
    /// Uppercase letters (A, B, C, ...)
    public static let upperAlpha: Self = "A"
    
    /// Lowercase Roman numerals (i, ii, iii, ...)
    public static let lowerRoman: Self = "i"
    
    /// Uppercase Roman numerals (I, II, III, ...)
    public static let upperRoman: Self = "I"
    
    /// Numbers (1, 2, 3, ...) - default
    public static let decimal: Self = "1"
}
