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

/// `<input type="reset">` elements are rendered as buttons, with a default click event
/// handler that resets all inputs in the form to their initial values.
///
/// Note: You should usually avoid including reset buttons in your forms. They're rarely
/// useful, and are instead more likely to frustrate users who click them by mistake
/// (often while trying to click the submit button).
extension HTMLElementTypes.Input {
    public struct Reset: Sendable, Hashable {
        /// The value attribute contains a string that is used as the button's label providing
        /// the button with an accessible description. If you don't specify a value, you get
        /// a button with the default label (typically "Reset," but this will vary depending
        /// on the user agent).
        public var value: Value<String>?

        public var required: Required?

        /// Creates a new reset input configuration
        public init(
            value: Value<String>? = nil,
            required: Required? = nil
        ) {
            self.value = value
            self.required = required
        }
    }
}

extension HTMLElementTypes.Input {
    /// Creates a new reset input element
    public static let reset: Self = .reset()

    /// Creates a new reset input element
    public static func reset(
        name: Name? = nil,
        value: Value<String>? = nil,
        disabled: Disabled? = nil,
        form: HTMLAttributeTypes.Form.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .reset(
                .init(
                    value: value
                )
            )
        )
    }
}
