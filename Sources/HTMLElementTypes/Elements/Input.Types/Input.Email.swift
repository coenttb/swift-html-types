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

/// `<input type="email">` elements are used to let the user enter and edit an email address, or,
/// if the multiple attribute is specified, a list of email addresses.
///
/// The input value is automatically validated to ensure that it's either empty or a properly-formatted
/// email address (or list of addresses) before the form can be submitted. The :valid and :invalid CSS
/// pseudo-classes are automatically applied as appropriate to visually denote whether the current value
/// of the field is a valid email address or not.
extension HTMLElementTypes.Input {
    public struct Email: Sendable, Hashable {
        /// A string which is automatically validated as conforming to email syntax.
        /// This is the value that will be submitted with the form.
        public var value: Value<String>?

        /// The maximum string length (measured in UTF-16 code units) that the user can enter into the email input.
        /// This must be an integer value of 0 or higher. If no maxlength is specified, or an invalid value is specified,
        /// the email input has no maximum length. This value must also be greater than or equal to the value of minlength.
        public var maxlength: Maxlength?

        /// The minimum string length (measured in UTF-16 code units) that the user can enter into the email input.
        /// This must be a non-negative integer value smaller than or equal to the value specified by maxlength.
        /// If no minlength is specified, or an invalid value is specified, the email input has no minimum length.
        public var minlength: Minlength?

        public var required: Required?

        /// A Boolean attribute which, if present, indicates that the user can enter a list of multiple
        /// email addresses, separated by commas and, optionally, whitespace characters.
        public var multiple: Multiple?

        /// The pattern attribute is a regular expression that the input's value must match for the value
        /// to pass constraint validation. It must be a valid JavaScript regular expression.
        public var pattern: Pattern?

        /// The placeholder attribute is a string that provides a brief hint to the user as to what kind
        /// of information is expected in the field. It should be a word or short phrase that demonstrates
        /// the expected type of data, rather than an explanatory message.
        public var placeholder: Placeholder?

        /// A Boolean attribute which, if present, means this field cannot be edited by the user.
        public var readonly: Readonly?

        /// The size attribute is a numeric value indicating how many characters wide the input field should be.
        /// The value must be a number greater than zero, and the default value is 20.
        public var size: Size?

        /// Creates a new email input configuration
        public init(
            value: Value<String>? = nil,
            maxlength: Maxlength? = nil,
            minlength: Minlength? = nil,
            required: Required? = nil,
            multiple: Multiple? = nil,
            pattern: Pattern? = nil,
            placeholder: Placeholder? = nil,
            readonly: Readonly? = nil,
            size: Size? = nil
        ) {
            self.value = value
            self.maxlength = maxlength
            self.minlength = minlength
            self.required = required
            self.multiple = multiple
            self.pattern = pattern
            self.placeholder = placeholder
            self.readonly = readonly
            self.size = size
        }
    }
}

// <input type="email">
//
//
// Baseline Widely available

extension HTMLElementTypes.Input {
    /// Creates a new email input element
    public static let email: Self = .email()

    /// Creates a new email input element
    public static func email(
        name: Name? = nil,
        value: Value<String>? = nil,
        maxlength: Maxlength? = nil,
        minlength: Minlength? = nil,
        required: Required? = nil,
        multiple: Multiple? = nil,
        pattern: Pattern? = nil,
        placeholder: Placeholder? = nil,
        readonly: Readonly? = nil,
        size: Size? = nil,
        disabled: Disabled? = nil,
        form: HTMLAttributeTypes.Form.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .email(
                .init(
                    value: value,
                    maxlength: maxlength,
                    minlength: minlength,
                    required: required,
                    multiple: multiple,
                    pattern: pattern,
                    placeholder: placeholder,
                    readonly: readonly,
                    size: size
                )
            )
        )
    }
}
