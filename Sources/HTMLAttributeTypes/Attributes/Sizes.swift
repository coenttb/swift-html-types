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

/// Represents the `sizes` attribute, which specifies the sizes of the linked resource.
///
/// The `sizes` attribute is used with `<link>`, `<img>`, and `<source>` elements to specify
/// the intended display size of the image or linked resource.
///
/// ## Usage Notes
///
/// - For `<img>` and `<source>` elements, it's used alongside the `srcset` attribute to help browsers select appropriate images
/// - For `<link rel="icon">`, it specifies the icon size
/// - Values can include specific sizes (e.g., "32x32") or the keyword "any"
///
/// ## Examples
///
/// ```html
/// <img srcset="image-320w.jpg 320w, image-480w.jpg 480w" sizes="(max-width: 600px) 320px, 480px">
/// <link rel="icon" href="favicon.png" sizes="16x16 32x32" type="image/png">
/// ```
@dynamicMemberLookup
public struct Sizes: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "sizes" }

    /// The attribute value
    public var rawValue: String

    /// Initialize with a string value
    public init(value: String) {
        self.rawValue = value
    }
}
