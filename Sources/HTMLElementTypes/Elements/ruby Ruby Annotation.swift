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

/// Represents an HTML Ruby Annotation element (`<ruby>`), which displays small annotations above, below, or next to text,
/// commonly used for showing pronunciation of East Asian characters.
///
/// The `Ruby` struct provides a type-safe way to create ruby annotations with various attributes.
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
/// - Use ruby annotations to provide pronunciation guides for characters
/// - Include fallback parentheses using `<rp>` elements for browsers that don't support ruby
/// - Keep annotations concise and directly related to the base text
/// - For complex ruby annotations, consider using `<rb>` (Ruby Base) and `<rtc>` (Ruby Text Container) elements
///
public struct Ruby: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "ruby" }

    /// Creates a new Ruby element with the specified attributes.
    public init(

        )
    {

    }
}
