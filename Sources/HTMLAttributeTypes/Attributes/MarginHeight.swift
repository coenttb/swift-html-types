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

/// Represents the marginheight attribute for frame elements.
@dynamicMemberLookup
public struct MarginHeight: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "marginheight" }

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the marginheight attribute
    public init(value: String) {
        self.rawValue = value
    }
}

extension MarginHeight: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) {
        self.rawValue = String(value)
    }
}
