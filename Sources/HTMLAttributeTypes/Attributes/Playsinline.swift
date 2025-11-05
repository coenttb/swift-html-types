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

/// Represents the playsinline attribute for the video element.
@dynamicMemberLookup
public struct Playsinline: HTMLBooleanAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "playsinline" }

    public var rawValue: Bool

    public init(value: Bool = true) {
        self.rawValue = value
    }
}
