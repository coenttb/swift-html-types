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

/// Defines which media the style or link should be applied to.
///
/// The value is a media query, which defaults to "all" if the attribute is missing.
///
/// ## Examples
///
/// ```html
/// <style media="screen and (min-width: 900px)">
///   /* CSS rules for screens with width of at least 900px */
/// </style>
/// ```
@dynamicMemberLookup
public struct Media: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "media" }

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the media attribute
    public init(value: String) {
        self.rawValue = value
    }
}
