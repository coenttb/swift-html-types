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

/// Represents an HTML `<picture>` element, which contains zero or more `<source>` elements and one `<img>` element to offer alternative versions of an image for different display/device scenarios.
///
/// The browser will consider each child `<source>` element and choose the best match among them. If no matches are found—or the browser doesn't support the
/// `<picture>` element—the URL of the `<img>` element's `src` attribute is selected. The selected image is then presented in the space occupied by the
/// `<img>` element.
///
/// ## Common Use Cases
///
/// - **Art direction**: Cropping or modifying images for different media conditions (for example, loading a simpler version of an image which has too many details, on smaller displays).
/// - **Alternative image formats**: Offering alternative formats for cases where certain formats are not supported (like AVIF or WEBP).
/// - **Bandwidth optimization**: Saving bandwidth and speeding page load times by loading the most appropriate image for the viewer's display.
///
/// ## Example
///
/// ```swift
/// picture {
///     source(srcset: "photo.avif", type: "image/avif")
///     source(srcset: "photo.webp", type: "image/webp")
///     img(src: "photo.jpg", alt: "photo")
/// }
/// ```
///
/// ## Best Practices
///
/// - Use the `<source>` element with appropriate `media`, `srcset`, and `type` attributes to offer alternative versions of an image.
/// - Always include an `<img>` element as the last child, which serves as a fallback.
/// - For high-DPI (Retina) display versions, consider using `srcset` on the `<img>` element directly instead of `<picture>`.
/// - Apply `object-position` and `object-fit` CSS properties on the child `<img>` element, not on the `<picture>` element.
///
public struct Picture: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "picture" }

    /// Creates a new Picture element.
    public init(

    ) {

    }
}
