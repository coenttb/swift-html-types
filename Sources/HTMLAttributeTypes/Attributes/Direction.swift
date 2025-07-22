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
@dynamicMemberLookup
public struct Direction: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "direction" }

    /// The attribute value
    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}

extension Direction {
    /// Preset for left-to-right scrolling (default)
    @inlinable public static var left: Self { "left" }

    /// Preset for right-to-left scrolling
    @inlinable public static var right: Self { "right" }

    /// Preset for bottom-to-top scrolling
    @inlinable public static var up: Self { "up" }

    /// Preset for top-to-bottom scrolling
    @inlinable public static var down: Self { "down" }
}
