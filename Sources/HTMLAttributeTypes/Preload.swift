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


/// Represents the preload attribute values for the video element.
public struct Preload: StringAttribute, CustomStringConvertible {
    /// The name of the HTML attribute
    public static let attribute: String = "preload"
    
    /// The attribute value
    public var rawValue: String
    
    /// Initialize with a value
    public init(value: String) {
        self.rawValue = value
    }
}

extension Preload {
    /// No preloading should occur
    public static let none: Self = "none"
    
    /// Only video metadata (e.g., dimensions, duration) should be loaded
    public static let metadata: Self = "metadata"
    
    /// The entire video can be downloaded
    public static let auto: Self = "auto"
}
