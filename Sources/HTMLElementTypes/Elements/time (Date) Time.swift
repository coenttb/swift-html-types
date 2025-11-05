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

/// Represents an HTML time element (`<time>`), which represents a specific period in time.
///
/// The `Time` element is used to encode dates and times in a machine-readable format. It can represent:
/// - A time on a 24-hour clock
/// - A precise date in the Gregorian calendar (with optional time and timezone information)
/// - A valid time duration
///
/// ## Example
///
/// ```swift
/// time(datetime: "2018-07-07") {
///     "July 7, 2018"
/// }
///
/// time(datetime: "20:00") {
///     "8:00 PM"
/// }
///
/// time(datetime: "PT2H30M") {
///     "2 hours and 30 minutes"
/// }
/// ```
///
/// ## Best Practices
///
/// - Use the `datetime` attribute to provide a machine-readable representation of the date or time
/// - Format the content to be human-readable while keeping the machine-readable format in the attribute
/// - This element should not be used for dates prior to the introduction of the Gregorian calendar
/// - If the element doesn't have a `datetime` attribute, the content must be in a valid datetime format
///
public struct Time: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "time" }

    /// The datetime attribute that provides a machine-readable format of the date and/or time
    public var datetime: HTMLAttributeTypes.DateTime?

    /// Creates a new Time element with the specified attributes.
    ///
    /// - Parameters:
    ///   - datetime: A machine-readable representation of the date or time, typically a human-readable date or time
    public init(
        datetime: HTMLAttributeTypes.DateTime? = nil
    ) {
        self.datetime = datetime

    }
}
