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

/// Represents an HTML Ruby Text element (`<rt>`), which specifies the ruby text component of a ruby annotation,
/// providing pronunciation, translation, or transliteration information for East Asian characters.
///
/// The `RubyText` struct must always be contained within a `Ruby` element.
///
/// ## Example
///
/// ```swift
/// ruby {
///     "漢"
///     rp { "(" }
///     rt { "Kan" }
///     rp { ")" }
///     "字"
///     rp { "(" }
///     rt { "ji" }
///     rp { ")" }
/// }
/// ```
///
/// ## Best Practices
///
/// - Always place `<rt>` elements inside a `<ruby>` container
/// - Keep ruby text concise, typically providing only pronunciation or meaning
/// - Use with `<rp>` elements to provide fallback parentheses for browsers that don't support ruby annotations
/// - For complex text layout, consider using with `<rb>` and `<rtc>` elements
///
public struct RubyText: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "rt" }

    /// Creates a new RubyText element with the specified attributes.
    ///
    /// - Parameters:
    ///   - id: The unique identifier for this element
    ///   - class: The CSS classes for this element, typically the pronunciation or meaning of the base text
    public init(

        )
    {

    }
}
