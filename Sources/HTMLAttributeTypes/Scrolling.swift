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


/// Represents the scrolling attribute for frame and iframe elements.
///
/// The `scrolling` attribute controls the appearance of scrollbars within frames and iframes.
/// This attribute is deprecated in HTML5 but still supported for backward compatibility.
/// Modern development should use CSS `overflow` property instead.
///
/// ## Usage Notes
///
/// - Used with the `<frame>` and `<iframe>` elements
/// - Deprecated in HTML5, use CSS `overflow` property instead
///
/// ## Examples
///
/// ```html
/// <iframe src="page.html" scrolling="no"></iframe>
/// ```
public struct Scrolling: StringAttribute, CustomStringConvertible {
    /// The name of the HTML attribute
    public static let attribute: String = "scrolling"
    
    public var rawValue: String
    
    /// Initialize with a string value
    public init(value: String) {
        self.rawValue = value
    }
}

extension Scrolling {
    /// Force scrollbars to appear even when not needed
    public static let yes: Self = "yes"
    
    /// Prevent scrollbars from appearing even when needed
    public static let no: Self = "no"
    
    /// Allow browser to add scrollbars when necessary (default)
    public static let auto: Self = "auto"
}
