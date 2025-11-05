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

public protocol HTMLElement: Sendable, Hashable {
    static var tag: String { get }
}

extension HTMLElement {
    @inlinable public static var isVoid: Bool {
        Self.self is HTMLVoidElement.Type
    }
}

public protocol HTMLVoidElement {}

extension Area: HTMLVoidElement {}
extension Base: HTMLVoidElement {}
extension BR: HTMLVoidElement {}
extension TableColumn: HTMLVoidElement {}
extension Embed: HTMLVoidElement {}
extension ThematicBreak: HTMLVoidElement {}
extension Image: HTMLVoidElement {}
extension Input: HTMLVoidElement {}
extension Link: HTMLVoidElement {}
extension Meta: HTMLVoidElement {}
extension Param: HTMLVoidElement {}
extension Source: HTMLVoidElement {}
extension Track: HTMLVoidElement {}
extension LineBreakOpportunity: HTMLVoidElement {}
