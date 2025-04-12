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

public protocol StringAttribute: Attribute, ExpressibleByStringLiteral, RawRepresentable {
    var rawValue: String { get }
    
    init(value: String)
}

extension StringAttribute {
    public init?(rawValue value: String) {
        self = .init(value: value)
    }
}

extension StringAttribute {
    public init(_ value: String) {
        self = .init(value: value)
    }
}

extension StringAttribute {
    public init(stringLiteral value: String) {
        self = .init(value: value)
    }
}

extension StringAttribute  {
    public var description: String {
        rawValue
    }
}

extension StringAttribute {
    subscript<T>(dynamicMember keyPath: KeyPath<String, T>) -> T {
        self.rawValue[keyPath: keyPath]
    }
}
