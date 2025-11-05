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

/// Represents the label attribute used in HTML elements like <optgroup>, <option>, and <track>.
@dynamicMemberLookup
public struct Label: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "label" }

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the label attribute
    public init(value: String) {
        self.rawValue = value
    }
}
