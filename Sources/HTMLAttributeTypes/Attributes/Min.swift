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

/// An attribute that specifies the minimum value allowed for an input element or other form controls.
///
/// The `min` attribute defines the minimum value acceptable for the element. Values less than
/// this minimum will cause the element to fail constraint validation. The format of the min value
/// depends on the element type.
///
/// ## Usage Notes
///
/// - Valid on numeric `<input>` types (number, range), date/time types (date, month, week, time, datetime-local),
///   and the `<meter>` element
/// - Must be less than or equal to the `max` attribute if both are specified
/// - For `<meter>`, defaults to 0 if omitted
/// - Elements with values below the min will match the `:out-of-range` and `:invalid` CSS pseudo-classes
/// - Affects the valid step values (which are calculated relative to the min value)
///
/// ## Value Format by Element Type
///
/// | Element Type       | Format          | Example               |
/// |-------------------|-----------------|------------------------|
/// | input[type=date]  | yyyy-mm-dd      | 2023-01-01            |
/// | input[type=month] | yyyy-mm         | 2023-01               |
/// | input[type=week]  | yyyy-W##        | 2023-W01              |
/// | input[type=time]  | HH:mm           | 09:00                 |
/// | input[type=datetime-local] | yyyy-mm-ddTHH:mm | 2023-01-01T09:00 |
/// | input[type=number] | numeric         | 0                     |
/// | input[type=range] | numeric         | 0                     |
/// | meter             | numeric         | 0                     |
///
/// ## Step Considerations
///
/// The `min` value serves as the base value for step calculations. Valid values are those that can be
/// reached from the min value by adding or subtracting multiples of the step value. For example:
/// - With `min="7.2"` and default `step="1"`, valid values are 7.2, 8.2, 9.2, etc.
/// - With `min="2"` and `step="2"`, valid values are 2, 4, 6, 8, etc.
///
/// ## Accessibility Considerations
///
/// When using the `min` attribute, ensure users understand the minimum requirements:
/// - Provide clear instructions, preferably within the `<label>` element
/// - For instructions outside labels, consider using `aria-labelledby` or `aria-describedby`
/// - Ensure error messages for out-of-range values are clear and descriptive
///
/// ## Examples
///
/// Numeric input with min value:
/// ```html
/// <input type="number" min="0" max="100">
/// ```
///
/// Date input with min value:
/// ```html
/// <input type="date" min="2023-01-01">
/// ```
///
/// Range input with min and step values:
/// ```html
/// <input type="range" min="0" step="5" max="100">
/// ```
@dynamicMemberLookup
public struct Min: HTMLStringAttribute {
  /// The name of the HTML attribute
  @inlinable public static var attribute: String { "min" }

  /// The attribute value
  public let rawValue: String

  /// Initialize with a value for the min attribute
  public init(value: String) {
    self.rawValue = value
  }
}

extension Min {
  /// Date format types for the min attribute
  public enum DateFormat {
    /// Full date (yyyy-MM-dd)
    case fullDate

    /// Month only (yyyy-MM)
    case month

    /// Week (yyyy-Www)
    case week

    /// Time (HH:mm)
    case time

    /// Local date and time (yyyy-MM-ddTHH:mm)
    case dateTimeLocal
  }

  /// Zero value for numeric inputs
  public static let zero = Min(0)
}

extension Min: ExpressibleByIntegerLiteral {
  public init(integerLiteral value: IntegerLiteralType) {
    self.rawValue = String(value)
  }
}

extension Min: ExpressibleByFloatLiteral {
  public init(floatLiteral value: FloatLiteralType) {
    self.rawValue = String(value)
  }
}
