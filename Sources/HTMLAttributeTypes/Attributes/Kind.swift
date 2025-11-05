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

/// Represents the kind attribute values for the track element.
@dynamicMemberLookup
public struct Kind: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "kind" }

    /// The attribute value
    public let rawValue: String

    public init(value: String = Kind.subtitles.rawValue) {
        self.rawValue = value
    }
}

extension Kind {
    /// Subtitles provide translation of content that cannot be understood by the viewer
    @inlinable public static var subtitles: Self { "subtitles" }

    /// Closed captions provide a transcription and possibly a translation of audio
    @inlinable public static var captions: Self { "captions" }

    /// Chapter titles are intended to be used when the user is navigating the media resource
    @inlinable public static var chapters: Self { "chapters" }

    /// Tracks used by scripts, not visible to the user
    @inlinable public static var metadata: Self { "metadata" }
}
