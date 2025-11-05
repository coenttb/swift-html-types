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

/// `<input type="tel">` elements are used to let the user enter and edit a telephone number.
/// Unlike `<input type="email">` and `<input type="url">`, the input value is not automatically
/// validated to a particular format before the form can be submitted, because formats for telephone
/// numbers vary so much around the world.
extension HTMLElementTypes.Input {
    public struct Tel: Sendable, Hashable {
        /// A string representing a telephone number, or empty.
        public var value: Value<String>?

        /// The ID of a datalist element that provides a list of suggested telephone numbers.
        public var list: List?

        /// The maximum number of characters the input should accept.
        public var maxlength: Maxlength?

        /// The minimum number of characters required for the input to be valid.
        public var minlength: Minlength?

        /// A regular expression the input's value must match to be valid.
        public var pattern: Pattern?

        /// A hint displayed when the input is empty, to guide the user on the expected format.
        public var placeholder: Placeholder?

        /// Whether the input field should be read-only.
        public var readonly: Readonly?

        /// The visible width of the input field in characters.
        public var size: Size?

        /// Whether the input field is required to have a value before form submission.
        public var required: Required?

        /// Creates a new telephone input configuration
        public init(
            value: Value<String>? = nil,
            list: List? = nil,
            maxlength: Maxlength? = nil,
            minlength: Minlength? = nil,
            pattern: Pattern? = nil,
            placeholder: Placeholder? = nil,
            readonly: Readonly? = nil,
            size: Size? = nil,
            required: Required? = nil
        ) {
            self.value = value
            self.list = list
            self.maxlength = maxlength
            self.minlength = minlength
            self.pattern = pattern
            self.placeholder = placeholder
            self.readonly = readonly
            self.size = size
            self.required = required
        }
    }
}

extension HTMLElementTypes.Input {
    /// Creates a new tel input element
    public static let tel: Self = .tel()

    /// Creates a new telephone input element
    public static func tel(
        name: Name? = nil,
        value: Value<String>? = nil,
        list: List? = nil,
        maxlength: Maxlength? = nil,
        minlength: Minlength? = nil,
        pattern: Pattern? = nil,
        placeholder: Placeholder? = nil,
        readonly: Readonly? = nil,
        size: Size? = nil,
        required: Required? = nil,
        disabled: Disabled? = nil,
        form: HTMLAttributeTypes.Form.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .tel(
                .init(
                    value: value,
                    list: list,
                    maxlength: maxlength,
                    minlength: minlength,
                    pattern: pattern,
                    placeholder: placeholder,
                    readonly: readonly,
                    size: size,
                    required: required
                )
            )
        )
    }
}
