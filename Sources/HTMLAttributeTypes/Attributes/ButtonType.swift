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

/// Button types that define how a button behaves
@dynamicMemberLookup
public struct ButtonType: HTMLStringAttribute {

    @inlinable public static var attribute: String { "type" }

    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}

extension ButtonType {
    /// Submits the form data (default behavior)
    @inlinable public static var submit: Self { "submit" }

    /// Resets the form data to its initial values
    @inlinable public static var reset: Self { "reset" }

    /// No default behavior, typically used with JavaScript
    @inlinable public static var button: Self { "button" }
}
