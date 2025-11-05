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

/// Controls virtual keyboard behavior for editable elements on touch devices.
///
/// The `virtualkeyboardpolicy` global attribute is an enumerated attribute that controls how the
/// on-screen virtual keyboard behaves when an editable element receives focus or is tapped on
/// devices without physical keyboards (like tablets and smartphones).
///
/// This attribute can be applied to any editable element, including `<input>`, `<textarea>`, and
/// elements with the `contenteditable` attribute.
///
/// ## Values
///
/// - **auto** (or empty string): The virtual keyboard automatically appears when the element
///   receives focus or is tapped. This is the default behavior.
///
/// - **manual**: Decouples the element's focus and tap events from the virtual keyboard's state.
///   The keyboard will not automatically appear, giving developers more control over keyboard
///   display through JavaScript.
///
/// ## Usage Notes
///
/// - This is an experimental technology with limited browser support
/// - Primarily useful for custom input experiences on touch devices
/// - When set to "manual", developers must programmatically show the keyboard
/// - Can help create custom inputs where keyboard appearance is controlled by specific user actions
/// - Only relevant on devices with virtual keyboards
///
/// ## Browser Support
///
/// As of 2024, support for this attribute is limited. Chrome and Chrome-based browsers (Edge, Opera)
/// have implemented it, but support in other browsers may be inconsistent. Always test thoroughly
/// across devices and provide fallbacks.
///
/// ## Examples
///
/// Automatic keyboard behavior (default):
/// ```html
/// <input type="text" virtualkeyboardpolicy="auto" placeholder="Keyboard appears on focus">
/// ```
///
/// Manual keyboard control:
/// ```html
/// <textarea virtualkeyboardpolicy="manual" placeholder="Keyboard won't appear automatically"></textarea>
/// ```
///
/// With contenteditable:
/// ```html
/// <div contenteditable="true" virtualkeyboardpolicy="manual">
///   Editable content without automatic keyboard.
/// </div>
/// ```
///
/// Usage with JavaScript to manually control the keyboard:
/// ```html
/// <input
///   id="custom-input"
///   type="text"
///   virtualkeyboardpolicy="manual"
///   placeholder="Click the button to show keyboard"
/// >
/// <button onclick="document.getElementById('custom-input').focus(); navigator.virtualKeyboard.show();">
///   Show Keyboard
/// </button>
/// ```
@dynamicMemberLookup
public struct Virtualkeyboardpolicy: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "virtualkeyboardpolicy" }

    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}

extension Virtualkeyboardpolicy {
    /// Automatically shows the virtual keyboard when element is focused or tapped
    @inlinable public static var auto: Self { "auto" }

    /// Decouples focus and tap on the element from the virtual keyboard's state
    @inlinable public static var manual: Self { "manual" }
}

extension Virtualkeyboardpolicy: CaseIterable {
    public static let allCases: [Virtualkeyboardpolicy] = [.auto, .manual]
}
