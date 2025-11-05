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

/// Defines what action label or icon to present for the Enter key on virtual keyboards.
///
/// The `enterkeyhint` global attribute is an enumerated attribute that specifies what action
/// label (or icon) to present for the Enter key on virtual keyboards. This attribute is particularly
/// useful for improving user experience on mobile devices by providing context-specific labeling
/// for the Enter key.
///
/// ## Usage Notes
///
/// - Primarily used with form controls (like `<input>` or `<textarea>`) or elements with `contenteditable`
/// - Helps users understand what action will be performed when pressing Enter
/// - Often used in conjunction with `inputmode` for a more tailored mobile input experience
/// - If not specified, the browser may use contextual information from `inputmode`, `type`, or
///   `pattern` attributes to choose an appropriate Enter key label
///
/// ## Examples
///
/// Basic usage:
/// ```html
/// <!-- Search field with search-oriented Enter key -->
/// <input type="text" enterkeyhint="search" placeholder="Search..." />
///
/// <!-- Text field that advances to next field on Enter -->
/// <input type="text" enterkeyhint="next" />
///
/// <!-- Message input that sends on Enter -->
/// <textarea enterkeyhint="send" placeholder="Type a message..."></textarea>
///
/// <!-- Editable content with go action -->
/// <p contenteditable enterkeyhint="go">https://example.org</p>
/// ```
@dynamicMemberLookup
public struct Enterkeyhint: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "enterkeyhint" }

    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}

extension Enterkeyhint {
    /// Indicates that Enter will insert a new line
    ///
    /// Example labels in different browsers/languages: "return", "↵"
    ///
    /// Example:
    /// ```html
    /// <textarea enterkeyhint="enter"></textarea>
    /// ```
    @inlinable public static var enter: Self { "enter" }

    /// Indicates that Enter will complete the input task
    ///
    /// Typically signals that there is nothing more to input and the input method
    /// editor (IME) will be closed.
    ///
    /// Example labels in different browsers/languages: "done", "✅"
    ///
    /// Example:
    /// ```html
    /// <input type="text" enterkeyhint="done" />
    /// ```
    @inlinable public static var done: Self { "done" }

    /// Indicates that Enter will take the user to the target of the entered text
    ///
    /// Typically used for URLs or navigation actions.
    ///
    /// Example labels in different browsers/languages: "go", "🡢"
    ///
    /// Example:
    /// ```html
    /// <input type="url" enterkeyhint="go" />
    /// ```
    @inlinable public static var go: Self { "go" }

    /// Indicates that Enter will move focus to the next input field
    ///
    /// Useful in multi-field forms to help users progress through the form.
    ///
    /// Example labels in different browsers/languages: "next", "⇥"
    ///
    /// Example:
    /// ```html
    /// <input type="text" enterkeyhint="next" />
    /// ```
    @inlinable public static var next: Self { "next" }

    /// Indicates that Enter will move focus to the previous input field
    ///
    /// Useful for backward navigation in forms.
    ///
    /// Example labels in different browsers/languages: "previous", "⇤"
    ///
    /// Example:
    /// ```html
    /// <input type="text" enterkeyhint="previous" />
    /// ```
    @inlinable public static var previous: Self { "previous" }

    /// Indicates that Enter will initiate a search
    ///
    /// Typically used in search fields.
    ///
    /// Example labels in different browsers/languages: "search", "🔍"
    ///
    /// Example:
    /// ```html
    /// <input type="search" enterkeyhint="search" />
    /// ```
    @inlinable public static var search: Self { "search" }

    /// Indicates that Enter will send the entered text to its target
    ///
    /// Typically used in messaging or email applications.
    ///
    /// Example labels in different browsers/languages: "send"
    ///
    /// Example:
    /// ```html
    /// <textarea enterkeyhint="send"></textarea>
    /// ```
    @inlinable public static var send: Self { "send" }
}

extension Enterkeyhint: CaseIterable {
    public static let allCases: [Enterkeyhint] = [
        .enter,
        .done,
        .go,
        .next,
        .previous,
        .search,
        .send,
    ]
}
