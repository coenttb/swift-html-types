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

/// Represents the frameborder attribute for frame elements.
@dynamicMemberLookup
public struct FrameBorder: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "frameborder" }

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the frameborder attribute
    public init(value: String) {
        self.rawValue = value
    }
}

extension FrameBorder: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) {
        self.rawValue = String(value)
    }
}
