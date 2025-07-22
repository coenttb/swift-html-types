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

/// Represents the HTML `datetime` attribute used with the `<time>` element.
///
/// The `datetime` attribute provides a machine-readable format for dates and times.
/// It can represent various time formats including:
///
/// - Year (YYYY)
/// - Year-month (YYYY-MM)
/// - Date (YYYY-MM-DD)
/// - Time (HH:MM, HH:MM:SS)
/// - Local date and time (YYYY-MM-DDTHH:MM)
/// - Time zone offsets (Z, +HHMM, -HH:MM)
/// - Durations (PNNT...)
///
/// ## Examples
///
/// ```html
/// <time datetime="2018-07-07">July 7</time>
/// <time datetime="20:00">8:00 PM</time>
/// <time datetime="PT2H30M">2h 30m</time>
/// ```
@dynamicMemberLookup
public struct DateTime: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "datetime" }

    /// The attribute value
    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}
