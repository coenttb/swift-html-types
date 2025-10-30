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

/// An attribute that disables browser validation for form submissions.
///
/// The `novalidate` boolean attribute, when present, indicates that the form should not be
/// validated when submitted. This allows you to bypass the browser's built-in validation
/// features and handle validation yourself, typically with JavaScript.
///
/// ## Client-Side Validation
///
/// Modern browsers automatically validate form elements based on their attributes:
///
/// - Required fields (`required` attribute)
/// - Email format (`type="email"`)
/// - URL format (`type="url"`)
/// - Number constraints (`min`, `max`, `step` attributes)
/// - Text length (`minlength`, `maxlength` attributes)
/// - Pattern matching (`pattern` attribute)
///
/// The `novalidate` attribute lets you opt out of this built-in validation.
///
/// ## Use Cases
///
/// Disabling browser validation is useful when:
///
/// - You need custom validation rules that browser validation doesn't support
/// - You want to implement custom error messages or styling
/// - You're handling validation on the server side only
/// - You need to allow formats that browser validation would reject
/// - You need to submit a form with intentionally invalid data (e.g., for saving drafts)
///
/// ## Security Considerations
///
/// When using `novalidate`:
///
/// - Always implement proper server-side validation
/// - Client-side validation should be considered a UX enhancement, not a security feature
/// - Remember that users can bypass client-side validation regardless of this attribute
///
/// ## Usage Notes
///
/// - This is a boolean attribute, so its presence enables the feature
/// - Can be overridden by `formnovalidate` on submit buttons for specific submission paths
/// - Still fires form validation events that can be handled via JavaScript
/// - Doesn't prevent custom JavaScript validation you implement yourself
///
/// ## Examples
///
/// ```swift
/// // Form with browser validation disabled
/// HTML.form.action("/submit").method(.post).novalidate
///
/// // Form with validation, but a specific submit button that bypasses validation
/// HTML.form.action("/submit").method(.post") {
///     // Form fields with validation attributes...
///     input().type(.submit).value("Save as Draft").formnovalidate
/// }
/// ```
@dynamicMemberLookup
public struct Novalidate: HTMLBooleanAttribute {
  /// The name of the HTML attribute
  @inlinable public static var attribute: String { "novalidate" }

  public var rawValue: Bool

  public init(value: Bool = true) {
    self.rawValue = value
  }
}
