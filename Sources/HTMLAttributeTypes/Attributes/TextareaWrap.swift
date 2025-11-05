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

/// Indicates how a textarea should wrap text for form submission.
///
/// The `wrap` attribute is used with the `<textarea>` element to specify
/// how the content should be wrapped when submitting the form.
///
/// ## Usage Notes
///
/// - Used with the `<textarea>` element
/// - Affects how text is sent when the form is submitted
/// - Does not affect the visual appearance of text in the textarea
///
/// ## Values
///
/// - `.hard`: The browser inserts line breaks so that each line is no longer than the width
///            of the control; requires the `cols` attribute to be specified.
/// - `.soft`: The browser ensures all line breaks are CR+LF pairs, but doesn't add any additional ones.
///
/// ## Examples
///
/// ```html
/// <!-- Hard wrapping - inserts line breaks at column width -->
/// <textarea wrap="hard" cols="40" rows="5">
///   Text will be wrapped at 40 characters when submitted.
/// </textarea>
///
/// <!-- Soft wrapping - preserves user-entered line breaks only -->
/// <textarea wrap="soft" cols="40" rows="5">
///   Text will only wrap where the user pressed Enter.
/// </textarea>
/// ```
@dynamicMemberLookup
public struct TextareaWrap: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "wrap" }

    /// The wrap value
    public var rawValue: String

    /// Initialize with a string value
    public init(value: String) {
        self.rawValue = value
    }

    /// Initialize with a wrap value
    public init(_ value: String) {
        self.init(value: value)
    }

    /// Line breaks are automatically inserted
    public static let hard = TextareaWrap("hard")

    /// Line breaks are not automatically inserted
    public static let soft = TextareaWrap("soft")
}
