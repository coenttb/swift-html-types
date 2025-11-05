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

/// `<input type="image">` elements are used to create graphical submit buttons, i.e. submit buttons
/// that take the form of an image rather than text.
///
/// When an image button is clicked, the form is submitted with the coordinates of the click
/// relative to the image. These coordinates are sent as two name/value pairs:
/// - name.x=X
/// - name.y=Y
///
/// Where "name" is the value of the name attribute, and X and Y are the coordinates.
extension HTMLElementTypes.Input {
    public struct Image: Sendable, Hashable {

        /// A string specifying the URL of the image file to display to represent the graphical submit button. When the user interacts with the image, the input is handled like any other button input.
        public var src: Src

        /// The alt attribute provides an alternate string to use as the button's label if the image cannot be shown (due to error, a user agent that cannot or is configured not to show images, or if the user is using a screen reading device). If provided, it must be a non-empty string appropriate as a label for the button.
        ///
        /// For example, if you have a graphical button that shows an image with an icon and/or image text "Login Now", you should also set the alt attribute to something like Login Now.
        ///
        /// > Note: Note: While the alt attribute is technically optional, you should always include one to maximize the usability of your content.
        ///
        /// Functionally, the alt attribute of the `<input type="image">` element works just like the alt attribute on `<img>` elements.
        public var alt: Alt?

        /// A number specifying the height, in CSS pixels, at which to draw the image specified by the src attribute.
        public var height: Height?

        /// A number indicating the width at which to draw the image, in CSS pixels.
        public var width: Width?

        public var required: Required?

        public var form: HTMLAttributeTypes.Form

        public init(
            src: Src,
            alt: Alt? = nil,
            height: Height? = nil,
            width: Width? = nil,
            required: Required? = nil,
            form: HTMLAttributeTypes.Form = .init()
        ) {
            self.src = src
            self.alt = alt
            self.height = height
            self.width = width
            self.required = required
            self.form = form
        }
    }
}

extension HTMLElementTypes.Input {

    /// Creates a new image input element (graphical submit button)
    public static func image(
        name: Name? = nil,
        src: Src,
        alt: Alt? = nil,
        height: Height? = nil,
        width: Width? = nil,
        formId: HTMLAttributeTypes.Form.ID? = nil,
        form: HTMLAttributeTypes.Form,
        disabled: Disabled? = nil,
        required: Required? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: formId,
            type: .image(
                .init(
                    src: src,
                    alt: alt,
                    height: height,
                    width: width,
                    required: required,
                    form: form
                )
            )
        )
    }
}
