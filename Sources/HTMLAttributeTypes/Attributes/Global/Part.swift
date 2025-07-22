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

/// Designates an element as a named part that can be styled from outside its shadow DOM.
///
/// The `part` global attribute assigns names to elements within a shadow DOM, making them accessible
/// for styling from outside the shadow boundary using the `::part()` CSS pseudo-element. This is a key
/// mechanism in the CSS Shadow Parts specification that helps balance encapsulation with styling
/// flexibility in Web Components.
///
/// Shadow DOM provides strong encapsulation for Web Components, isolating their DOM structure and
/// styles from the rest of the document. The `part` attribute creates controlled "style hooks"
/// that allow specific elements within the component to be styled from outside, without exposing
/// the entire internal structure.
///
/// ## Usage Notes
///
/// - Used on elements inside a shadow DOM
/// - Contains a space-separated list of part names
/// - Part names should follow standard CSS identifier rules
/// - Parts can be styled from ancestor documents using `::part(name)` CSS pseudo-element
/// - Often used with custom elements and Web Components
/// - For nested shadow DOMs, parts need to be exported using the `exportparts` attribute
///
/// ## Examples
///
/// HTML structure inside a Web Component's shadow DOM:
/// ```html
/// <template id="fancy-button-template">
///   <button part="button">
///     <span part="label"><slot></slot></span>
///     <span part="icon"></span>
///   </button>
/// </template>
/// ```
///
/// CSS from outside the shadow DOM:
/// ```css
/// fancy-button::part(button) {
///   background: linear-gradient(to right, #ff8a00, #da1b60);
///   border: none;
///   color: white;
/// }
///
/// fancy-button::part(label) {
///   text-transform: uppercase;
/// }
///
/// fancy-button::part(icon) {
///   background: url("icon.svg");
///   width: 16px;
///   height: 16px;
/// }
/// ```
///
/// Multiple part names:
/// ```html
/// <div part="container main-section">
///   <h2 part="heading section-title">Title</h2>
/// </div>
/// ```
@dynamicMemberLookup
public struct Part: HTMLStringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "part" }

    /// The space-separated list of part names
    /// The language tag value
    public let rawValue: String

    public init(value: String) {
        self.rawValue = value
    }
}

extension Part: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = String

    public init(arrayLiteral elements: String...) {
        self = .init(value: elements.joined(separator: " "))
    }
}
