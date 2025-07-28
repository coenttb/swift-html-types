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

/// `<input type="color">` elements provide a user interface element that lets a user specify a color,
/// either by using a visual color picker interface or by entering the color into a text field in #rrggbb
/// hexadecimal format.
///
/// Only basic hexadecimal colors (without alpha channel) are allowed though CSS colors has more formats,
/// e.g. color names, functional notations and a hexadecimal format with an alpha channel.
///
/// The element's presentation may vary substantially from one browser and/or platform to another—it might
/// be a basic textual input that automatically validates to ensure that the color information is entered
/// in the proper format, or a platform-standard color picker, or some kind of custom color picker window.
extension HTMLElementTypes.Input {
    public struct Color: Sendable, Hashable {
        /// The value of an `<input>` element of type color is always a string which contains a 7-character
        /// string specifying an RGB color in hexadecimal format. While you can input the color in either
        /// upper- or lower-case, it will be stored in lower-case form.
        ///
        /// The value is never in any other form, and is never empty. If not specified, the default value is #000000.
        ///
        /// Note: Setting the value to anything that isn't a valid, fully-opaque, RGB color in hexadecimal notation
        /// will result in the value being set to #000000. Colors with an alpha channel are not supported.
        public var value: Value<String>?

        /// Creates a new color input configuration
        public init(
            value: Value<String>? = nil
        ) {
            self.value = value
        }
    }
}

extension HTMLElementTypes.Input {
    /// Creates a new color input element
    public static let color: Self = .color()

    /// Creates a new color input element
    public static func color(
        name: Name? = nil,
        value: Value<String>? = nil,
        disabled: Disabled? = nil,
        form: HTMLAttributeTypes.Form.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .color(
                .init(
                    value: value
                )
            )
        )
    }
}
