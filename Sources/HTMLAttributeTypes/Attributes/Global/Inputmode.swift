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

/// Hints at the type of data that might be entered by the user, helping browsers display appropriate virtual keyboards.
///
/// The `inputmode` global attribute is an enumerated attribute that provides a hint to browsers
/// about what type of data input to expect, allowing them to display the most appropriate virtual
/// keyboard on mobile devices and other systems with on-screen keyboards.
///
/// This attribute is primarily used on `<input>` elements, but can also be used on any element
/// in `contenteditable` mode.
///
/// ## Usage Notes
///
/// - Does NOT enforce any validity requirements (unlike `<input>` types)
/// - Simply suggests the appropriate keyboard layout
/// - Should be used in conjunction with the appropriate `<input>` type when possible
/// - Useful for custom input elements or `contenteditable` areas
///
/// ## Examples
///
/// Basic usage:
/// ```html
/// <!-- Numeric-only keyboard for a pin code -->
/// <input inputmode="numeric" pattern="[0-9]*" placeholder="PIN">
///
/// <!-- Decimal keyboard for currency input -->
/// <input inputmode="decimal" placeholder="Price">
///
/// <!-- Email keyboard -->
/// <input inputmode="email" placeholder="Email address">
///
/// <!-- With contenteditable -->
/// <div contenteditable inputmode="url">https://example.com</div>
/// ```
///
/// With appropriate input types:
/// ```html
/// <!-- Better than just inputmode="email" -->
/// <input type="email" inputmode="email" placeholder="Email address">
///
/// <!-- Better than just inputmode="tel" -->
/// <input type="tel" inputmode="tel" placeholder="Phone number">
/// ```
@dynamicMemberLookup
public struct Inputmode: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "inputmode" }

    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}

extension Inputmode {
    /// No virtual keyboard
    ///
    /// Used when the page implements its own keyboard input control.
    ///
    /// Example:
    /// ```html
    /// <input inputmode="none">
    /// ```
    @inlinable public static var none: Self { "none" }

    /// Standard text input keyboard for the user's locale (default)
    ///
    /// The standard keyboard layout for the user's current locale.
    ///
    /// Example:
    /// ```html
    /// <input inputmode="text">
    /// ```
    @inlinable public static var text: Self { "text" }

    /// Fractional numeric input keyboard
    ///
    /// Contains digits and the decimal separator appropriate for the user's locale
    /// (typically . or ,). Devices may or may not show a minus key.
    ///
    /// Example:
    /// ```html
    /// <input inputmode="decimal" placeholder="Enter an amount">
    /// ```
    @inlinable public static var decimal: Self { "decimal" }

    /// Numeric input keyboard (digits only)
    ///
    /// Only includes the digits 0-9. Devices may or may not show a minus key.
    /// For PIN codes, numeric identifiers, etc.
    ///
    /// Example:
    /// ```html
    /// <input inputmode="numeric" pattern="[0-9]*" placeholder="PIN">
    /// ```
    @inlinable public static var numeric: Self { "numeric" }

    /// Telephone keypad
    ///
    /// Includes digits, asterisk (*), and pound/hash (#) key.
    /// For phone number entry. Consider using `<input type="tel">` instead.
    ///
    /// Example:
    /// ```html
    /// <input inputmode="tel" placeholder="Phone number">
    /// ```
    @inlinable public static var tel: Self { "tel" }

    /// Search-optimized keyboard
    ///
    /// May include a different label for the return/submit key (e.g., "Search").
    /// Consider using `<input type="search">` instead.
    ///
    /// Example:
    /// ```html
    /// <input inputmode="search" placeholder="Search...">
    /// ```
    @inlinable public static var search: Self { "search" }

    /// Email keyboard
    ///
    /// Includes the @ character and possibly other email-specific optimizations.
    /// Consider using `<input type="email">` instead.
    ///
    /// Example:
    /// ```html
    /// <input inputmode="email" placeholder="Email address">
    /// ```
    @inlinable public static var email: Self { "email" }

    /// URL keyboard
    ///
    /// May have the / key more prominently displayed and include other URL-specific features.
    /// Consider using `<input type="url">` instead.
    ///
    /// Example:
    /// ```html
    /// <input inputmode="url" placeholder="Website URL">
    /// ```
    @inlinable public static var url: Self { "url" }
}

extension Inputmode: CaseIterable {
    public static let allCases: [Inputmode] = [
        .none,
        .text,
        .decimal,
        .numeric,
        .tel,
        .search,
        .email,
        .url,
    ]
}
