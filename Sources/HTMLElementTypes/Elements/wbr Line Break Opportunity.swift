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

/// Represents an HTML word break opportunity element (`<wbr>`), which indicates a position within text
/// where the browser may optionally break a line, though its line-breaking rules would not otherwise
/// create a break at that location.
///
/// The `LineBreakOpportunity` struct provides a type-safe way to create HTML word break opportunity elements.
///
/// ## Example
///
/// ```swift
/// // Breaking a long word for better responsive layout
/// p {
///     "FernstraßenbauprivatfinanzierungsgesetzÖf".forEach { char in
///         "\(char)"
///         if "aeioußÖ".contains(char) {
///             wbr {}
///         }
///     }
/// }
/// ```
///
/// For URLs:
///
/// ```swift
/// p {
///     "http://this"; wbr {}
///     ".is"; wbr {}
///     ".a"; wbr {}
///     ".really"; wbr {}
///     ".long"; wbr {}
///     ".example"; wbr {}
///     ".com"
/// }
/// ```
///
/// ## Best Practices
///
/// - Use `<wbr>` to suggest where long words or URLs can break if needed for responsive layouts
/// - Unlike `&shy;` (soft hyphen), `<wbr>` does not introduce a hyphen at the line break point
/// - For URLs, add break opportunities before punctuation to avoid leaving punctuation marks at the end of the line
/// - In RTL (right-to-left) text, `<wbr>` behaves like a Unicode zero-width space and has no effect on bidirectional ordering
///
/// ## Difference from `<br>`
///
/// Unlike the `<br>` element which forces a line break, `<wbr>` only suggests where a break *may* occur if needed.
/// The browser will only break at the `<wbr>` position if it would otherwise overflow its container.
///
public struct LineBreakOpportunity: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "wbr" }

    /// Creates a new LineBreakOpportunity element.
    public init(

        )
    {

    }
}
