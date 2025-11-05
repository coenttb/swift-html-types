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

/// Represents an HTML horizontal rule element (`<hr>`), which defines a thematic break between paragraph-level elements.
///
/// The `ThematicBreak` struct provides a type-safe way to create HTML thematic breaks.
///
/// The `<hr>` element is often displayed as a horizontal line but is semantically defined
/// as a thematic break - for example, a change of scene in a story or a shift of topic within a section.
///
/// ## Example
///
/// ```swift
/// hr() // Creates a horizontal rule
/// ```
///
/// ## Best Practices
///
/// - Use the `<hr>` element to represent a thematic change in content, not just for visual decoration
/// - Use CSS for styling rather than deprecated HTML attributes
/// - For purely decorative horizontal lines, consider using CSS on other elements instead
///
public struct ThematicBreak: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "hr" }

    /// Creates a new ThematicBreak element.
    public init() {}
}
