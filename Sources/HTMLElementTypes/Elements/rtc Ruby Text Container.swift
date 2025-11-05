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

import HTMLAttributeTypes

/// Represents an HTML Ruby Text Container element (`<rtc>`), which embraces semantic annotations
/// of characters presented in ruby annotations.
///
/// The `RubyTextContainer` element is used to group ruby text (`<rt>`) elements when there are
/// multiple levels of annotations. While this element is deprecated in modern HTML specifications,
/// it is included for completeness.
///
/// ## Example
///
/// ```swift
/// ruby {
///     rb { "馬" }
///     rb { "來" }
///     rb { "西" }
///     rb { "亞" }
///     rtc {
///         rt { "mǎ" }
///         rt { "lái" }
///         rt { "xī" }
///         rt { "yà" }
///     }
///     rtc {
///         rt { "Malaysia" }
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - Use `<rtc>` for complex ruby annotations with multiple levels (e.g., pronunciation and meaning)
/// - Include `<rt>` elements inside the `<rtc>` for specific annotations
/// - Note that this element is deprecated; consider simpler ruby structures for better compatibility
/// - Only use within a `<ruby>` element
///
public struct RubyTextContainer: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "rtc" }

    /// Creates a new RubyTextContainer element with the specified attributes.
    public init(

        )
    {

    }
}
