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

/// An attribute that specifies the height of an element.
///
/// The `height` attribute defines the height of an element in pixels (for images, videos, and similar)
/// or in other units when combined with CSS. It is primarily used with media elements to ensure proper
/// layout before the media is loaded, preventing layout shifts.
///
/// ## Usage Notes
///
/// - Common on `<img>`, `<input type="image">`, `<video>`, `<canvas>`, and `<iframe>` elements
/// - For images, specifies the intrinsic height in CSS pixels
/// - For canvas, specifies the height in CSS pixels for the coordinate system
/// - Can be a number (interpreted as pixels) or a string with units
/// - Using both height and width helps prevent layout shifts during page load
///
/// ## Best Practices
///
/// - Always specify both height and width to maintain aspect ratio
/// - For responsive design, consider using CSS instead of the height attribute
/// - For images, use the intrinsic dimensions or an appropriately scaled value
/// - If you're only specifying one dimension, ensure the aspect ratio is preserved
///
/// ## Examples
///
/// Image with height and width attributes:
/// ```html
/// <img src="example.jpg" height="300" width="400" alt="Example image">
/// ```
///
/// Canvas with height and width:
/// ```html
/// <canvas height="200" width="300"></canvas>
/// ```
///
/// Video with height and width:
/// ```html
/// <video height="480" width="640" controls>
///   <source src="video.mp4" type="video/mp4">
/// </video>
/// ```
@dynamicMemberLookup
public struct Height: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "height" }

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the height attribute
    public init(value: String) {
        self.rawValue = value
    }
}

extension Height: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) {
        self.rawValue = String(value)
    }
}
