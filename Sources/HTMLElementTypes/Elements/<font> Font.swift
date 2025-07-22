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

/// Represents an HTML font element (`<font>`), which defines the font size, color and face for its content.
///
/// The `Font` struct provides a type-safe way to create HTML font elements with various attributes.
///
/// > Warning: This element is deprecated. Use CSS Fonts properties to style text instead.
///
/// ## Example
///
/// ```swift
/// font {
///     "Text with custom font"
/// }
/// ```
///
/// ## Best Practices
///
/// - Avoid using this element as it is deprecated
/// - Use CSS styling with proper font properties instead
///
public struct Font: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "font" }

    /// The color of the text
    public var color: HTMLAttributeTypes.Color?

    /// The font face to use
    public var face: HTMLAttributeTypes.Face?

    /// The font size
    public var size: HTMLAttributeTypes.FontSize?

    /// Creates a new Font element with the specified attributes.
    ///
    /// - Parameters:
    ///   - color: The color of the text
    ///   - face: The font face to use
    ///   - size: The font size
    public init(
        color: HTMLAttributeTypes.Color? = nil,
        face: HTMLAttributeTypes.Face? = nil,
        size: HTMLAttributeTypes.FontSize? = nil
    ) {
        self.color = color
        self.face = face
        self.size = size

    }
}
