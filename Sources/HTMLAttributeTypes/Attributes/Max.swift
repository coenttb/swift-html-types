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

/// An attribute that specifies the maximum value allowed for an input element or other form controls.
///
/// The `max` attribute defines the maximum value acceptable for the element. Values greater than
/// this maximum will cause the element to fail constraint validation. The format of the max value
/// depends on the element type.
///
/// ## Usage Notes
///
/// - Valid on numeric `<input>` types (number, range), date/time types (date, month, week, time, datetime-local),
///   and the `<progress>` and `<meter>` elements
/// - Must be greater than or equal to the `min` attribute if both are specified
/// - For `<progress>` and `<meter>`, defaults to 1 if omitted
/// - Elements with values exceeding the max will match the `:out-of-range` and `:invalid` CSS pseudo-classes
///
/// ## Value Format by Element Type
///
/// | Element Type       | Format          | Example               |
/// |-------------------|-----------------|------------------------|
/// | input[type=date]  | yyyy-mm-dd      | 2025-12-31            |
/// | input[type=month] | yyyy-mm         | 2025-12               |
/// | input[type=week]  | yyyy-W##        | 2025-W52              |
/// | input[type=time]  | HH:mm           | 23:59                 |
/// | input[type=datetime-local] | yyyy-mm-ddTHH:mm | 2025-12-31T23:59 |
/// | input[type=number] | numeric         | 100                   |
/// | input[type=range] | numeric         | 100                   |
/// | progress          | numeric         | 100                   |
/// | meter             | numeric         | 100                   |
///
/// ## Accessibility Considerations
///
/// When using the `max` attribute, ensure users understand the maximum requirements:
/// - Provide clear instructions, preferably within the `<label>` element
/// - For instructions outside labels, consider using `aria-labelledby` or `aria-describedby`
/// - Ensure error messages for out-of-range values are clear and descriptive
///
/// ## Examples
///
/// Numeric input with max value:
/// ```html
/// <input type="number" max="100" min="0">
/// ```
///
/// Date input with max value:
/// ```html
/// <input type="date" max="2025-12-31">
/// ```
///
/// Progress bar with max value:
/// ```html
/// <progress max="100" value="75">75%</progress>
/// ```
@dynamicMemberLookup
public struct Max: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "max" }

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the max attribute
    public init(value: String) {
        self.rawValue = value
    }
}

extension Max {
    /// Date format types for the max attribute
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
}

extension Max: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) {
        self.rawValue = String(value)
    }
}

extension Max: ExpressibleByFloatLiteral {
    public init(floatLiteral value: FloatLiteralType) {
        self.rawValue = String(value)
    }
}
