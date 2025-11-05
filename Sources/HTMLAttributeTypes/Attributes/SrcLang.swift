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

/// Represents the HTML `srclang` attribute, which specifies the language of the text track data.
///
/// The `srclang` attribute is used with the `<track>` element to specify the language of the
/// track text data, such as subtitles or captions. It should be a valid BCP 47 language tag.
///
/// ## Usage Notes
///
/// - Used with the `<track>` element
/// - Required when the `kind` attribute is set to "subtitles"
/// - Value should be a valid BCP 47 language tag (e.g., "en", "es-MX", "fr")
///
/// ## Examples
///
/// ```html
/// <video controls>
///   <source src="movie.mp4" type="video/mp4">
///   <track src="subtitles_en.vtt" kind="subtitles" srclang="en" label="English">
///   <track src="subtitles_es.vtt" kind="subtitles" srclang="es" label="Español">
/// </video>
/// ```
@dynamicMemberLookup
public struct SrcLang: HTMLStringAttribute, ExpressibleByStringInterpolation,
    CustomStringConvertible
{
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "srclang" }

    /// The language code
    public var rawValue: String

    /// Initialize with a string value
    public init(value: String) {
        self.rawValue = value
    }
}
