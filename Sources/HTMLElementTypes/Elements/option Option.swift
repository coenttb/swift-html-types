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

/// Represents an HTML option element (`<option>`), which defines an item contained in a
/// `<select>`, an `<optgroup>`, or a `<datalist>` element.
///
/// The `Option` struct provides a type-safe way to create option elements for dropdown menus,
/// selection lists, and autocomplete controls.
///
/// ## Example
///
/// ```swift
/// select {
///     option(value: "dog", selected: .init()) {
///         "Dog"
///     }
///     option(value: "cat") {
///         "Cat"
///     }
///     option(value: "hamster", disabled: .init()) {
///         "Hamster"
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - Always provide a meaningful value for each option
/// - Use the `selected` attribute to pre-select an option
/// - Use the `disabled` attribute to make an option unselectable when appropriate
/// - Consider using `optgroup` to organize options into logical groups for better usability
///
public struct Option: HTMLElement {
  /// The HTML tag name
  @inlinable public static var tag: String { "option" }

  /// If set, this option is not checkable. Often browsers grey out such control
  /// and it won't receive browsing events like mouse clicks or focus-related ones.
  public var disabled: Disabled?

  /// Text for the label indicating the meaning of the option.
  /// If not defined, the element's text content is used.
  public var label: HTMLAttributeTypes.Label?

  /// If present, indicates that the option is initially selected.
  /// In a single-select control, only one option can be selected at a time.
  public var selected: Selected?

  /// The value to be submitted with the form, should this option be selected.
  /// If omitted, the value is taken from the text content of the option element.
  public var value: Value<String>

  /// Creates a new Option element with the specified attributes.
  ///
  /// - Parameters:
  ///   - disabled: If set, this option cannot be selected
  ///   - label: Text label for the option
  ///   - selected: If set, this option is initially selected
  ///   - value: The value to be submitted if this option is selected
  public init(
    disabled: Disabled? = nil,
    label: HTMLAttributeTypes.Label? = nil,
    selected: Selected? = nil,
    value: Value<String>
  ) {
    self.disabled = disabled
    self.label = label
    self.selected = selected
    self.value = value
  }
}
