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


public struct Content: StringAttribute {
    /// The name of the HTML attribute
    public static let attribute: String = "content"
    
    /// The field name that will contain the directionality information
    public let rawValue: String
    
    public init(value: String) {
        self.rawValue = value
    }
}

