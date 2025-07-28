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

/// `<input type="time">` elements create input fields designed to let the user easily enter a time (hours and minutes, and optionally seconds).
/// The value is always a 24-hour HH:mm or HH:mm:ss formatted time, with leading zeros, regardless of the UI's input format.
extension HTMLElementTypes.Input {
    public struct Time: Sendable, Hashable {
        /// A string representing a time in 24-hour format (HH:mm or HH:mm:ss).
        /// Example: "13:30" for 1:30 PM.
        public var value: Value<String>?

        /// The id of a datalist element providing suggested times.
        public var list: List?

        /// A string indicating the earliest time to accept (e.g., "09:00").
        public var min: Min?

        /// A string indicating the latest time to accept (e.g., "18:00").
        public var max: Max?

        /// A Boolean attribute which, if present, means this field cannot be edited by the user.
        public var readonly: Readonly?

        /// Specifies the granularity of time increments in seconds.
        /// Default is 60 (1 minute), but can be set to other values to show seconds.
        public var step: Step?

        /// Whether the input field is required to have a value before form submission.
        public var required: Required?

        /// Creates a new time input configuration
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
            self.min = min
            self.max = max
            self.readonly = readonly
            self.step = step
            self.required = required
        }
    }
}

extension HTMLElementTypes.Input {
    /// Creates a new time input element
    public static let time: Self = .time()

    /// Creates a new time input element
    public static func time(
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
            type: .time(
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
