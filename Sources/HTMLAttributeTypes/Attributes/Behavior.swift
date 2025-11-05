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

/// Defines how text is scrolled within a marquee element.
///
/// ## Usage Notes
///
/// - Used with the `<marquee>` element to control scrolling behavior
/// - Possible values: `scroll`, `slide`, and `alternate`
/// - Default value if not specified is `scroll`
///
/// ## Examples
///
/// ```html
/// <marquee behavior="alternate">Bouncing text</marquee>
/// ```
@dynamicMemberLookup
public struct Behavior: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "behavior" }

    /// The attribute value
    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}

extension Behavior {
    /// Preset for scrolling behavior (default)
    /// Text scrolls in, then jumps back to the start and scrolls in again
    public static let scroll: Self = Self("scroll")

    /// Preset for sliding behavior
    /// Text scrolls in and stops at the edge of the marquee
    public static let slide: Self = Self("slide")

    /// Preset for alternate behavior
    /// Text bounces back and forth between the two edges of the marquee
    public static let alternate: Self = Self("alternate")
}
