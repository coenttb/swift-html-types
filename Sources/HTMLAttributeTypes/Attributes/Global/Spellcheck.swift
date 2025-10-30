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

/// Controls whether spell checking is enabled for an element.
///
/// The `spellcheck` global attribute is an enumerated attribute that defines whether an element's
/// content should be checked for spelling errors. It serves as a hint to the browser, which may
/// or may not perform spell checking based on various factors, including the element's type,
/// editability, and browser capabilities.
///
/// When enabled, browsers typically highlight misspelled words in editable content areas,
/// providing visual feedback and sometimes offering suggested corrections. This behavior
/// is particularly relevant for form controls like text inputs and textareas, as well as
/// elements with the `contenteditable` attribute set to true.
///
/// ## Usage Notes
///
/// - Applies primarily to editable elements (inputs, textareas, contenteditable elements)
/// - Is a hint, not a command—browsers are not required to implement spell checking
/// - Default behavior varies by browser and element type if not explicitly specified
/// - Inherits the spellcheck state from the nearest ancestor if not set
/// - Non-editable elements generally don't show spelling errors even if spellcheck is true
///
/// ## Security and Privacy Considerations
///
/// The HTML specification does not regulate how spell checking is implemented. Some
/// implementations may send content to remote servers for checking, which could lead to
/// data leakage. Consider setting `spellcheck="false"` for elements that might contain
/// sensitive information like passwords, personal data, or confidential text.
///
/// ## Examples
///
/// Basic usage:
/// ```html
/// <textarea spellcheck="true">This text will be checked for spelling errors.</textarea>
/// <textarea spellcheck="false">This text will not be checked for spelling errors.</textarea>
/// ```
///
/// With contenteditable:
/// ```html
/// <div contenteditable="true" spellcheck="true">
///   Editable content with spell checking enabled.
/// </div>
/// ```
///
/// For form inputs:
/// ```html
/// <label for="comments">Comments:</label>
/// <input type="text" id="comments" name="comments" spellcheck="true">
///
/// <label for="password">Password:</label>
/// <input type="password" id="password" name="password" spellcheck="false">
/// ```
@dynamicMemberLookup
public struct Spellcheck: HTMLBooleanAttribute {
  /// The name of the HTML attribute
  @inlinable public static var attribute: String { "spellcheck" }

  public var rawValue: Bool

  public init(value: Bool = true) {
    self.rawValue = value
  }
}
