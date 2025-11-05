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

/// A Boolean attribute that indicates whether a form control is checked or selected.
///
/// The `checked` attribute is applicable to checkbox and radio input types. When present, it indicates
/// the control is selected by default when the page loads. For checkboxes, it means the box is checked.
/// For radio buttons, it indicates which option in a group is pre-selected.
///
/// ## Usage Notes
///
/// - Only valid on `<input type="checkbox">` and `<input type="radio">`
/// - When omitted, the control is not checked/selected by default
/// - Only one radio button in a group (with the same name) should have the checked attribute
/// - Multiple checkboxes in a group can be checked simultaneously
///
/// ## Form Submission Behavior
///
/// - Only checked checkboxes and radio buttons are included in form submission data
/// - If an unchecked checkbox is submitted, its name/value pair is not included in the form data
/// - At least one radio button in a group is typically submitted (if pre-selected with "checked")
///
/// ## Examples
///
/// Pre-checked checkbox:
/// ```html
/// <input type="checkbox" name="subscribe" checked> Subscribe to newsletter
/// ```
///
/// Pre-selected radio button in a group:
/// ```html
/// <input type="radio" name="gender" value="male"> Male
/// <input type="radio" name="gender" value="female" checked> Female
/// <input type="radio" name="gender" value="other"> Other
/// ```
@dynamicMemberLookup
public struct Checked: HTMLBooleanAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "checked" }

    public var rawValue: Bool

    public init(value: Bool = true) {
        self.rawValue = value
    }
}
