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

/// Deprecated attribute that contains a comma-separated list of one or more font names.
///
/// The document text is rendered in the first font face that the client's browser supports.
/// If no font listed is installed on the local system, the browser typically defaults to
/// the proportional or fixed-width font for that system.
///
/// ## Usage Notes
///
/// - This attribute is deprecated, use CSS font-family property instead
/// - Accepts a comma-separated list of font names
///
/// ## Examples
///
/// ```html
/// <font face="Arial, Helvetica, sans-serif">Text with specified fonts</font>
/// ```
@dynamicMemberLookup
public struct Face: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "face" }

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the face attribute
    public init(value: String) {
        self.rawValue = value
    }
}
