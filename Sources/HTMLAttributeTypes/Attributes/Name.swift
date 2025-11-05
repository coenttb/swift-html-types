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

/// An attribute that specifies the name of an HTML element, primarily used with form controls.
///
/// The `name` attribute is used to reference form data after a form is submitted, or to reference
/// form elements in JavaScript. Its value is sent to the server when the form is submitted,
/// along with the element's current value.
///
/// ## Usage Notes
///
/// - Required for form elements that submit values (except buttons with type="button")
/// - Multiple form elements can share the same name (like radio buttons in a group)
/// - Names should be unique within a form unless:
///   - They're radio buttons forming a single-choice group
///   - They're checkboxes that allow multiple selections
///   - Using array notation like `name="choices[]"` for multiple selections
///
/// ## Element-Specific Behavior
///
/// ### For `<input>` Elements
/// - Creates name/value pairs in form submission data
/// - Radio buttons with the same name form a group where only one can be selected
/// - Checkboxes with the same name allow multiple selections
///
/// ### For `<select>` and `<textarea>` Elements
/// - Used to identify the field in form submissions
///
/// ### For Other Elements
/// - `<form>`: Can be referenced by `target` attribute of an anchor
/// - `<iframe>`, `<object>`, `<map>`: Used for identification and reference
/// - `<meta>`, `<param>`: Provides information about the property being set
///
/// ## Examples
///
/// Input with a name:
/// ```html
/// <input type="text" name="username">
/// ```
///
/// Radio button group:
/// ```html
/// <input type="radio" name="gender" value="male"> Male
/// <input type="radio" name="gender" value="female"> Female
/// <input type="radio" name="gender" value="other"> Other
/// ```
///
/// Multiple checkbox selection:
/// ```html
/// <input type="checkbox" name="interests[]" value="music"> Music
/// <input type="checkbox" name="interests[]" value="sports"> Sports
/// <input type="checkbox" name="interests[]" value="reading"> Reading
/// ```
@dynamicMemberLookup
public struct Name: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "name" }

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the name attribute
    public init(value: String) {
        self.rawValue = value
    }
}
