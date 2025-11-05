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

/// Represents an HTML `<strong>` element, which indicates that its contents have strong importance, seriousness, or urgency.
///
/// The `StrongImportance` struct provides a type-safe way to create HTML strong elements. Browsers typically render the contents in bold type,
/// although this element should be used for semantic importance rather than styling.
///
/// ## Example
///
/// ```swift
/// strong {
///     "Warning! This is very dangerous."
/// }
/// ```
///
/// ## Usage Notes
///
/// - Use `<strong>` for content that is of "strong importance," including things of great seriousness or urgency (such as warnings).
/// - Can be used to denote labels of paragraphs which represent notes or warnings within text.
/// - Do not use for styling; use CSS `font-weight` property for that purpose.
/// - Use `<b>` to draw attention to text without indicating higher importance.
/// - Use `<em>` to mark text that has stress emphasis.
/// - Can be nested to increase the relative degree of importance.
///
/// ## Accessibility
///
/// The `<strong>` element has an implicit ARIA role of "strong" which communicates the importance to assistive technologies.
///
public struct StrongImportance: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "strong" }

    /// Creates a new StrongImportance element.
    public init(

        )
    {

    }
}
