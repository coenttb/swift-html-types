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

/// The `shadowrootdelegatesfocus` attribute determines whether a shadow root's focus delegation
/// behavior is enabled, improving accessibility in Web Components.
///
/// When this attribute is set, it enables the "delegates focus" feature for a shadow root, which
/// ensures that focus events properly propagate up to parent elements and that methods like
/// element.focus() work correctly with elements inside a shadow DOM.
///
/// ## Usage Notes
///
/// - Used with the `<template>` element for declarative shadow DOM
/// - Helps ensure that focus behaves properly in Web Components
/// - Critical for accessibility with complex shadow DOM structures
///
/// ## Examples
///
/// ```html
/// <template shadowroot="open" shadowrootdelegatesfocus>
///   <input type="text">
/// </template>
/// ```
@dynamicMemberLookup
public struct ShadowRootDelegatesFocus: HTMLBooleanAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "shadowrootdelegatesfocus" }

    /// The attribute value
    public var rawValue: Bool

    /// Initialize with a boolean value (defaults to true)
    public init(value: Bool = true) {
        self.rawValue = value
    }
}
