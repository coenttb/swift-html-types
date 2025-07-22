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

/// An attribute that provides a hint about the expected content of a form control.
///
/// The `placeholder` attribute displays text in a form control when it has no value.
/// It provides a brief hint to users about what kind of information is expected,
/// but should never be used as a replacement for a proper label.
///
/// ## Usage Notes
///
/// - Valid on text-based `<input>` types: text, search, url, tel, email, and password
/// - Also valid on `<textarea>` elements
/// - Placeholder text disappears as soon as the user starts typing or the field gains a value
/// - Cannot contain line feeds or carriage returns (except in `<textarea>`)
/// - Should provide a brief hint, not instructions or prompts
///
/// ## Accessibility Considerations
///
/// - **Never use placeholders instead of labels** - this is a critical accessibility issue
/// - Screen readers may not announce placeholder text by default
/// - Placeholder text has lower contrast and may be difficult for low-vision users to read
/// - Placeholder text disappears when users start typing, which can confuse users with cognitive issues
/// - Always pair with a proper `<label>` element
///
/// ## Examples
///
/// Basic usage with a label:
/// ```html
/// <label for="email">Email address:</label>
/// <input type="email" id="email" placeholder="example@domain.com">
/// ```
///
/// Textarea with placeholder:
/// ```html
/// <label for="bio">Biography:</label>
/// <textarea id="bio" placeholder="Tell us about yourself..."></textarea>
/// ```
@dynamicMemberLookup
public struct Placeholder: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "placeholder" }

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the placeholder attribute
    public init(value: String) {
        self.rawValue = value
    }
}

extension Placeholder {
    /// Example email address placeholder
    @inlinable public static var email: Self { "email" }

    /// Example phone number placeholder
    @inlinable public static var phone: Self { "phone" }

    /// Example name placeholder
    @inlinable public static var name: Self { "name" }

    /// Example search placeholder
    @inlinable public static var search: Self { "search" }

    /// Example URL placeholder
    @inlinable public static var url: Self { "url" }
}
