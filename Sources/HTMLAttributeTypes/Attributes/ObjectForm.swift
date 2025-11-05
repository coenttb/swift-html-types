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

/// Represents the HTML form attribute for the `<object>` element.
///
/// The `form` attribute associates an object element with a form. The value must be the ID of a
/// form element in the same document. This allows the object to be a part of a form even when
/// it's not nested within the form element.
///
/// ## Usage Notes
///
/// - Associates the object with a form using the form's ID
/// - Allows the object to be positioned anywhere in the document, not just inside the form
/// - Particularly useful for complex layouts where direct nesting isn't practical
///
/// ## Examples
///
/// ```html
/// <form id="myForm" action="/submit" method="post">
///   <!-- Form fields -->
/// </form>
///
/// <!-- Object associated with the form but positioned elsewhere -->
/// <object data="map.svg" type="image/svg+xml" form="myForm" width="600" height="400">
///   <p>Your browser doesn't support SVG</p>
/// </object>
/// ```
@dynamicMemberLookup
public struct ObjectForm: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "form" }

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the form attribute
    public init(value: String) {
        self.rawValue = value
    }
}
