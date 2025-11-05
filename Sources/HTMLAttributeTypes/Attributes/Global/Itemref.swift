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

/// References elements that are not direct descendants of an item in microdata.
///
/// The `itemref` global attribute identifies elements that are not direct descendants of an item
/// but still contain properties of that item. This allows microdata properties to be organized
/// flexibly throughout the document, regardless of DOM structure.
///
/// This attribute is used in conjunction with `itemscope` and specifies a list of IDs (without the
/// '#' prefix) of elements to be included in the item. The referenced elements can be located
/// anywhere in the document.
///
/// ## Usage Notes
///
/// - Only used on elements with the `itemscope` attribute
/// - Contains a space-separated list of element IDs
/// - The referenced elements provide additional properties for the item but are not themselves
///   considered part of the item node
/// - Particularly useful for complex layouts where properties may be scattered throughout the document
/// - Can create circular references (items referencing each other), though parsers must handle this correctly
///
/// ## Examples
///
/// Basic usage with scattered properties:
/// ```html
/// <div id="amanda" itemscope>
///   <p>Name: <span itemprop="name">Amanda</span></p>
///   <p>Age: <span itemprop="age">28</span></p>
/// </div>
///
/// <div id="band" itemscope itemref="amanda">
///   <p>Band: <span itemprop="bandname">Jazz Band</span></p>
///   <p>Size: <span itemprop="size">12</span> players</p>
///   <!-- Amanda's properties (name, age) are also part of this item -->
/// </div>
/// ```
///
/// Multiple references:
/// ```html
/// <div id="name">
///   <p>Name: <span itemprop="name">Amanda</span></p>
/// </div>
///
/// <div id="details">
///   <p>Age: <span itemprop="age">28</span></p>
/// </div>
///
/// <div itemscope itemref="name details">
///   <p>Profession: <span itemprop="profession">Web Developer</span></p>
///   <!-- Both name and age properties are included in this item -->
/// </div>
/// ```
///
/// Nested items with references:
/// ```html
/// <div id="contact">
///   <p>Email: <span itemprop="email">amanda@example.com</span></p>
/// </div>
///
/// <div itemscope itemtype="https://schema.org/Person" itemref="contact">
///   <p>Name: <span itemprop="name">Amanda</span></p>
///   <div itemprop="address" itemscope>
///     <p>City: <span itemprop="addressLocality">San Francisco</span></p>
///   </div>
///   <!-- Email from the referenced element is also included -->
/// </div>
/// ```
@dynamicMemberLookup
public struct Itemref: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "itemref" }

    /// The space-separated list of element IDs
    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}

extension Itemref: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = String

    public init(arrayLiteral elements: String...) {
        self = .init(value: elements.joined(separator: " "))
    }
}
