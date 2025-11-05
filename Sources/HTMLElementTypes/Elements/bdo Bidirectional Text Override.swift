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

/// Represents an HTML bidirectional text override element (`<bdo>`), which explicitly overrides
/// the bidirectional algorithm to set the direction of text rendering.
///
/// The `BidirectionalTextOverride` struct provides a type-safe way to create HTML bidirectional
/// text override elements. This element requires a `dir` attribute to specify the text direction.
///
/// ## Example
///
/// ```swift
/// bdo(dir: .rtl) {
///     "This text will display right-to-left."
/// }
/// ```
///
/// ## Directionality Options
///
/// - `.ltr`: Left-to-right text direction (default for most languages)
/// - `.rtl`: Right-to-left text direction (for languages like Arabic, Hebrew, etc.)
/// - `.auto`: Let the browser determine the direction based on content
///
/// ## Use Cases
///
/// - Displaying text in a direction opposite to the natural language direction
/// - Demonstrating or displaying bidirectional text features
/// - Fixing incorrectly displayed text in multilingual content
///
/// ## Behavior
///
/// The `<bdo>` element overrides the browser's bidirectional algorithm, forcing text to render
/// in the specified direction. The characters themselves are not reversed; only the order in which
/// they appear is changed.
///
/// - Note: When rendered, this generates an HTML `<bdo>` element that overrides the default
///   text direction for its content.
public struct BidirectionalTextOverride: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "bdo" }

    /// The required direction attribute for the bidirectional text override element
    public let dir: HTMLAttributeTypes.Dir

    /// Creates a new BidirectionalTextOverride element with the specified direction and content.
    ///
    /// - Parameters:
    ///   - dir: The text direction to apply to the content (required)
    public init(
        dir: HTMLAttributeTypes.Dir
    ) {
        self.dir = dir
    }
}
