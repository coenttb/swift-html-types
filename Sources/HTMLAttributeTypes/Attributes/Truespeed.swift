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

/// Represents the HTML `truespeed` attribute for the deprecated `<marquee>` element.
///
/// When present, the `truespeed` attribute prevents browsers from clamping the scrolling
/// speed to a minimum of 60 milliseconds when the `scrollamount` value is set below 60.
/// This allows for very fast marquee scrolling.
///
/// ## Usage Notes
///
/// - Used only with the deprecated `<marquee>` element
/// - Only has an effect when `scrollamount` is set to a value less than 60
/// - The `<marquee>` element and all its attributes are deprecated and should not be used in modern web development
/// - Use CSS animations or JavaScript for scrolling effects instead
///
/// ## Examples
///
/// ```html
/// <!-- Fast scrolling marquee (deprecated, not recommended) -->
/// <marquee scrollamount="10" truespeed>This text scrolls very fast</marquee>
/// ```
@dynamicMemberLookup
public struct Truespeed: HTMLBooleanAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "truespeed" }

    /// The attribute value
    public var rawValue: Bool

    /// Initialize with a boolean value (defaults to true)
    public init(value: Bool = true) {
        self.rawValue = value
    }
}
