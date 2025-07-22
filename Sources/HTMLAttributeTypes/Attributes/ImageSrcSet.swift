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

@dynamicMemberLookup
public struct ImageSrcSet: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "imagesrcset" }

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the imagesrcset attribute
    public init(value: String) {
        self.rawValue = value
    }
}
