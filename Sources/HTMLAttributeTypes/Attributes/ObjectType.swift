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

/// Represents the HTML type attribute for the `<object>` element.
///
/// The `type` attribute specifies the MIME type of the resource represented by the object.
/// This attribute is essential for the browser to determine how to process the resource.
/// At least one of `data` or `type` attributes must be defined for the object element.
///
/// ## Usage Notes
///
/// - Specifies the MIME type of the resource specified by the `data` attribute
/// - Common types include: "application/pdf", "video/mp4", "audio/mpeg", etc.
/// - Helps the browser understand how to process and display the content
/// - Must be a valid MIME type string
///
/// ## Examples
///
/// ```html
/// <!-- PDF object -->
/// <object data="document.pdf" type="application/pdf" width="600" height="400"></object>
///
/// <!-- Video object -->
/// <object data="video.mp4" type="video/mp4" width="640" height="480"></object>
///
/// <!-- Flash object (for legacy content) -->
/// <object data="animation.swf" type="application/x-shockwave-flash" width="400" height="300"></object>
/// ```
@dynamicMemberLookup
public struct ObjectType: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "type" }

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the type attribute
    public init(value: String) {
        self.rawValue = value
    }
}

extension ObjectType {
    /// Common MIME types
    public static let pdf = ObjectType("application/pdf")
    public static let mp4 = ObjectType("video/mp4")
    public static let mp3 = ObjectType("audio/mpeg")
    public static let jpeg = ObjectType("image/jpeg")
    public static let png = ObjectType("image/png")
    public static let html = ObjectType("text/html")
}
