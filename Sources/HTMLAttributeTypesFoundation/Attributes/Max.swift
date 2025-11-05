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

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
    import Foundation

    extension Max {
        /// Initialize with a date (Foundation only)
        public init(date: Date, format: DateFormat = .fullDate) {
            let formatter: DateFormatter

            switch format {
            case .fullDate:
                formatter = DateFormatter()
                formatter.dateFormat = "yyyy-MM-dd"
            case .month:
                formatter = DateFormatter()
                formatter.dateFormat = "yyyy-MM"
            case .week:
                // Week format requires custom handling for ISO week number
                let calendar = Calendar(identifier: .iso8601)
                let components = calendar.dateComponents(
                    [.yearForWeekOfYear, .weekOfYear],
                    from: date
                )
                if let year = components.yearForWeekOfYear, let week = components.weekOfYear {
                    self = .init(String.format(year: year, week: week))
                    return
                } else {
                    formatter = DateFormatter()
                    formatter.dateFormat = "yyyy-'W'ww"
                }
            case .time:
                formatter = DateFormatter()
                formatter.dateFormat = "HH:mm"
            case .dateTimeLocal:
                formatter = DateFormatter()
                formatter.dateFormat = "yyyy-MM-dd'T'HH:mm"
            }

            self = .init(formatter.string(from: date))
        }
    }
#endif

extension Max {
    /// Create a max value for a date input
    public static func date(_ year: Int, month: Int, day: Int) -> Max {
        return Max(String.format(year: year, month: month, day: day))
    }

    /// Create a max value for a month input
    public static func month(_ year: Int, month: Int) -> Max {
        return Max(String.format(year: year, month: month))
    }

    /// Create a max value for a week input
    public static func week(_ year: Int, week: Int) -> Max {
        return Max(String.format(year: year, week: week))
    }

    /// Create a max value for a time input
    public static func time(_ hour: Int, minute: Int) -> Max {
        return Max(String.format(hour: hour, minute: minute))
    }

    /// Create a max value for a datetime-local input
    public static func dateTimeLocal(
        _ year: Int,
        month: Int,
        day: Int,
        hour: Int,
        minute: Int
    ) -> Max {
        return Max(String.format(year: year, month: month, day: day, hour: hour, minute: minute))
    }
}
