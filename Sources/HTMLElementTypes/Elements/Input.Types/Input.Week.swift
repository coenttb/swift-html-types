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

/// `<input type="week">` elements create input fields allowing easy entry of a year plus
/// the ISO 8601 week number during that year (i.e., week 1 to 52 or 53).
extension HTMLElementTypes.Input {
    public struct Week: Sendable, Hashable {
        /// A string representing the value of the week/year entered into the input
        /// in the format "yyyy-Www" (e.g., "2017-W01").
        public var value: Value<String>?

        /// The id of a datalist element that provides a list of suggested values.
        public var list: List?

        /// The earliest year and week to accept,
        /// in the format "yyyy-Www" (e.g., "2017-W01").
        public var min: Min?

        /// The latest (time-wise) year and week number to accept,
        /// in the format "yyyy-Www" (e.g., "2017-W52").
        public var max: Max?

        /// A Boolean attribute which, if present, means this field cannot be edited by the user.
        public var readonly: Readonly?

        /// Specifies the granularity of week increments in weeks.
        /// Default is 1, indicating 1 week.
        public var step: Step?

        /// Whether the input field is required to have a value before form submission.
        public var required: Required?

        /// Creates a new week input configuration
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
    /// Creates a new week input element
    public static let week: Self = .week()

    /// Creates a new week input element
    public static func week(
        name: Name? = nil,
        value: Value<String>? = nil,
        list: List? = nil,
        min: Min? = nil,
        max: Max? = nil,
        readonly: Readonly? = nil,
        step: HTMLAttributeTypes.Step? = nil,
        required: Required? = nil,
        disabled: Disabled? = nil,
        form: HTMLAttributeTypes.Form.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .week(
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
