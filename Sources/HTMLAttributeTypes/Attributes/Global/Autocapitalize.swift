// ===----------------------------------------------------------------------===//
//
// This source file is part of the Swift open source project
//
// Copyright (c) 2025 Coen ten Thije Boonkkamp and the Swift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Swift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
// ===----------------------------------------------------------------------===//

/// Controls whether and how user input should be automatically capitalized as it is entered by the user.
///
/// The `autocapitalize` attribute is used for:
/// - `<input>` and `<textarea>` elements
/// - Any element with `contenteditable` set
///
/// This attribute affects the behavior of input mechanisms such as virtual keyboards
/// on mobile devices and voice input, but not physical keyboards.
///
/// ## Usage Notes
///
/// - When set on a `<form>` element, it sets the autocapitalize behavior for all contained `<input>`s and `<textarea>`s,
///   overriding any autocapitalize values set on contained elements.
/// - Has no effect on the `url`, `email`, or `password` input types, where autocapitalization is never enabled.
/// - Default behavior varies between browsers:
///   - Chrome and Safari default to `on`/`sentences`
///   - Firefox defaults to `off`/`none`
///
/// ## Examples
///
/// Basic usage with different settings:
/// ```html
/// <!-- Default: no autocapitalize set -->
/// <input type="text" id="default" name="default" />
///
/// <!-- Turn off autocapitalize -->
/// <input type="text" id="off" name="off" autocapitalize="off" />
/// <input type="text" id="none" name="none" autocapitalize="none" />
///
/// <!-- Capitalize sentences (default in some browsers) -->
/// <input type="text" id="on" name="on" autocapitalize="on" />
/// <input type="text" id="sentences" name="sentences" autocapitalize="sentences" />
///
/// <!-- Capitalize the first letter of each word -->
/// <input type="text" id="words" name="words" autocapitalize="words" />
///
/// <!-- Capitalize all characters -->
/// <input type="text" id="characters" name="characters" autocapitalize="characters" />
///
/// <!-- With textarea -->
/// <textarea id="characters-ta" name="characters-ta" autocapitalize="characters">
/// </textarea>
///
/// <!-- With contenteditable -->
/// <p contenteditable autocapitalize="characters">
///   This content is editable and has autocapitalize="characters" set on it
/// </p>
/// ```
///
@dynamicMemberLookup
public struct Autocapitalize: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "autocapitalize" }

    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}

extension Autocapitalize {
    /// Do not automatically capitalize any text
    ///
    /// Example:
    /// ```html
    /// <input type="text" autocapitalize="none" />
    /// ```
    @inlinable public static var none: Self { "none" }

    /// Do not automatically capitalize any text (alias for `none`)
    ///
    /// Example:
    /// ```html
    /// <input type="text" autocapitalize="off" />
    /// ```
    @inlinable public static var off: Self { "off" }

    /// Automatically capitalize the first character of each sentence
    ///
    /// Example:
    /// ```html
    /// <input type="text" autocapitalize="sentences" />
    /// ```
    @inlinable public static var sentences: Self { "sentences" }

    /// Automatically capitalize the first character of each sentence (alias for `sentences`)
    ///
    /// Example:
    /// ```html
    /// <input type="text" autocapitalize="on" />
    /// ```
    @inlinable public static var on: Self { "on" }

    /// Automatically capitalize the first character of each word
    ///
    /// Example:
    /// ```html
    /// <input type="text" autocapitalize="words" />
    /// ```
    @inlinable public static var words: Self { "words" }

    /// Automatically capitalize every character
    ///
    /// Example:
    /// ```html
    /// <input type="text" autocapitalize="characters" />
    /// <p contenteditable autocapitalize="characters">Editable content</p>
    /// ```
    @inlinable public static var characters: Self { "characters" }
}

extension Autocapitalize: CaseIterable {
    @inlinable public static var allCases: [Autocapitalize] {
        [.none, .off, .sentences, .on, .words, .characters]
    }
}
