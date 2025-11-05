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

/// Represents the HTML `src` attribute, which specifies the URL of an external resource.
///
/// The `src` attribute is used to embed external resources such as images, audio, video,
/// scripts, iframes, and other media into an HTML document.
///
/// ## Usage Notes
///
/// - Used with elements like `<img>`, `<script>`, `<iframe>`, `<audio>`, `<video>`, and `<source>`
/// - Value should be a valid URL (relative or absolute)
/// - For media elements, can be paired with MIME types via the `type` attribute
///
/// ## Examples
///
/// ```html
/// <img src="image.jpg" alt="Description">
/// <script src="script.js"></script>
/// <iframe src="page.html"></iframe>
/// <audio src="sound.mp3" controls></audio>
/// <video src="movie.mp4" controls></video>
/// ```
@dynamicMemberLookup
public struct Src: HTMLStringAttribute, ExpressibleByStringInterpolation, CustomStringConvertible {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "src" }

    /// The source URL
    public var rawValue: String

    /// Initialize with a string value
    public init(value: String) {
        self.rawValue = value
    }
}
