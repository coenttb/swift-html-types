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

/// Designates an element as a popover element that appears above other page content.
///
/// The `popover` global attribute creates a popover element, which is initially hidden and appears
/// above other content in the top layer when activated. Popovers are part of the Popover API,
/// a standard way to create popup UI elements like dialogs, menus, and tooltips without needing
/// custom JavaScript implementations.
///
/// Popovers can be controlled in multiple ways:
/// - Using associated control elements with the `popovertarget` attribute
/// - Using JavaScript methods like `showPopover()`, `hidePopover()`, and `togglePopover()`
/// - Through "light dismiss" behaviors like clicking outside or pressing the Escape key
///
/// ## Popover Types
///
/// There are three types of popovers, each with different behaviors:
///
/// - **auto**: The default type. Can be "light dismissed" by clicking outside or pressing Escape.
///   Showing one auto popover will generally close other auto popovers unless they're nested.
///
/// - **manual**: Must be explicitly shown and hidden; cannot be light dismissed. Multiple manual
///   popovers can be shown simultaneously without affecting each other.
///
/// - **hint**: Do not close auto popovers when displayed, but will close other hint popovers.
///   Can be light dismissed and typically used for tooltips or contextual help.
///
/// ## Usage Notes
///
/// - Popovers appear in the top layer, above all other content
/// - They are not affected by parent elements' position or overflow styling
/// - Empty value (`popover=""`) or just `popover` is equivalent to `popover="auto"`
/// - Control elements use `popovertarget` to reference popover elements by ID
/// - Browser support for the Popover API began in 2023 and is still expanding
///
/// ## Examples
///
/// Basic auto popover with a button:
/// ```html
/// <button popovertarget="my-popover">Open Popover</button>
/// <div popover id="my-popover">Hello, I'm a popover!</div>
/// ```
///
/// Manual popover that must be explicitly controlled:
/// ```html
/// <button popovertarget="settings-popover">Settings</button>
/// <div popover="manual" id="settings-popover">
///   <h2>Settings</h2>
///   <form>
///     <!-- Settings form content -->
///     <button popovertarget="settings-popover" popovertargetaction="hide">Close</button>
///   </form>
/// </div>
/// ```
///
/// Hint popover for tooltip:
/// ```html
/// <button
///   id="help-button"
///   aria-describedby="help-popover"
///   onmouseover="document.getElementById('help-popover').showPopover()"
///   onmouseout="document.getElementById('help-popover').hidePopover()">
///   ?
/// </button>
/// <div popover="hint" id="help-popover">Click this button for help</div>
/// ```
@dynamicMemberLookup
public struct Popover: HTMLStringAttribute {

    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "popover" }

    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}

extension Popover {
    /// Auto popover that can be light dismissed and will close other auto popovers
    @inlinable public static var auto: Self { "auto" }

    /// Manual popover that cannot be light dismissed and won't close other popovers
    @inlinable public static var manual: Self { "manual" }

    /// Hint popover that can be light dismissed but won't close auto popovers
    @inlinable public static var hint: Self { "hint" }
}

extension Popover: CaseIterable {
    public static let allCases: [Popover] = [.auto, .manual, .hint]
}
