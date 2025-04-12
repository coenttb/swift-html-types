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


/// Specifies the action to be performed on a popover element being controlled by a button.
///
/// The `popovertargetaction` attribute defines how a button interacts with its target popover.
/// When omitted, the default action is `toggle`.
///
/// ## Usage Notes
///
/// - Must be used with the `popovertarget` attribute
/// - Determines whether the button shows, hides, or toggles the popover
///
/// ## Example
///
/// ```html
/// <button popovertarget="my-popover" popovertargetaction="show">Show Popover</button>
/// <button popovertarget="my-popover" popovertargetaction="hide">Hide Popover</button>
/// <div id="my-popover" popover>Popover content</div>
/// ```
public struct PopoverTargetAction: StringAttribute, CustomStringConvertible {
    /// The name of the HTML attribute
    public static let attribute: String = "popovertargetaction"
    
    /// The action to perform on the popover
    public var rawValue: String
    
    /// Initialize with a popover action
    public init(value: String) {
        self.rawValue = value
    }
}


extension PopoverTargetAction {
    public static let show: Self = "show"
    public static let hide: Self = "hide"
    public static let toggle: Self = "toggle"
}
