///
/// Poster.swift
/// swift-html
///
/// Defines the HTML poster attribute for video elements.
///
/// Created by Coen ten Thije Boonkkamp on 09/04/2025.
///

import Foundation

/// Represents the HTML `poster` attribute, which is used with the `<video>` element to
/// specify an image to be shown while the video is downloading or until the user
/// plays the video.
///
/// The poster attribute allows web developers to provide a preview image that
/// represents the video content before it's played, improving the visual appeal
/// and user experience of a page.
///
/// ## Usage
///
/// The attribute's value should be a URL pointing to an image file.
///
/// ## Example
///
/// ```swift
/// video(poster: "video-preview.jpg", controls: true) {
///     source(src: "movie.mp4", type: "video/mp4")
///     "Your browser does not support the video tag."
/// }
/// ```
///
/// ## Best Practices
///
/// - Choose a representative frame from the video that gives users a good preview
/// - The poster image should have the same aspect ratio as the video
/// - Provide a poster image to improve user experience on slow connections
/// - For accessibility, ensure the poster image conveys appropriate context about the video content
///
public struct Poster: Attribute, CustomStringConvertible {
    /// The name of the HTML attribute
    public static let attribute: String = "poster"
    
    /// The URL of the poster image
    package let value: String
    
    /// Initialize with a poster image URL
    ///
    /// - Parameter value: The URL pointing to the poster image
    public init(_ value: String) {
        self.value = value
    }
    
    /// String representation of the poster attribute value
    public var description: String {
        return self.value
    }
}

extension Poster: ExpressibleByStringLiteral {
    /// Initialize with a string literal representing the poster image URL
    ///
    /// - Parameter value: The URL of the poster image as a string literal
    public init(stringLiteral value: StringLiteralType) {
        self.init(value)
    }
}
