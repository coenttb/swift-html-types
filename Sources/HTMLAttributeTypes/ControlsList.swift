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


/// Represents the controlslist attribute for the video element.
public struct ControlsList: StringAttribute {
    /// The name of the HTML attribute
    public static let attribute: String = "controlslist"
    
    /// The attribute value
    public let rawValue: String
    
    public init(value: String) {
        self.rawValue = value
    }
}

extension ControlsList {
    /// Hides the download control
    public static let nodownload: Self = "nodownload"
    
    /// Hides the fullscreen control
    public static let nofullscreen: Self = "nofullscreen"
    
    /// Hides the remote playback control
    public static let noremoteplayback: Self = "noremoteplayback"
    
    /// Combines multiple controlslist values
    public static func combine(_ values: [ControlsList]) -> Self {
        return Self(values.map(\.rawValue).joined(separator: " "))
    }
}
