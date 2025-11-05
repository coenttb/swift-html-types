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

/// `<input type="radio">` elements are generally used in radio groups—collections of radio buttons
/// describing a set of related options.
///
/// Only one radio button in a given group can be selected at the same time. Radio buttons are typically
/// rendered as small circles, which are filled or highlighted when selected.
///
/// A radio group is defined by giving each of radio buttons in the group the same name. Once a radio
/// group is established, selecting any radio button in that group automatically deselects any
/// currently-selected radio button in the same group.
extension HTMLElementTypes.Input {
    public struct Radio: Sendable, Hashable {
        /// The value attribute is a string containing the radio button's value. The value is never shown
        /// to the user by their user agent. Instead, it's used to identify which radio button in a group is selected.
        ///
        /// When a form is submitted, only radio buttons which are currently checked are submitted to the server,
        /// and the reported value is the value of the value attribute. If the value is not otherwise specified,
        /// it is the string "on" by default.
        public var value: Value<String>?

        /// A Boolean attribute which, if present, indicates that this radio button is the default
        /// selected one in the group.
        ///
        /// If you put the checked attribute on more than one radio button with the same name,
        /// later instances will override earlier ones; that is, the last checked radio button
        /// will be the one that is selected.
        public var checked: Checked?

        /// The required attribute is one which most `<input>`s share. If any radio button in a
        /// same-named group of radio buttons has the required attribute, a radio button in that
        /// group must be checked, although it doesn't have to be the one with the attribute applied.
        public var required: Required?

        /// Creates a new radio input configuration
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
    /// Creates a new radio input element
    public static let radio: Self = .radio()

    /// Creates a new radio input element
    public static func radio(
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
            type: .radio(
                .init(
                    value: value,
                    checked: checked,
                    required: required
                )
            )
        )
    }
}
