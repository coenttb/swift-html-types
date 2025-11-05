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

/// Represents an HTML Ruby Fallback Parenthesis element (`<rp>`), which provides fallback parentheses
/// for browsers that do not support display of ruby annotations.
///
/// The `RubyParenthesis` element should be used to enclose opening and closing parentheses around
/// `<rt>` elements that contain annotation text.
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
/// - Always place `<rp>` elements immediately before or after `<rt>` elements
/// - Use one `<rp>` for opening parenthesis and one for closing parenthesis
/// - Include both opening and closing parentheses for better fallback appearance
/// - Only use within a `<ruby>` element
///
public struct RubyParenthesis: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "rp" }

    /// Creates a new RubyParenthesis element with the specified attributes.
    ///
    /// - Parameters:, typically "(" or ")" for fallback display
    public init(

        )
    {

    }
}
