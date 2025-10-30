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

/// A class of global attributes (data-*) that allows storing custom data private to the page or application.
///
/// The `data-*` attributes provide a way to store custom data attributes on HTML elements.
/// These attributes are not intended to be visible to users, but are available to JavaScript
/// via the `HTMLElement.dataset` property, making it easy to store and access custom data on
/// standard HTML elements without using non-standard attributes or extra properties on DOM.
///
/// ## Usage Notes
///
/// - Can be applied to any HTML element
/// - The attribute name must start with `data-`
/// - The part after `data-` should follow these recommendations:
///   - Should not start with "xml" (case-insensitive)
///   - Should not contain colon characters (`:`)
///   - Should use lowercase letters and hyphens (kebab-case)
/// - In JavaScript, the attributes are accessible via `element.dataset` property:
///   - Hyphens are removed and the name is converted to camelCase
///   - `data-user-id` becomes `element.dataset.userId`
///
/// ## Examples
///
/// Basic usage:
/// ```html
/// <article data-author="John Doe" data-columns="3" data-index-number="12314">
///   <h1>Article Title</h1>
///   <p>Article content...</p>
/// </article>
/// ```
///
/// Used with JavaScript:
/// ```javascript
/// const article = document.querySelector('article');
/// article.dataset.author      // "John Doe"
/// article.dataset.columns     // "3"
/// article.dataset.indexNumber // "12314"
/// ```
///
/// In a game context:
/// ```html
/// <img class="spaceship"
///      src="ship.png"
///      data-ship-id="324"
///      data-shields="72%"
///      data-x="414354"
///      data-y="85160" />
/// ```
public struct DataAttribute: HTMLAttribute {
  /// The name of the HTML attribute
  @inlinable public static var attribute: String { "data" }
  @inlinable public static var prefix: String { "data-" }

  /// The data attribute name (without the "data-" prefix)
  public var name: String

  /// The value of the data attribute
  public var value: String

  /// Initialize with a name and value
  public init(name: String, value: String) {
    self.name = name
    self.value = value
  }

  /// Initialize with a name and value
  public init(name: some CustomStringConvertible, value: some CustomStringConvertible) {
    self.name = name.description
    self.value = value.description
  }

  /// The full attribute name including the "data-" prefix
  public var attributeName: String {
    return "\(Self.prefix)\(name)"
  }
}

extension DataAttribute: CustomStringConvertible {
  /// Returns the value of the data attribute
  public var description: String {
    return self.value
  }
}
