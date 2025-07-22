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

/// Represents the preload attribute values for the video element.
@dynamicMemberLookup
public struct Preload: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "preload" }

    /// The attribute value
    public var rawValue: String

    /// Initialize with a value
    public init(value: String) {
        self.rawValue = value
    }
}

extension Preload {
    /// No preloading should occur
    @inlinable public static var none: Self { "none" }

    /// Only video metadata (e.g., dimensions, duration) should be loaded
    @inlinable public static var metadata: Self { "metadata" }

    /// The entire video can be downloaded
    @inlinable public static var auto: Self { "auto" }
}
