//===----------------------------------------------------------------------===//
//
// Copyright (c) 2025 Coen ten Thije Boonkkamp
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of project contributors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import HTMLAttributeTypes
import Foundation

extension Max {
    /// Initialize with a date
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
            let components = calendar.dateComponents([.yearForWeekOfYear, .weekOfYear], from: date)
            if let year = components.yearForWeekOfYear, let week = components.weekOfYear {
                self = .init(String(format: "%04d-W%02d", year, week))
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

    /// Create a max value for a date input
    public static func date(_ year: Int, month: Int, day: Int) -> Max {
        return Max(String(format: "%04d-%02d-%02d", year, month, day))
    }

    /// Create a max value for a month input
    public static func month(_ year: Int, month: Int) -> Max {
        return Max(String(format: "%04d-%02d", year, month))
    }

    /// Create a max value for a week input
    public static func week(_ year: Int, week: Int) -> Max {
        return Max(String(format: "%04d-W%02d", year, week))
    }

    /// Create a max value for a time input
    public static func time(_ hour: Int, minute: Int) -> Max {
        return Max(String(format: "%02d:%02d", hour, minute))
    }

    /// Create a max value for a datetime-local input
    public static func dateTimeLocal(_ year: Int, month: Int, day: Int, hour: Int, minute: Int) -> Max {
        return Max(String(format: "%04d-%02d-%02dT%02d:%02d", year, month, day, hour, minute))
    }
}
