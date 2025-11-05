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

extension HTMLElementTypes.Input {
    /// `<input type="button">` elements are rendered as push buttons, which can be programmed to control
    /// custom functionality anywhere on a webpage as required when assigned an event handler function
    /// (typically for the click event).
    ///
    /// Note: While `<input>` elements of type button are still perfectly valid HTML, the newer `<button>`
    /// element is now the favored way to create buttons. Given that a `<button>`'s label text is inserted
    /// between the opening and closing tags, you can include HTML in the label, even images.
    ///
    /// ## Value
    /// The `value` attribute contains a string that is used as the button's label and provides the accessible description.
    /// If no value is specified, you get an empty button.
    ///
    /// ## Examples
    ///
    /// Basic button with value:
    /// ```html
    /// <input type="button" value="Click Me" />
    /// ```
    ///
    /// Button without a value:
    /// ```html
    /// <input type="button" />
    /// ```
    ///
    /// Button with event handler (in JavaScript):
    /// ```html
    /// <form>
    ///   <input type="button" value="Start machine" />
    /// </form>
    /// <p>The machine is stopped.</p>
    /// ```
    ///
    /// Adding keyboard shortcuts with accesskey:
    /// ```html
    /// <input type="button" value="Start machine" accesskey="s" />
    /// ```
    ///
    /// Disabled button:
    /// ```html
    /// <input type="button" value="Disable me" disabled />
    /// ```
    ///
    /// ## Notes
    /// - Buttons don't participate in constraint validation as they have no real value to be constrained
    /// - Unlike other browsers, Firefox persists the disabled state even after page reload
    /// - Buttons can inherit disabled state from parent elements like `<fieldset>`
    public struct Button: Sendable, Hashable {
        /// A string that is used as the button's label. The value provides the accessible description for the button.
        /// If not specified, you get an empty button.
        public var value: Value<String>?

        public init(
            value: Value<String>? = nil
        ) {
            self.value = value
        }
    }
}

extension HTMLElementTypes.Input {
    /// Creates a new button input element
    public static let button: Self = .button()

    public static func button(
        name: Name? = nil,
        value: Value<String>? = nil,
        disabled: Disabled? = nil,
        form: HTMLAttributeTypes.Form.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .button(
                .init(
                    value: value
                )
            )
        )
    }
}
