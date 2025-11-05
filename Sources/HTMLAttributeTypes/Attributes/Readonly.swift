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

/// A Boolean attribute that makes a form control non-editable but still functional.
///
/// When the `readonly` attribute is present, the user cannot modify the value of the form control,
/// but unlike `disabled` elements, readonly controls are still focusable, can be tabbed to,
/// and are submitted with the form.
///
/// ## Usage Notes
///
/// ### Supported Elements
///
/// The readonly attribute is valid on:
/// - `<input>` with types: text, search, url, tel, email, password, date, month, week, time, datetime-local, number
/// - `<textarea>`
///
/// It is NOT valid on:
/// - `<select>` or `<button>`
/// - Non-textual `<input>` types: hidden, range, color, checkbox, radio, file, submit, image, reset, button
///
/// ### Behavior
///
/// - User cannot edit the content but can still focus/tab to it
/// - Field is still submitted with the form (unlike disabled controls)
/// - Field does not participate in constraint validation
/// - If a field is readonly, `required` has no effect
/// - Elements with readonly match the `:read-only` CSS pseudo-class
/// - Elements without readonly match the `:read-write` CSS pseudo-class
/// - Value can still be modified programmatically
///
/// ## Readonly vs. Disabled
///
/// - **Readonly**: Still focusable, still submitted with form, appears partially interactive
/// - **Disabled**: Not focusable, not submitted with form, appears completely non-interactive
///
/// ## Examples
///
/// Readonly text input:
/// ```html
/// <input type="text" value="Cannot edit this" readonly>
/// ```
///
/// Readonly textarea:
/// ```html
/// <textarea readonly>This text cannot be edited by the user.</textarea>
/// ```
///
/// Readonly date input:
/// ```html
/// <input type="date" value="2025-01-01" readonly>
/// ```
@dynamicMemberLookup
public struct Readonly: HTMLBooleanAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "readonly" }

    public var rawValue: Bool

    public init(value: Bool = true) {
        self.rawValue = value
    }
}
