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

/// Represents the HTML `selected` attribute, which indicates that an option is pre-selected when the page loads.
///
/// When this Boolean attribute is present on an `<option>` element, it indicates that the option
/// should be selected by default. If multiple options have the `selected` attribute within
/// a `<select>` element that doesn't have the `multiple` attribute, only the last one with
/// the attribute is selected.
///
/// ## Usage Notes
///
/// - Used with the `<option>` element
/// - In a `<select>` without the `multiple` attribute, only one option should have `selected`
/// - If no options are selected, the first option is typically shown as selected in the UI
///
/// ## Examples
///
/// ```html
/// <select name="country">
///   <option value="us">United States</option>
///   <option value="ca">Canada</option>
///   <option value="uk" selected>United Kingdom</option>
/// </select>
/// ```
@dynamicMemberLookup
public struct Selected: HTMLBooleanAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "selected" }

    public var rawValue: Bool

    public init(value: Bool = true) {
        self.rawValue = value
    }
}
