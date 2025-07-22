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

/// An attribute that specifies which camera or device should be used for capturing media.
///
/// The `capture` attribute is used with `<input type="file">` elements to indicate which
/// camera or recording device should be used when capturing photos, videos, or audio files.
/// This attribute is typically used in conjunction with the `accept` attribute to specify
/// the type of media to capture.
///
/// ## Usage Notes
///
/// - Only valid on `<input>` elements with `type="file"`
/// - Works best on mobile devices with cameras and microphones
/// - Should be used together with `accept="image/*"`, `accept="video/*"`, or `accept="audio/*"`
/// - On desktop computers, this may simply display a standard file picker
///
/// ## Values
///
/// - `"user"`: Use the front-facing (user-facing) camera and/or microphone
/// - `"environment"`: Use the back-facing (outward-facing) camera and/or microphone
///
/// ## Examples
///
/// Capture a photo using the front-facing camera:
/// ```html
/// <input type="file" accept="image/*" capture="user">
/// ```
///
/// Capture a video using the back-facing camera:
/// ```html
/// <input type="file" accept="video/*" capture="environment">
/// ```
///
/// Capture audio:
/// ```html
/// <input type="file" accept="audio/*" capture="user">
/// ```
@dynamicMemberLookup
public struct Capture: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "capture" }

    /// The capture device value
    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}

extension Capture {
    /// Convenience initializer for "user" value (front-facing camera)
    public static let user: Capture = "user"

    /// Convenience initializer for "environment" value (back-facing camera)
    public static let environment: Capture = "environment"
}
