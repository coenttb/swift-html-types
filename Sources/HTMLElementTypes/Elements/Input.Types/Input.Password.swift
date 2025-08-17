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

/// `<input type="password">` elements provide a way for the user to securely enter a password.
///
/// The element is presented as a one-line plain text editor control in which the text is obscured
/// so that it cannot be read, usually by replacing each character with a symbol such as the
/// asterisk ("*") or a dot ("•"). This character will vary depending on the user agent and operating system.
///
/// Note: Any forms involving sensitive information like passwords (such as login forms) should be
/// served over HTTPS. Many browsers now implement mechanisms to warn against insecure login forms.
extension HTMLElementTypes.Input {
    public struct Password: Sendable, Hashable {
        /// The value attribute contains a string whose value is the current contents of the text
        /// editing control being used to enter the password. If the user hasn't entered anything yet,
        /// this value is an empty string ("").
        public var value: Value<String>?

        /// The maximum string length (measured in UTF-16 code units) that the user can enter into the password field.
        /// This must be an integer value of 0 or higher. If no maxlength is specified, or an invalid value is specified,
        /// the password field has no maximum length. This value must also be greater than or equal to the value of minlength.
        public var maxlength: Maxlength?

        /// The minimum string length (measured in UTF-16 code units) that the user can enter into the password entry field.
        /// This must be a non-negative integer value smaller than or equal to the value specified by maxlength.
        /// If no minlength is specified, or an invalid value is specified, the password input has no minimum length.
        public var minlength: Minlength?

        /// The pattern attribute, when specified, is a regular expression that the input's value must match
        /// for the value to pass constraint validation. It must be a valid JavaScript regular expression.
        ///
        /// Use of a pattern is strongly recommended for password inputs, in order to help ensure that valid
        /// passwords using a wide assortment of character classes are selected and used by your users.
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

        /// The autocomplete attribute allows the browser to fill out the password field automatically.
        ///
        /// Common values for password fields include:
        /// - "current-password" - For login forms
        /// - "new-password" - For registration and password change forms
        /// - "one-time-code" - For one-time passwords
        /// - "off" - Don't autocomplete (though some browsers might ignore this)
        public var autocomplete: Autocomplete?

        public var required: Required?

        /// Creates a new password input configuration
        public init(
            value: Value<String>? = nil,
            maxlength: Maxlength? = nil,
            minlength: Minlength? = nil,
            pattern: Pattern? = nil,
            placeholder: Placeholder? = nil,
            readonly: Readonly? = nil,
            size: Size? = nil,
            autocomplete: Autocomplete? = nil,
            required: Required? = nil
        ) {
            self.value = value
            self.maxlength = maxlength
            self.minlength = minlength
            self.pattern = pattern
            self.placeholder = placeholder
            self.readonly = readonly
            self.size = size
            self.autocomplete = autocomplete
            self.required = required
        }
    }
}

extension HTMLElementTypes.Input {
    /// Creates a new password input element
    public static let password: Self = .password()

    /// Creates a new password input element
    public static func password(
        name: Name? = nil,
        value: Value<String>? = nil,
        maxlength: Maxlength? = nil,
        minlength: Minlength? = nil,
        pattern: Pattern? = nil,
        placeholder: Placeholder? = nil,
        readonly: Readonly? = nil,
        size: Size? = nil,
        autocomplete: Autocomplete? = nil,
        disabled: Disabled? = nil,
        form: HTMLAttributeTypes.Form.ID? = nil,
        required: Required? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .password(
                .init(
                    value: value,
                    maxlength: maxlength,
                    minlength: minlength,
                    pattern: pattern,
                    placeholder: placeholder,
                    readonly: readonly,
                    size: size,
                    autocomplete: autocomplete,
                    required: required
                )
            )
        )
    }
}
