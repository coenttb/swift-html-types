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

/// `<input type="number">` elements are used to let the user enter a number. They include built-in
/// validation to reject non-numerical entries.
///
/// The browser may opt to provide stepper arrows to let the user increase and decrease the value
/// using their mouse or by tapping with a fingertip.
///
/// Note: The number input type should only be used for incremental numbers, especially when spinbutton
/// incrementing and decrementing are helpful to user experience. It is not appropriate for values that
/// happen to only consist of numbers but aren't strictly speaking a number, such as postal codes or
/// credit card numbers.
extension HTMLElementTypes.Input {
    public struct Number: Sendable, Hashable {
        /// A number representing the value of the number entered into the input.
        /// You can set a default value for the input by including a number inside the value attribute.
        public var value: Value<String>?

        /// The maximum value to accept for this input. If the value entered into the element exceeds this,
        /// the element fails constraint validation. If the value of the max attribute isn't a number,
        /// then the element has no maximum value.
        ///
        /// This value must be greater than or equal to the value of the min attribute.
        public var max: Max?

        /// The minimum value to accept for this input. If the value of the element is less than this,
        /// the element fails constraint validation. If a value is specified for min that isn't a valid number,
        /// the input has no minimum value.
        ///
        /// This value must be less than or equal to the value of the max attribute.
        public var min: Min?

        /// The placeholder attribute is a string that provides a brief hint to the user as to what kind
        /// of information is expected in the field. It should be a word or short phrase that demonstrates
        /// the expected type of data, rather than an explanatory message.
        public var placeholder: Placeholder?

        /// A Boolean attribute which, if present, means this field cannot be edited by the user.
        public var readonly: Readonly?

        /// The step attribute is a number that specifies the granularity that the value must adhere to.
        /// Only values which are equal to the basis for stepping (min if specified, value otherwise,
        /// and an appropriate default value if neither of those is provided) are valid.
        ///
        /// The default stepping value for number inputs is 1, allowing only integers to be entered—unless
        /// the stepping base is not an integer.
        ///
        /// To allow decimal values, you'll need to reflect this in the step value (e.g., step="0.01" to allow
        /// decimals to two decimal places).
        ///
        /// If you want to allow arbitrary decimal values, you can set the step value to "any".
        public var step: Step?

        public var required: Required?

        /// Creates a new number input configuration
        public init(
            value: Value<String>? = nil,
            min: Min? = nil,
            max: Max? = nil,
            placeholder: Placeholder? = nil,
            readonly: Readonly? = nil,
            required: Required? = nil,
            step: Step? = nil
        ) {
            self.value = value
            self.min = min
            self.max = max
            self.placeholder = placeholder
            self.readonly = readonly
            self.required = required
            self.step = step
        }
    }
}

extension HTMLElementTypes.Input {
    /// Creates a new number input element
    public static let number: Self = .number()

    /// Creates a new number input element
    public static func number(
        name: Name? = nil,
        value: Value<String>? = nil,
        min: Min? = nil,
        max: Max? = nil,
        placeholder: Placeholder? = nil,
        readonly: Readonly? = nil,
        required: Required? = nil,
        step: Step? = nil,
        disabled: Disabled? = nil,
        form: HTMLAttributeTypes.Form.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .number(
                .init(
                    value: value,
                    min: min,
                    max: max,
                    placeholder: placeholder,
                    readonly: readonly,
                    required: required,
                    step: step
                )
            )
        )
    }
}
