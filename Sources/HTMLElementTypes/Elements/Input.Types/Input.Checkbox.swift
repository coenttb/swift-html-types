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

import HTMLAttributeTypes

/// `<input type="checkbox">` elements are rendered by default as boxes that are checked (ticked) when activated.
/// A checkbox allows you to select single values for submission in a form (or not).
///
/// Note: Radio buttons are similar to checkboxes, but with an important distinction — same-named radio buttons are
/// grouped into a set in which only one radio button can be selected at a time, whereas checkboxes allow you to
/// turn single values on and off. Where multiple same-named controls exist, radio buttons allow one to be selected
/// out of them all, whereas checkboxes allow multiple values to be selected.
extension HTMLElementTypes.Input {
    public struct Checkbox: Sendable, Hashable {
        /// A string representing the value of the checkbox. This is not displayed on the client-side, but on the server
        /// this is the value given to the data submitted with the checkbox's name. If the value attribute is omitted,
        /// the default value for the checkbox is "on".
        ///
        /// Note: If a checkbox is unchecked when its form is submitted, neither the name nor the value is
        /// submitted to the server.
        public var value: Value<String>?

        /// A boolean attribute indicating whether this checkbox is checked by default (when the page loads).
        public var checked: Checked?

        /// A boolean attribute indicating whether this checkbox is checked by default (when the page loads).
        public var required: Required?

        /// Creates a new checkbox input configuration
        public init(
            value: Value<String>? = nil,
            checked: Checked? = nil,
            required: Required? = nil
        ) {
            self.value = value
            self.checked = checked
            self.required = required
        }
    }
}

extension HTMLElementTypes.Input {
    /// Creates a new checkbox input element
    public static let checkbox: Self = .checkbox()

    /// Creates a new checkbox input element
    public static func checkbox(
        name: Name? = nil,
        value: Value<String>? = nil,
        checked: Checked? = nil,
        required: Required? = nil,
        disabled: Disabled? = nil,
        form: HTMLAttributeTypes.Form.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .checkbox(
                .init(
                    value: value,
                    checked: checked,
                    required: required
                )
            )
        )
    }
}
