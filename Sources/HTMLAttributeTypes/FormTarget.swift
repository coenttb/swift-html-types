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


public struct FormTarget: StringAttribute {
    /// The name of the HTML attribute
    public static let attribute: String = "formtarget"
    
    /// The attribute value
    public let rawValue: String
    
    /// Initialize with a value for the formtarget attribute
    public init(value: String) {
        self.rawValue = value
    }
}

extension FormTarget {
    /// Opens the response in the current browsing context (default)
    public static let `self`: Self = "_self"
    
    /// Opens the response in a new browsing context (usually a new tab)
    public static let blank: Self = "_blank"
    
    /// Opens the response in the parent browsing context; if no parent exists, behaves as `self`
    public static let parent: Self = "_parent"
    
    /// Opens the response in the topmost browsing context; if no ancestors exist, behaves as `self`
    public static let top: Self = "_top"
    
    /// Allows embedded fenced frames to navigate the top-level frame
    public static let unfencedTop: Self = "_unfencedTop"
}
