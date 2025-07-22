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

/// Represents the HTML `poster` attribute, which is used with the `<video>` element to
/// specify an image to be shown while the video is downloading or until the user
/// plays the video.
///
/// The poster attribute allows web developers to provide a preview image that
/// represents the video content before it's played, improving the visual appeal
/// and user experience of a page.
///
/// ## Usage
///
/// The attribute's value should be a URL pointing to an image file.
///
/// ## Example
///
/// ```swift
/// video(poster: "video-preview.jpg", controls: true) {
///     source(src: "movie.mp4", type: "video/mp4")
///     "Your browser does not support the video tag."
/// }
/// ```
///
/// ## Best Practices
///
/// - Choose a representative frame from the video that gives users a good preview
/// - The poster image should have the same aspect ratio as the video
/// - Provide a poster image to improve user experience on slow connections
/// - For accessibility, ensure the poster image conveys appropriate context about the video content
///
@dynamicMemberLookup
public struct Poster: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "poster" }

    /// The URL of the poster image
    public var rawValue: String

    /// Initialize with a poster image URL
    ///
    /// - Parameter value: The URL pointing to the poster image
    public init(value: String) {
        self.rawValue = value
    }
}
