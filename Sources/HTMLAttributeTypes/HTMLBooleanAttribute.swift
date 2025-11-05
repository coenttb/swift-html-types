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

public protocol HTMLBooleanAttribute: HTMLAttribute, CustomStringConvertible,
    ExpressibleByBooleanLiteral, CaseIterable, RawRepresentable
{
    var rawValue: Bool { get }

    init(value: Bool)
}

extension HTMLBooleanAttribute {
    public init?(rawValue value: Bool) {
        self = .init(value: value)
    }
}

extension HTMLBooleanAttribute {
    public init(booleanLiteral value: Bool) {
        self = .init(value: value)
    }
}

extension HTMLBooleanAttribute {
    public var description: String {
        rawValue ? "true" : "false"
    }
}

extension HTMLBooleanAttribute {
    @inlinable public static var allCases: [Self] { [true, false] }
}

extension HTMLBooleanAttribute {
    public subscript<T>(dynamicMember keyPath: KeyPath<Bool, T>) -> T {
        self.rawValue[keyPath: keyPath]
    }
}
