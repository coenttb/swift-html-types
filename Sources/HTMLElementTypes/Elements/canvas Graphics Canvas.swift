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

/// Represents an HTML canvas element (`<canvas>`), which is used to draw graphics via scripting
/// (usually JavaScript) with either the Canvas API or WebGL API.
///
/// The `Canvas` struct provides a type-safe way to create HTML canvas elements. This element
/// is primarily used for rendering graphics, game graphics, data visualizations, photo manipulations,
/// and real-time video processing.
///
/// ## Example
///
/// ```swift
/// canvas(width: 300, height: 150) {
///     "Your browser does not support the canvas element."
/// }
/// ```
///
/// ## Dimensions
///
/// - The default canvas size is 300 pixels wide by 150 pixels high
/// - Specify dimensions with the `width` and `height` attributes
/// - It's recommended to set width and height attributes directly rather than using CSS
///   to avoid distortion
/// - Maximum canvas dimensions vary by browser and device (iOS devices limit to 4,096 x 4,096 pixels)
/// - Exceeding maximum dimensions will render the canvas unusable
///
/// ## Accessibility Considerations
///
/// - Always provide fallback content inside the canvas element for browsers that don't support it
/// - Canvas content is not inherently accessible to screen readers
/// - Consider alternative ways to present the information for accessibility
/// - In general, avoid using canvas in an accessible website or app if possible
///
/// ## Advanced Usage
///
/// - OffscreenCanvas API can be used to render canvas in a worker thread
/// - This prevents blocking the main thread during complex rendering operations
///
/// - Note: When rendered, this generates an HTML `<canvas>` element that can be used
///   for drawing graphics with JavaScript.
public struct Canvas: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "canvas" }

    /// The width of the canvas in CSS pixels (defaults to 300 if not specified)
    public var width: HTMLAttributeTypes.Width?

    /// The height of the canvas in CSS pixels (defaults to 150 if not specified)
    public var height: HTMLAttributeTypes.Height?

    /// Creates a new Canvas element with the specified dimensions and fallback content.
    ///
    /// - Parameters:
    ///   - width: The width of the canvas in CSS pixels
    ///   - height: The height of the canvas in CSS pixels
    public init(
        width: HTMLAttributeTypes.Width? = nil,
        height: HTMLAttributeTypes.Height? = nil
    ) {
        self.width = width
        self.height = height
    }
}
