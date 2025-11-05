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

/// `<input type="hidden">` elements let web developers include data that cannot be seen or modified
/// by users when a form is submitted. For example, the ID of the content that is currently being
/// ordered or edited, or a unique security token. Hidden inputs are completely invisible in the
/// rendered page, and there is no way to make it visible in the page's content.
///
/// Note: While the value isn't displayed to the user in the page's content, it is visible—and can be
/// edited—using any browser's developer tools or "View Source" functionality. Do not rely on hidden
/// inputs as a form of security.
///
/// Hidden inputs don't participate in constraint validation; they have no real value to be constrained.
extension HTMLElementTypes.Input {
    public struct Hidden: Sendable, Hashable {
        /// The value attribute holds a string that contains the hidden data you want to include when
        /// the form is submitted to the server. This specifically can't be edited or seen by the user
        /// via the user interface, although it could be edited via browser developer tools.
        public var value: Value<String>?

        /// Creates a new hidden input configuration
        public init(
            value: Value<String>? = nil
        ) {
            self.value = value
        }
    }
}

extension HTMLElementTypes.Input {
    /// Creates a new hidden input element
    public static let hidden: Self = .hidden()

    /// Creates a new hidden input element
    public static func hidden(
        name: Name? = nil,
        value: Value<String>? = nil,
        disabled: Disabled? = nil,
        form: HTMLAttributeTypes.Form.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .hidden(
                .init(
                    value: value
                )
            )
        )
    }
}
