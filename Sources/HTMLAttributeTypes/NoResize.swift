///
/// NoResize.swift
/// swift-html
///
/// Created by Coen ten Thije Boonkkamp on 09/04/2025.
///

import Foundation

/// The `noresize` attribute prevents users from resizing a frame or iframe element.
///
/// This is a boolean attribute that indicates whether the user is allowed to resize the frame.
/// When present, it specifies that the frame cannot be resized.
///
/// ## Usage Notes
///
/// - This attribute is deprecated in HTML5 and should be avoided.
/// - Use CSS instead for controlling the appearance and behavior of frames.
///
/// ## Examples
///
/// ```html
/// <frame noresize></frame>
/// ```
public struct NoResize: BooleanAttribute {
    /// The name of the HTML attribute
    public static let attribute: String = "noresize"
    
    /// The attribute value
    package let value: Bool
    
    /// Creates a new NoResize attribute.
    public init(value: Bool = true) {
        self.value = value
    }
}