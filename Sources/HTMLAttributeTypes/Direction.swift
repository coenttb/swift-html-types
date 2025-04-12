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


/// Defines the direction of scrolling within a marquee element.
///
/// ## Usage Notes
///
/// - Used with the `<marquee>` element to control scrolling direction
/// - Possible values: `left`, `right`, `up`, and `down`
/// - Default value if not specified is `left`
///
/// ## Examples
///
/// ```html
/// <marquee direction="up">Text scrolls upward</marquee>
/// ```
public struct Direction: StringAttribute {
    /// The name of the HTML attribute
    public static let attribute: String = "direction"
    
    /// The attribute value
    public let rawValue: String
    
    public init(value: String) {
        self.rawValue = value
    }
}

extension Direction {
    /// Preset for left-to-right scrolling (default)
    public static let left: Self = "left"
    
    /// Preset for right-to-left scrolling
    public static let right: Self = "right"
    
    /// Preset for bottom-to-top scrolling
    public static let up: Self = "up"
    
    /// Preset for top-to-bottom scrolling
    public static let down: Self = "down"
}
