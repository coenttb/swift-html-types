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

/// `<input type="range">` elements let the user specify a numeric value which must be no less than a given value,
/// and no more than another given value. The precise value, however, is not considered important.
/// This is typically represented using a slider or dial control rather than a text entry box like the number input type.
///
/// Because this kind of widget is imprecise, it should only be used if the control's exact value isn't important.
///
/// Common use cases include:
/// - Audio controls such as volume and balance, or filter controls
/// - Color configuration controls such as color channels, transparency, brightness
/// - Game configuration controls such as difficulty, visibility distance, world size
/// - Password length for a password manager's generated passwords
extension HTMLElementTypes.Input {
    public struct Range: Sendable, Hashable {
        /// The value attribute contains a string which contains a string representation of the selected number.
        /// The value is never an empty string ("").
        ///
        /// The default value is halfway between the specified minimum and maximum—unless the maximum is actually
        /// less than the minimum, in which case the default is set to the value of the min attribute.
        ///
        /// If an attempt is made to set the value lower than the minimum, it is set to the minimum.
        /// Similarly, an attempt to set the value higher than the maximum results in it being set to the maximum.
        public var value: Value<String>?

        /// The greatest value in the range of permitted values. If the value entered into the element
        /// exceeds this, the element fails constraint validation. If the value of the max attribute isn't
        /// a number, then the element has no maximum value.
        ///
        /// This value must be greater than or equal to the value of the min attribute.
        /// Default value is 100.
        public var max: Max?

        /// The lowest value in the range of permitted values. If the value of the element is less than this,
        /// the element fails constraint validation. If a value is specified for min that isn't a valid number,
        /// the input has no minimum value.
        ///
        /// This value must be less than or equal to the value of the max attribute.
        /// Default value is 0.
        public var min: Min?

        /// The step attribute is a number that specifies the granularity that the value must adhere to.
        /// Only values that match the specified stepping interval are valid.
        ///
        /// The default stepping value for range inputs is 1, allowing only integers to be entered—unless
        /// the stepping base is not an integer.
        public var step: Step?

        /// The value of the list attribute is the id of a <datalist> element located in the same document.
        /// The <datalist> provides tick marks on the range control. Each point is represented using an <option>
        /// element with its value attribute set to the range's value at which a mark should be drawn.
        public var list: List?

        /// Creates a new range input configuration
        public init(
            value: Value<String>? = nil,
            min: Min? = nil,
            max: Max? = nil,
            step: Step? = nil,
            list: List? = nil
        ) {
            self.value = value
            self.min = min
            self.max = max
            self.step = step
            self.list = list
        }
    }
}

extension HTMLElementTypes.Input {
    /// Creates a new range input element
    public static let range: Self = .range()

    /// Creates a new range input element
    public static func range(
        name: Name? = nil,
        value: Value<String>? = nil,
        min: Min? = nil,
        max: Max? = nil,
        step: Step? = nil,
        list: List? = nil,
        disabled: Disabled? = nil,
        form: HTMLAttributeTypes.Form.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .range(
                .init(
                    value: value,
                    min: min,
                    max: max,
                    step: step,
                    list: list
                )
            )
        )
    }
}
