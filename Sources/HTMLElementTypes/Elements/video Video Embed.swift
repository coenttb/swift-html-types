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

/// Represents an HTML video element (`<video>`), which embeds a media player that supports video playback into a document.
///
/// The `Video` struct provides a type-safe way to create HTML video elements with various attributes for controlling playback, appearance, and behavior.
///
/// ## Example
///
/// ```swift
/// video {
///     source(src: "video.mp4", type: "video/mp4")
///     source(src: "video.webm", type: "video/webm")
///     "Your browser doesn't support HTML video."
/// }
/// ```
///
/// With additional attributes:
///
/// ```swift
/// video(
///     controls: true,
///     autoplay: true,
///     muted: true,
///     poster: "thumbnail.jpg",
///     width: 640,
///     height: 360
/// ) {
///     source(src: "video.mp4", type: "video/mp4")
/// }
/// ```
///
/// ## Best Practices
///
/// - Always provide multiple source formats for better browser compatibility
/// - Include fallback content for browsers that don't support video
/// - Consider providing captions and transcripts for accessibility
/// - Set width and height attributes to avoid layout shifts during loading
/// - Use the `poster` attribute to provide a preview image
/// - Consider setting `preload="metadata"` for better performance on mobile devices
/// - For autoplay videos, use the `muted` attribute to improve autoplay compatibility
///
/// ## Accessibility Considerations
///
/// - Videos should include captions for people with hearing impairments
/// - Consider providing a transcript for better accessibility
/// - Make sure video controls are accessible via keyboard
/// - Videos with important visual information should include audio descriptions
///
public struct Video: HTMLElement {
    /// The HTML tag name for the video element
    @inlinable public static var tag: String { "video" }

    /// The URL of the video to embed
    public var src: HTMLAttributeTypes.Src?

    /// Whether to display playback controls
    public var controls: HTMLAttributeTypes.Controls?

    /// Whether to automatically begin playback
    public var autoplay: HTMLAttributeTypes.Autoplay?

    /// URL for an image to be shown while the video is downloading
    public var poster: HTMLAttributeTypes.Poster?

    /// Whether to automatically seek back to the start after reaching the end
    public var loop: HTMLAttributeTypes.Loop?

    /// Whether to initially silence the audio
    public var muted: HTMLAttributeTypes.Muted?

    /// The width of the video's display area in CSS pixels
    public var width: HTMLAttributeTypes.Width?

    /// The height of the video's display area in CSS pixels
    public var height: HTMLAttributeTypes.Height?

    /// Provides a hint about what content to preload
    public var preload: HTMLAttributeTypes.Preload?

    /// Whether to play the video inline rather than fullscreen (especially important for iOS)
    public var playsinline: HTMLAttributeTypes.Playsinline?

    /// How to handle cross-origin requests
    public var crossorigin: HTMLAttributeTypes.Crossorigin?

    /// Helps the browser select what controls to show when controls are enabled
    public var controlslist: HTMLAttributeTypes.ControlsList?

    /// Prevents the browser from suggesting Picture-in-Picture
    public var disablepictureinpicture: HTMLAttributeTypes.DisablePictureInPicture?

    /// Disables remote playback capabilities
    public var disableremoteplayback: HTMLAttributeTypes.DisableRemotePlayback?

    /// Creates a new Video element with the specified attributes.
    ///
    /// - Parameters:
    ///   - src: The URL of the video to embed
    ///   - controls: Whether to display playback controls
    ///   - autoplay: Whether to automatically begin playback
    ///   - poster: URL for an image to be shown while the video is downloading
    ///   - loop: Whether to automatically seek back to the start after reaching the end
    ///   - muted: Whether to initially silence the audio
    ///   - width: The width of the video's display area in CSS pixels
    ///   - height: The height of the video's display area in CSS pixels
    ///   - preload: Provides a hint about what content to preload
    ///   - playsinline: Whether to play the video inline rather than fullscreen
    ///   - crossorigin: How to handle cross-origin requests
    ///   - controlslist: Helps the browser select what controls to show when controls are enabled
    ///   - disablepictureinpicture: Prevents the browser from suggesting Picture-in-Picture
    ///   - disableremoteplayback: Disables remote playback capabilities, typically source elements or fallback content
    public init(
        src: HTMLAttributeTypes.Src? = nil,
        controls: HTMLAttributeTypes.Controls? = nil,
        autoplay: HTMLAttributeTypes.Autoplay? = nil,
        poster: HTMLAttributeTypes.Poster? = nil,
        loop: HTMLAttributeTypes.Loop? = nil,
        muted: HTMLAttributeTypes.Muted? = nil,
        width: HTMLAttributeTypes.Width? = nil,
        height: HTMLAttributeTypes.Height? = nil,
        preload: HTMLAttributeTypes.Preload? = nil,
        playsinline: HTMLAttributeTypes.Playsinline? = nil,
        crossorigin: HTMLAttributeTypes.Crossorigin? = nil,
        controlslist: HTMLAttributeTypes.ControlsList? = nil,
        disablepictureinpicture: HTMLAttributeTypes.DisablePictureInPicture? = nil,
        disableremoteplayback: HTMLAttributeTypes.DisableRemotePlayback? = nil
    ) {
        self.src = src
        self.controls = controls
        self.autoplay = autoplay
        self.poster = poster
        self.loop = loop
        self.muted = muted
        self.width = width
        self.height = height
        self.preload = preload
        self.playsinline = playsinline
        self.crossorigin = crossorigin
        self.controlslist = controlslist
        self.disablepictureinpicture = disablepictureinpicture
        self.disableremoteplayback = disableremoteplayback

    }
}
