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

/// An attribute that associates an input element with a datalist of predefined options.
///
/// The `list` attribute references a `<datalist>` element by its id, which provides a list of
/// predefined options to suggest to the user as they input data. Unlike the options in a `<select>`
/// element, the suggestions provided by `<datalist>` are not mandatory; users can either select
/// from the suggestions or enter a different value.
///
/// ## Usage Notes
///
/// - Works with most `<input>` types including: text, search, url, tel, email, number, range, color, etc.
/// - References a `<datalist>` element by its id
/// - Provides autocomplete suggestions, not mandatory options
/// - Allows the user to select a suggestion or enter a custom value
/// - Browser support and visual presentation may vary
///
/// ## Best Practices
///
/// - Use meaningful, sorted options that help users complete forms efficiently
/// - For large lists, include only the most common or recommended values
/// - Ensure the `<datalist>` element has a unique id that matches the `list` attribute value
/// - Consider including both the value and a user-friendly label in the options
///
/// ## Examples
///
/// Basic usage with text input:
/// ```html
/// <input type="text" list="fruits">
/// <datalist id="fruits">
///   <option value="Apple">
///   <option value="Banana">
///   <option value="Cherry">
/// </datalist>
/// ```
///
/// With number input:
/// ```html
/// <input type="number" list="quantities">
/// <datalist id="quantities">
///   <option value="10">
///   <option value="25">
///   <option value="50">
///   <option value="100">
/// </datalist>
/// ```
///
/// With color input:
/// ```html
/// <input type="color" list="colors">
/// <datalist id="colors">
///   <option value="#ff0000">
///   <option value="#00ff00">
///   <option value="#0000ff">
/// </datalist>
/// ```
@dynamicMemberLookup
public struct List: HTMLStringAttribute {
  /// The name of the HTML attribute
  @inlinable public static var attribute: String { "list" }

  /// The attribute value
  public let rawValue: String

  /// Initialize with a value for the list attribute
  public init(value: String) {
    self.rawValue = value
  }
}
