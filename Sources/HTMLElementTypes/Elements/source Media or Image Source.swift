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

/// Represents an HTML `<source>` element, which specifies one or more media resources for
/// `<picture>`, `<audio>`, and `<video>` elements.
///
/// The `Source` struct is a void element, meaning it has no content and does not require a closing tag.
/// This element is commonly used to offer the same media content in multiple file formats to provide
/// compatibility with a broad range of browsers given their differing support for image and media file formats.
///
/// ## Examples
///
/// ```swift
/// // For video elements with multiple formats
/// video {
///     source(src: "video.webm", type: "video/webm")
///     source(src: "video.mp4", type: "video/mp4")
///     "Your browser does not support HTML video."
/// }
///
/// // For responsive images with media queries
/// picture {
///     source(srcset: "large.jpg", media: "(min-width: 800px)")
///     source(srcset: "medium.jpg", media: "(min-width: 600px)")
///     img(src: "small.jpg", alt: "A responsive image")
/// }
/// ```
///
/// ## Best Practices
///
/// - Provide multiple source formats for maximum browser compatibility
/// - When used with `<picture>`, always include an `<img>` fallback
/// - Specify the `type` attribute to avoid unnecessary server requests
/// - For responsive images, use media queries with the `media` attribute
/// - For `<picture>`, use the `srcset` attribute; for `<audio>` and `<video>`, use the `src` attribute
///
public struct Source: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "source" }

    /// The MIME media type of the resource
    public var type: SourceType?

    /// The URL of the media resource (used with `<audio>` and `<video>`)
    public var src: HTMLAttributeTypes.Src?

    /// A comma-separated list of image URLs and their descriptors (used with `<picture>`)
    public var srcset: HTMLAttributeTypes.ImageSrcSet?

    /// A list of source sizes that describe the final rendered width of the image
    public var sizes: HTMLAttributeTypes.Sizes?

    /// A media query for the resource's intended media
    public var media: HTMLAttributeTypes.Media?

    /// The intrinsic height of the image in pixels (for `<picture>`)
    public var height: HTMLAttributeTypes.Height?

    /// The intrinsic width of the image in pixels (for `<picture>`)
    public var width: HTMLAttributeTypes.Width?

    /// Creates a new Source element with the specified attributes.
    ///
    /// - Parameters:
    ///   - type: The MIME media type of the resource
    ///   - src: The URL of the media resource (for `<audio>` and `<video>`)
    ///   - srcset: A comma-separated list of image URLs and their descriptors (for `<picture>`)
    ///   - sizes: A list of source sizes that describe the final rendered width of the image
    ///   - media: A media query for the resource's intended media
    ///   - height: The intrinsic height of the image in pixels (for `<picture>`)
    ///   - width: The intrinsic width of the image in pixels (for `<picture>`)
    public init(
        type: SourceType? = nil,
        src: HTMLAttributeTypes.Src? = nil,
        srcset: HTMLAttributeTypes.ImageSrcSet? = nil,
        sizes: HTMLAttributeTypes.Sizes? = nil,
        media: HTMLAttributeTypes.Media? = nil,
        height: HTMLAttributeTypes.Height? = nil,
        width: HTMLAttributeTypes.Width? = nil
    ) {
        self.type = type
        self.src = src
        self.srcset = srcset
        self.sizes = sizes
        self.media = media
        self.height = height
        self.width = width
    }
}
