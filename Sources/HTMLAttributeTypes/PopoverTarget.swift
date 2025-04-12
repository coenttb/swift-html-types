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


/// Specifies the ID of a popover element to be controlled by a button.
///
/// The `popovertarget` attribute turns a button element into a popover control button.
/// When specified, it creates an implicit accessibility relationship between the button
/// and popover, and enables convenient positioning using CSS anchor positioning.
///
/// ## Usage Notes
///
/// - Use this with the `popovertargetaction` attribute to control how the button interacts with the popover
/// - The value should be the ID of the popover element to control
///
/// ## Example
///
/// ```html
/// <button popovertarget="my-popover">Toggle Popover</button>
/// <div id="my-popover" popover>Popover content</div>
/// ```
public struct PopoverTarget: StringAttribute, CustomStringConvertible {
    /// The name of the HTML attribute
    public static let attribute: String = "popovertarget"
    
    /// The ID of the popover element to control
    public var rawValue: String
    
    /// Initialize with a popover element ID
    public init(value: String) {
        self.rawValue = value
    }
}
