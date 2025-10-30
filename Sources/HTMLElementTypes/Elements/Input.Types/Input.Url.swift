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

/// `<input type="url">` elements are used to let the user enter and edit a URL.
/// The input value is automatically validated to ensure that it's either empty or a properly-formatted URL.
extension HTMLElementTypes.Input {
  public struct Url: Sendable, Hashable {
    /// A string representing a URL, or empty.
    public var value: Value<String>?

    /// The id of a datalist element that provides a list of predefined values to suggest to the user.
    public var list: List?

    /// The maximum string length that the user can enter.
    public var maxlength: Maxlength?

    /// The minimum string length that the user can enter.
    public var minlength: Minlength?

    /// A regular expression that the input's value must match to be valid.
    public var pattern: Pattern?

    /// A brief hint displayed in the input field when it is empty.
    public var placeholder: Placeholder?

    /// A Boolean attribute which, if present, means this field cannot be edited by the user.
    public var readonly: Readonly?

    /// The visible width of the input field in characters.
    public var size: Size?

    /// Enable or disable spell-checking for this element.
    public var spellcheck: Spellcheck?

    /// Whether the input field is required to have a value before form submission.
    public var required: Required?

    /// Creates a new URL input configuration
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
  /// Creates a new url input element
  public static let url: Self = .url()

  /// Creates a new URL input element
  public static func url(
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
      type: .url(
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
