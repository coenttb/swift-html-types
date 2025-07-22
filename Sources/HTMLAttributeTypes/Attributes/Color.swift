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

/// Deprecated attribute that sets the text color using either a named color or a color specified in the hexadecimal #RRGGBB format.
///
/// ## Usage Notes
///
/// - This attribute is deprecated, use CSS color properties instead
/// - Can accept named colors or hexadecimal values
///
/// ## Examples
///
/// ```html
/// <font color="#FF0000">Red text</font>
/// <font color="blue">Blue text</font>
/// ```
@dynamicMemberLookup
public struct Color: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "color" }

    /// The attribute value
    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}
