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

/// Represents an HTML Ruby Base element (`<rb>`), which is used to delimit the base text component
/// of a ruby annotation, i.e., the text that is being annotated.
///
/// The `RubyBase` element should wrap each separate atomic segment of the base text.
/// While this element is deprecated in modern HTML specifications, it is included for completeness.
///
/// ## Example
///
/// ```swift
/// ruby {
///     rb { "漢" }
///     rb { "字" }
///     rp { "(" }
///     rt { "kan" }
///     rt { "ji" }
///     rp { ")" }
/// }
/// ```
///
/// ## Best Practices
///
/// - Use `<rb>` elements to explicitly separate each segment of ruby base text
/// - Include one `<rt>` element for each base segment/`<rb>` element to annotate
/// - Note that this element is deprecated; consider using plain text within the `<ruby>` element instead
/// - Only use within a `<ruby>` element
///
public struct RubyBase: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "rb" }

    /// Creates a new RubyBase element with the specified attributes.
    ///
    /// - Parameters:, typically the base text to be annotated
    public init(

        )
    {

    }
}
