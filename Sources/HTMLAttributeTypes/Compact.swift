///
/// Compact.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 09/04/2025.
///

import Foundation

/// The `compact` attribute is a boolean attribute that, if present, indicates that the list should be rendered in a compact style.
///
/// ## Usage Notes
///
/// - This attribute is primarily used with `<dl>`, `<ol>`, and `<ul>` elements.
/// - The `compact` attribute is deprecated in HTML5 and should be avoided in favor of CSS.
///
/// ## Examples
///
/// ```html
/// <ul compact></ul>
/// ```
@available(*, deprecated)
public struct Compact: BooleanAttribute, CustomStringConvertible {
    /// The name of the HTML attribute
    public static let attribute: String = "compact"
    
    public var value: Bool
  
    public init(value: Bool) {
        self.value = value
    }
    
    public var description: String {
        self.value.description
    }
}
