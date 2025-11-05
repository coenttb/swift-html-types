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

/// An attribute that specifies the number of columns a `<col>` or `<colgroup>` element should span.
///
/// The `span` attribute defines the number of consecutive columns the element spans.
/// This attribute is primarily used with `<col>` and `<colgroup>` elements to define
/// properties for a group of columns in a table.
///
/// ## Usage Notes
///
/// - Used with `<col>` and `<colgroup>` elements in tables
/// - Value must be a positive integer greater than 0
/// - Default value is 1 if not specified
/// - In `<colgroup>`, the `span` attribute specifies how many columns the group contains
/// - In `<col>`, the `span` attribute specifies how many consecutive columns should share the same properties
///
/// ## Best Practices
///
/// - Use `span` to efficiently apply styles to multiple table columns
/// - For complex layouts, consider using individual `<col>` elements for more precise control
/// - Verify the total columns spanned matches the actual table structure
///
/// ## Examples
///
/// A single column with specific properties:
/// ```html
/// <col span="1" style="background-color: #ddd;" />
/// ```
///
/// Three consecutive columns with the same properties:
/// ```html
/// <col span="3" style="background-color: yellow;" />
/// ```
///
/// Column group containing two columns:
/// ```html
/// <colgroup span="2" style="background-color: pink;">
/// ```
@dynamicMemberLookup
public struct Span: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "span" }

    /// The span value
    public var rawValue: String

    /// Initialize with a string value
    public init(value: String) {
        self.rawValue = value
    }
}

extension Span: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) {
        precondition(value > 0, "Span value must be a positive integer")
        self.init(value: String(value))
    }
}
