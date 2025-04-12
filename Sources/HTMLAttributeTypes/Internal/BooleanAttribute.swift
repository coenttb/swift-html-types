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

public protocol BooleanAttribute: Attribute, ExpressibleByBooleanLiteral, CaseIterable, RawRepresentable {
    var rawValue: Bool { get }
    
    init(value: Bool)
}

extension BooleanAttribute {
    public init?(rawValue value: Bool) {
        self = .init(value: value)
    }
}

extension BooleanAttribute {
    public init(booleanLiteral value: Bool) {
        self = .init(value: value)
    }
}

extension BooleanAttribute  {
    public var description: String {
        rawValue ? "true" : "false"
    }
}

extension BooleanAttribute {
    static public var allCases: [Self] { [true, false] }
}

extension BooleanAttribute {
    subscript<T>(dynamicMember keyPath: KeyPath<Bool, T>) -> T {
        self.rawValue[keyPath: keyPath]
    }
}
