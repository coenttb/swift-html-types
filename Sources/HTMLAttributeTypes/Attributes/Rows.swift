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

/// Represents the HTML `rows` attribute, which specifies the number of visible rows in a textarea.
///
/// The `rows` attribute defines the number of visible text lines for a textarea element.
///
/// ## Usage Notes
///
/// - Used with the `<textarea>` element
/// - Value must be a positive integer
///
/// ## Examples
///
/// ```html
/// <textarea rows="5" cols="30">Default text</textarea>
/// ```
@dynamicMemberLookup
public struct Rows: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "rows" }

    /// The attribute value
    public var rawValue: String

    /// Initialize with a string value
    public init(value: String) {
        self.rawValue = value
    }
}

extension Rows: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) {
        self.init(value: String(value))
    }
}
