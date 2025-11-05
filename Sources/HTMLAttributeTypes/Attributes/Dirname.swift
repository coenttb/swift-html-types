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

/// An attribute that enables the submission of the text directionality with form data.
///
/// The `dirname` attribute specifies the name for an additional form field that will contain
/// the text directionality ("ltr" or "rtl") of the element's content when the form is submitted.
/// It works in conjunction with the `dir` attribute, particularly when `dir="auto"` is used to
/// automatically detect text direction.
///
/// ## Usage Notes
///
/// - Valid on `<textarea>` and various `<input>` elements (text, search, tel, url, email, etc.)
/// - Submits additional form data with the field name specified by the dirname value
/// - The additional field value will be either "ltr" (left-to-right) or "rtl" (right-to-left)
/// - Most useful with `dir="auto"` to detect text direction automatically
/// - Helps preserve text directionality when handling form data on the server
///
/// ## Form Submission
///
/// When a form with dirname is submitted, the browser adds an additional field to the form data:
/// - Field name: The value of the dirname attribute
/// - Field value: Either "ltr" or "rtl" based on the text direction
///
/// ## Examples
///
/// For an input with automatic direction detection:
/// ```html
/// <input type="text" name="comment" dir="auto" dirname="comment-direction">
/// ```
///
/// Form submission would include:
/// ```
/// comment=Hello&comment-direction=ltr
/// ```
///
/// For a textarea with right-to-left text:
/// ```html
/// <textarea name="message" dir="auto" dirname="message-direction">سلام</textarea>
/// ```
///
/// Form submission would include:
/// ```
/// message=سلام&message-direction=rtl
/// ```
@dynamicMemberLookup
public struct Dirname: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "dirname" }

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the directionality information
    public init(value: String) {
        self.rawValue = value
    }
}

extension Dirname {
    /// Initialize with the same field name as the input/textarea, but with a suffix
    public init(basedOn elementName: String, suffix: String = "-direction") {
        self.rawValue = elementName + suffix
    }
}
