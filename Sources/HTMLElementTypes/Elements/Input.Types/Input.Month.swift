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

/// `<input type="month">` elements create input fields that let the user enter a month and year.
/// The value is a string in the format YYYY-MM, where YYYY is the four-digit year and MM is the month number.
extension HTMLElementTypes.Input {
    public struct Month: Sendable, Hashable {
        /// A string representing the value of the month and year entered into the input,
        /// in the form YYYY-MM (e.g., "2023-07").
        public var value: Value<String>?

        /// The id of a datalist element that provides a list of suggested values.
        public var list: List?

        /// The earliest year and month to accept (e.g., "2000-01").
        public var min: Min?

        /// The latest year and month to accept (e.g., "2023-12").
        public var max: Max?

        /// A Boolean attribute which, if present, means this field cannot be edited by the user.
        public var readonly: Readonly?

        /// Specifies the granularity of month increments.
        /// Default is 1, indicating 1 month.
        public var step: Step?

        /// Whether the input field is required to have a value before form submission.
        public var required: Required?

        /// Creates a new month input configuration
        public init(
            value: Value<String>? = nil,
            list: List? = nil,
            min: Min? = nil,
            max: Max? = nil,
            readonly: Readonly? = nil,
            step: Step? = nil,
            required: Required? = nil
        ) {
            self.value = value
            self.list = list
            self.max = max
            self.min = min
            self.readonly = readonly
            self.step = step
            self.required = required
        }
    }
}

extension HTMLElementTypes.Input {
    /// Creates a new month input element
    public static let month: Self = .month()

    /// Creates a new month input element
    public static func month(
        name: Name? = nil,
        value: Value<String>? = nil,
        list: List? = nil,
        min: Min? = nil,
        max: Max? = nil,
        readonly: Readonly? = nil,
        step: Step? = nil,
        required: Required? = nil,
        disabled: Disabled? = nil,
        form: HTMLAttributeTypes.Form.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .month(
                .init(
                    value: value,
                    list: list,
                    min: min,
                    max: max,
                    readonly: readonly,
                    step: step,
                    required: required
                )
            )
        )
    }
}
