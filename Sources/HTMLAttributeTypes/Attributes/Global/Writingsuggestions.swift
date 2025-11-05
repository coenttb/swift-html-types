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

/// Controls browser-provided writing suggestions in editable elements.
///
/// The `writingsuggestions` global attribute is an enumerated attribute that controls whether
/// browser-provided writing suggestions are enabled for an element. These suggestions typically
/// appear as greyed-out text after the cursor that completes the user's sentence or word
/// as they type in editable fields.
///
/// While writing suggestions can be helpful to users, developers might want to disable them
/// in certain scenarios, such as when implementing custom autocomplete features or when
/// the suggestions might interfere with specialized input fields.
///
/// ## Usage Notes
///
/// - Can be applied to editable elements like `<input>` and `<textarea>`
/// - Can also be applied to container elements to control suggestions for all editable elements within
/// - Writing suggestions are enabled by default in supporting browsers
/// - This attribute has limited browser support (primarily Safari as of 2024)
/// - Use this attribute when browser suggestions might conflict with custom suggestions
///
/// ## Values
///
/// - **true** (or empty attribute): Enables browser-provided writing suggestions
/// - **false**: Disables browser-provided writing suggestions
///
/// ## Examples
///
/// Disabling writing suggestions on an input:
/// ```html
/// <input type="text" writingsuggestions="false" placeholder="No browser suggestions here">
/// ```
///
/// Enabling writing suggestions explicitly:
/// ```html
/// <textarea writingsuggestions="true">Browser suggestions are enabled</textarea>
/// ```
///
/// Applied to a form section:
/// ```html
/// <form writingsuggestions="false">
///   <input type="text" name="code" placeholder="Enter code">
///   <textarea name="technical-details">Technical details here</textarea>
/// </form>
/// ```
///
/// Mixed usage on a page:
/// ```html
/// <div>
///   <input type="text" placeholder="Default suggestions enabled">
///   <input type="text" writingsuggestions="false" placeholder="Suggestions disabled">
/// </div>
/// ```
@dynamicMemberLookup
public struct Writingsuggestions: HTMLStringAttribute {

    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "writingsuggestions" }

    /// The URL for form submission
    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}

extension Writingsuggestions {
    /// Enables browser-provided writing suggestions
    @inlinable public static var `true`: Self { "true" }

    /// Disables browser-provided writing suggestions
    @inlinable public static var `false`: Self { "false" }
}

extension Writingsuggestions: CaseIterable {
    public static let allCases: [Writingsuggestions] = [.true, .false]
}
