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

/// An attribute that specifies the increment granularity for numeric or date/time inputs.
///
/// The `step` attribute defines how much the value will change when the user uses
/// up/down controls, sliders, or keyboard modifiers to adjust the input. It also
/// affects value validation by determining which values are valid increments
/// from the minimum value.
///
/// ## Usage Notes
///
/// - Valid on numeric `<input>` types: number, range
/// - Valid on date/time `<input>` types: date, month, week, time, datetime-local
/// - Value must be a positive number (integer or float) or the keyword "any"
/// - Affects both the stepping behavior when interacting with controls and value validation
/// - Step increments are calculated from the min value (or 0 if no min is specified)
///
/// ## Default Step Values by Input Type
///
/// | Input Type       | Default Step | Unit         | Example       |
/// |------------------|--------------|--------------|---------------|
/// | number, range    | 1            | number       | 1, 2, 3...    |
/// | date             | 1            | day          | 2023-01-01    |
/// | month            | 1            | month        | 2023-01       |
/// | week             | 1            | week         | 2023-W01      |
/// | time             | 60           | seconds      | 00:01:00      |
/// | datetime-local   | 60           | seconds      | 2023-01-01T00:01:00 |
///
/// ## Special Values
///
/// - `any`: Indicates no stepping is implied, and any value that meets other validation
///   constraints (like min/max) is acceptable
///
/// ## Validation
///
/// When a value doesn't match a valid step increment, the form control will:
/// - Match the `:invalid` and `:out-of-range` CSS pseudo-classes
/// - Have `validityState.stepMismatch` set to true
///
/// ## Examples
///
/// Number input with step value of 0.1:
/// ```html
/// <input type="number" min="0" step="0.1" max="10">
/// ```
///
/// Date input with step of 7 days:
/// ```html
/// <input type="date" step="7">
/// ```
///
/// Input allowing any valid value:
/// ```html
/// <input type="number" step="any">
/// ```
// public struct Step: Attribute {
//    /// The name of the HTML attribute
//    @inlinable public static var attribute: String { "step" }
//
//    /// The step value as a string
//    public var value: String
//
//    /// Initialize with a step value
//    public init(_ value: String) {
//        self.value = value
//    }
//
//    /// Initialize with a numeric step value
//    public init<T: Numeric & CustomStringConvertible>(_ value: T) {
//        self.value = value.description
//    }
//
//    /// Initialize with a special step value
//    public init(special: SpecialValue) {
//        self.value = special.rawValue
//    }
//
//    /// Special values for the step attribute
//    public enum SpecialValue: String {
//        /// Any valid value is acceptable, no stepping is implied
//        case any
//    }
//
//    /// Common step values for different input types
//
//    /// Step of 1 (integer values only, default for number/range)
//    public static let integer = Step(1)
//
//    /// Step of 0.1 (tenth precision)
//    public static let tenth = Step(0.1)
//
//    /// Step of 0.01 (hundredth precision)
//    public static let hundredth = Step(0.01)
//
//    /// Step of 0.001 (thousandth precision)
//    public static let thousandth = Step(0.001)
//
//    /// Step of 7 days (weekly)
//    public static let weekly = Step(7)
//
//    /// Step for money values (cents precision)
//    public static let money = Step(0.01)
//
//    /// Any valid value (no stepping)
//    public static let any = Step(special: .any)
// }

/// An attribute that specifies the increment granularity for numeric or date/time inputs.
///
/// The `step` attribute defines how much the value will change when the user uses
/// up/down controls, sliders, or keyboard modifiers to adjust the input. It also
/// affects value validation by determining which values are valid increments
/// from the minimum value.
///
/// ## Usage Notes
///
/// - Valid on numeric `<input>` types: number, range
/// - Valid on date/time `<input>` types: date, month, week, time, datetime-local
/// - Value must be a positive number (integer or float) or the keyword "any"
/// - Affects both the stepping behavior when interacting with controls and value validation
/// - Step increments are calculated from the min value (or 0 if no min is specified)
///
/// ## Examples
///
/// Number input with step value of 0.1:
/// ```html
/// <input type="number" min="0" step="0.1" max="10">
/// ```
///
/// Date input with step of 7 days:
/// ```html
/// <input type="date" step="7">
/// ```
///
/// Input allowing any valid value:
/// ```html
/// <input type="number" step="any">
/// ```
@dynamicMemberLookup
public enum Step: HTMLStringAttribute, ExpressibleByFloatLiteral, ExpressibleByIntegerLiteral {
  @inlinable public static var attribute: String { "step" }

  /// A specific numeric step value.
  case value(Double)

  /// No stepping is implied, and any value is allowed in the specified range.
  case any

  public var rawValue: String {
    description
  }

  public init(value: String) {
    if value == "any" {
      self = .any
    } else if let doubleValue = Double(value) {
      self = .value(doubleValue)
    } else {
      // Default to "any" if the value is not valid
      self = .any
    }
  }

  public init(floatLiteral value: Double) {
    self = .value(value)
  }

  public init(integerLiteral value: IntegerLiteralType) {
    self = .value(Double(value))
  }

  public var description: String {
    switch self {
    case .value(let value):
      return value.description
    case .any:
      return "any"
    }
  }

  /// Step of 1 (integer values only, default for number/range)
  public static let integer: Self = 1

  /// Step of 0.1 (tenth precision)
  public static let tenth: Self = 0.1

  /// Step of 0.01 (hundredth precision)
  public static let hundredth: Self = 0.01

  /// Step of 0.001 (thousandth precision)
  public static let thousandth: Self = 0.001

  /// Step for money values (cents precision)
  public static let money: Self = 0.01

  /// Step of 7 days (weekly)
  public static let weekly: Self = 7
}
