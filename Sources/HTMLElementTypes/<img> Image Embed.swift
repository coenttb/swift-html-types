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

import HTMLAttributeTypes

public struct Image: Element {
    public static var tag: String { "image" }
    
    public var src: Src?
    public var alt: Alt?
    public var loading: Loading?
    
    public init(
        src: Src? = nil,
        alt: Alt? = nil,
        loading: Loading? = nil
    ) {
        self.src = src
        self.alt = alt
        self.loading = loading
    }
}

public typealias img = Image
