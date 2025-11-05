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

/// An attribute that establishes a relationship between elements.
///
/// The `for` attribute has two distinct uses depending on the element it's applied to:
///
/// 1. When used on a `<label>` element, it associates the label with a form control by referencing the control's `id`.
/// 2. When used on an `<output>` element, it lists the IDs of elements that contributed to the calculation or determination of the output's value.
///
/// ## Usage Notes
///
/// ### With `<label>` elements
///
/// - The value should be a single ID matching a form control
/// - Creates an explicit association between the label and the form control
/// - Clicking the label gives focus to the associated form control
/// - Important for accessibility and usability of forms
/// - Alternative to wrapping the form control inside the label element
///
/// ### With `<output>` elements
///
/// - The value should be a space-separated list of IDs
/// - Identifies which form elements contributed to the calculated result
/// - Useful for establishing relationships for accessibility tools
/// - Helps screen readers explain where the output value comes from
///
/// ## Examples
///
/// Associate a label with an input:
/// ```html
/// <label for="email">Email Address:</label>
/// <input type="email" id="email" name="email">
/// ```
///
/// Define input sources for an output:
/// ```html
/// <input type="number" id="a" value="10">
/// <input type="number" id="b" value="20">
/// <output for="a b">30</output>
/// ```
@dynamicMemberLookup
public struct For: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "for" }

    /// The value of the for attribute (ID or space-separated list of IDs)
    public let rawValue: String

    /// Initialize with a value for the for attribute
    public init(value: String) {
        self.rawValue = value
    }

    /// Initialize with an ID or space-separated list of IDs
    public init(_ value: String) {
        self.rawValue = value
    }
}

extension For: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = String

    public init(arrayLiteral elements: String...) {
        self.rawValue = elements.joined(separator: " ")
    }
}
