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

import HTMLAttributeTypes

/// Represents an HTML marquee element (`<marquee>`), which creates a scrolling area of text or content.
///
/// The `Marquee` struct provides a type-safe way to create marquee elements with various attributes.
///
/// > Warning: The `<marquee>` element is deprecated and its use is strongly discouraged.
/// > Consider using CSS animations with CSS transforms instead for scrolling text effects.
///
/// ## Example
///
/// ```swift
/// marquee {
///     "This text will scroll from right to left"
/// }
///
/// marquee(direction: .up) {
///     "This text will scroll from bottom to top"
/// }
/// ```
///
/// ## Best Practices
///
/// - Avoid using the marquee element as it is deprecated and may not be supported in all browsers.
/// - Use CSS animations and transforms instead for scrolling text effects.
/// - Consider accessibility concerns; continuous scrolling text can be difficult to read for some users.
/// - If you must use animation, include support for the `prefers-reduced-motion` CSS media query.
///
public struct Marquee: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "marquee" }

    /// Sets how the text is scrolled within the marquee.
    public var behavior: HTMLAttributeTypes.Behavior?

    /// Sets the background color through color name or hexadecimal value.
    public var bgcolor: String?

    /// Sets the direction of the scrolling within the marquee.
    public var direction: HTMLAttributeTypes.Direction?

    /// Sets the height in pixels or percentage value.
    public var height: HTMLAttributeTypes.Height?

    /// Sets the horizontal margin
    public var hspace: String?

    /// Sets the number of times the marquee will scroll.
    public var loop: HTMLAttributeTypes.Loop?

    /// Sets the amount of scrolling at each interval in pixels.
    public var scrollamount: String?

    /// Sets the interval between each scroll movement in milliseconds.
    public var scrolldelay: String?

    /// By default, scrolldelay values lower than 60 are ignored. If truespeed is present, those values are not ignored.
    public var truespeed: HTMLAttributeTypes.Truespeed?

    /// Sets the vertical margin in pixels or percentage value.
    public var vspace: String?

    /// Sets the width in pixels or percentage value.
    public var width: HTMLAttributeTypes.Width?

    /// Creates a new Marquee element with the specified attributes.
    ///
    /// - Parameters:
    ///   - behavior: How the text scrolls within the marquee
    ///   - bgcolor: Background color
    ///   - direction: Scrolling direction
    ///   - height: Height in pixels or percentage
    ///   - hspace: Horizontal margin
    ///   - loop: Number of scrolling repetitions
    ///   - scrollamount: Amount of scrolling at each interval in pixels
    ///   - scrolldelay: Interval between scroll movements in milliseconds
    ///   - truespeed: Allow scrolldelay values lower than 60ms
    ///   - vspace: Vertical margin
    ///   - width: Width in pixels or percentage
    public init(
        behavior: HTMLAttributeTypes.Behavior? = nil,
        bgcolor: String? = nil,
        direction: HTMLAttributeTypes.Direction? = nil,
        height: HTMLAttributeTypes.Height? = nil,
        hspace: String? = nil,
        loop: HTMLAttributeTypes.Loop? = nil,
        scrollamount: String? = nil,
        scrolldelay: String? = nil,
        truespeed: HTMLAttributeTypes.Truespeed? = nil,
        vspace: String? = nil,
        width: HTMLAttributeTypes.Width? = nil
    ) {
        self.behavior = behavior
        self.bgcolor = bgcolor
        self.direction = direction
        self.height = height
        self.hspace = hspace
        self.loop = loop
        self.scrollamount = scrollamount
        self.scrolldelay = scrolldelay
        self.truespeed = truespeed
        self.vspace = vspace
        self.width = width

    }
}
