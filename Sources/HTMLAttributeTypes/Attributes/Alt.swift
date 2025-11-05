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

/// An attribute that provides alternative text for images or other non-text content.
///
/// The `alt` attribute specifies alternate text for an area, input, or img element. It is used
/// by screen readers to describe the image to users who cannot see it. It's also displayed if the
/// image fails to load or when the user has disabled images in their browser.
///
/// ## Usage Notes
///
/// - Required for accessibility on `<img>` elements
/// - Should be descriptive but concise
/// - For `<img>`: Describes the image content and function
/// - For `<input type="image">`: Describes the function of the image button
/// - For `<area>`: Describes the function of the area in an image map
///
/// ## Guidelines for Writing Alt Text
///
/// - Keep it concise and descriptive (typically 125 characters or less)
/// - Don't use phrases like "image of" or "picture of" (screen readers already announce this)
/// - If the image is decorative only, use an empty string (`alt=""`) but don't omit the attribute
/// - For complex images, consider longer descriptions in surrounding text
/// - For functional images (like buttons), describe the function, not the visual
///
/// ## Examples
///
/// Basic usage for an image:
/// ```html
/// <img src="sunset.jpg" alt="Sunset over the mountains">
/// ```
///
/// For a logo that links to the homepage:
/// ```html
/// <a href="/">
///   <img src="logo.png" alt="Company Name Homepage">
/// </a>
/// ```
///
/// For a decorative image:
/// ```html
/// <img src="decorative-divider.png" alt="">
/// ```
///
/// For an image button:
/// ```html
/// <input type="image" src="search-icon.png" alt="Search">
/// ```
@dynamicMemberLookup
public struct Alt: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "alt" }

    /// The alternative text value
    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}
