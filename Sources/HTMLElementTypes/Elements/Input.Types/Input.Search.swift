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

/// `<input type="search">` elements are text fields designed for the user to enter search queries into.
/// These are functionally identical to text inputs, but may be styled differently by the user agent.
///
/// Some browsers show a cross icon that can be clicked on to remove the search term instantly, and modern
/// browsers tend to automatically store search terms previously entered across domains, which then come up
/// as autocomplete options when subsequent searches are performed.
extension HTMLElementTypes.Input {
    public struct Search: Sendable, Hashable {
        /// The value attribute contains a string representing the value contained in the search field.
        /// If no validation constraints are in place for the input, the value can be any text string
        /// or an empty string ("").
        public var value: Value<String>?

        /// The list attribute is the id of a <datalist> element located in the same document.
        /// The <datalist> provides a list of predefined values to suggest to the user for this input.
        public var list: List?

        /// The maximum string length (measured in UTF-16 code units) that the user can enter into
        /// the search field. This must be an integer value of 0 or higher. If no maxlength is specified,
        /// or an invalid value is specified, the search field has no maximum length.
        public var maxlength: Maxlength?

        /// The minimum string length (measured in UTF-16 code units) that the user can enter into
        /// the search field. This must be a non-negative integer value smaller than or equal to the
        /// value specified by maxlength.
        public var minlength: Minlength?

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

        /// The spellcheck attribute is used to indicate whether to enable spell-checking for an element.
        /// The permitted values are true (enable spell-checking), false (disable spell-checking),
        /// and an empty string or no value (follow the element's default behavior).
        public var spellcheck: Spellcheck?

        /// Indicates if the field is required to be filled in before the form can be submitted.
        public var required: Required?

        /// Creates a new search input configuration
        public init(
            value: Value<String>? = nil,
            list: List? = nil,
            maxlength: Maxlength? = nil,
            minlength: Minlength? = nil,
            pattern: Pattern? = nil,
            placeholder: Placeholder? = nil,
            readonly: Readonly? = nil,
            size: Size? = nil,
            spellcheck: Spellcheck? = nil,
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
            self.spellcheck = spellcheck
            self.required = required
        }
    }
}

extension HTMLElementTypes.Input {
    /// Creates a new search input element
    public static let search: Self = .search()

    /// Creates a new search input element
    public static func search(
        name: Name? = nil,
        value: Value<String>? = nil,
        list: List? = nil,
        maxlength: Maxlength? = nil,
        minlength: Minlength? = nil,
        pattern: Pattern? = nil,
        placeholder: Placeholder? = nil,
        readonly: Readonly? = nil,
        size: Size? = nil,
        spellcheck: Spellcheck? = nil,
        required: Required? = nil,
        disabled: Disabled? = nil,
        form: HTMLAttributeTypes.Form.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .search(
                .init(
                    value: value,
                    list: list,
                    maxlength: maxlength,
                    minlength: minlength,
                    pattern: pattern,
                    placeholder: placeholder,
                    readonly: readonly,
                    size: size,
                    spellcheck: spellcheck,
                    required: required
                )
            )
        )
    }
}
