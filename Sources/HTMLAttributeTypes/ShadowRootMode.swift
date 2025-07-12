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


/// Specifies the mode for a shadow root created using declarative shadow DOM.
///
/// The `shadowrootmode` attribute is used with the `<template>` element to create
/// a declarative shadow DOM when set to either "open" or "closed". This determines
/// whether the shadow DOM is accessible from JavaScript outside the shadow tree.
///
/// ## Usage Notes
///
/// - Used with the `<template>` element for declarative shadow DOM
/// - Determines the encapsulation level of the shadow DOM
/// - Must be either "open" or "closed"
///
/// ## Examples
///
/// ```html
/// <!-- Open shadow DOM that can be accessed via JavaScript -->
/// <template shadowrootmode="open">
///   <style>p { color: red; }</style>
///   <p>Shadow DOM content</p>
/// </template>
///
/// <!-- Closed shadow DOM with stronger encapsulation -->
/// <template shadowrootmode="closed">
///   <style>p { color: blue; }</style>
///   <p>Private shadow DOM content</p>
/// </template>
/// ```
public struct ShadowRootMode: StringAttribute, CustomStringConvertible {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "shadowrootmode" }
    
    /// The shadow root mode value
    public var rawValue: String
    
    /// Initialize with a string value
    public init(value: String) {
        self.rawValue = value
    }
}

extension ShadowRootMode {
    /// Exposes the internal shadow root DOM for JavaScript access
    public static let open: Self = "open"
    
    /// Hides the internal shadow root DOM from JavaScript access
    public static let closed: Self = "closed"
}
