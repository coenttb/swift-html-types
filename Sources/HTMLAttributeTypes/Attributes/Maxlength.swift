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

/// An attribute that specifies the maximum number of characters allowed in a text input.
///
/// The `maxlength` attribute defines the maximum number of characters (technically UTF-16 code units)
/// that a user can enter into an `<input>` or `<textarea>` element. When this limit is reached,
/// the browser prevents the user from entering additional characters.
///
/// ## Usage Notes
///
/// - Valid on `<input>` (with text-based types) and `<textarea>` elements
/// - Value must be a non-negative integer (0 or greater)
/// - Measured in UTF-16 code units (equivalent to character count for most scripts)
/// - If specified, must be greater than or equal to `minlength` (if present)
/// - Browser prevents entry of more characters when limit is reached
/// - Does not truncate initial values that exceed the limit
///
/// ## Validation
///
/// If the text value exceeds the maxlength:
/// - The field will fail constraint validation
/// - The `ValidityState.tooLong` property will be `true`
/// - The element will match the `:invalid` CSS pseudo-class
///
/// Note that validation only occurs when the value is changed by the user, not programmatically.
///
/// ## Examples
///
/// Limit a text input to 20 characters:
/// ```html
/// <input type="text" maxlength="20">
/// ```
///
/// Set both minimum and maximum length for a textarea:
/// ```html
/// <textarea minlength="10" maxlength="100"></textarea>
/// ```
///
/// Limit a password field to 12 characters:
/// ```html
/// <input type="password" maxlength="12">
/// ```
public struct Maxlength: HTMLAttribute {
  /// The name of the HTML attribute
  @inlinable public static var attribute: String { "maxlength" }

  /// The maximum length value
  public var value: Int

  /// Initialize with a maximum length value
  public init(_ value: Int) {
    // Ensure value is non-negative
    self.value = max(0, value)
  }
}

extension Maxlength {
  /// Create a maxlength attribute with the given number of characters
  public static func characters(_ count: Int) -> Maxlength {
    return Maxlength(count)
  }
}

extension Maxlength: ExpressibleByIntegerLiteral {
  public init(integerLiteral value: IntegerLiteralType) {
    self.value = max(0, value)
  }
}

extension Maxlength: CustomStringConvertible {
  /// Returns the string representation of the maxlength value
  public var description: String {
    return String(self.value)
  }
}
