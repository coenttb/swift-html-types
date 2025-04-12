//===----------------------------------------------------------------------===//
//
// Copyright (c) 2025 Coen ten Thije Boonkkamp
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of project contributors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//


/// Represents the kind attribute values for the track element.
public struct Kind: StringAttribute  {
    /// The name of the HTML attribute
    public static let attribute: String = "kind"
    
    /// The attribute value
    public let rawValue: String
    
    public init(value: String) {
        self = Kind(rawValue: value) ?? .subtitles
    }
}

extension Kind {
    /// Subtitles provide translation of content that cannot be understood by the viewer
    public static let subtitles: Self = "subtitles"
    
    /// Closed captions provide a transcription and possibly a translation of audio
    public static let captions: Self = "captions"
    
    /// Chapter titles are intended to be used when the user is navigating the media resource
    public static let chapters: Self = "chapters"
    
    /// Tracks used by scripts, not visible to the user
    public static let metadata: Self = "metadata"
}
