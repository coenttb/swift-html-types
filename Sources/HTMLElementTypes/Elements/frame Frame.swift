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

/// Represents an HTML frame element (`<frame>`), which defines a particular area in which another HTML document can be displayed.
///
/// The `Frame` struct provides a type-safe way to create HTML frame elements with various attributes.
/// A frame should be used within a `<frameset>` element.
///
/// > Note: The `<frame>` element is deprecated in HTML5. Consider using `<iframe>` instead
/// > for better performance and accessibility.
///
/// ## Example
///
/// ```swift
/// frameset {
///     frame(src: "https://example.com/page1.html")
///     frame(src: "https://example.com/page2.html", name: "content")
/// }
/// ```
///
/// ## Best Practices
///
/// - Avoid using frames when possible due to accessibility issues
/// - Use `<iframe>` instead for embedding content within a document
/// - Always provide descriptive names for frames to improve navigation
///
public struct Frame: HTMLElement {
    /// The HTML tag name
    @inlinable public static var tag: String { "frame" }

    /// The URL of the document to be displayed in the frame
    public var src: Src?

    /// A name for the frame, used for targeting links
    public var name: Name?

    /// Prevents user from resizing the frame
    public var noresize: NoResize?

    /// Controls scrollbar appearance
    public var scrolling: Scrolling?

    /// Margins between frames (height)
    public var marginheight: MarginHeight?

    /// Margins between frames (width)
    public var marginwidth: MarginWidth?

    /// Controls frame border appearance
    public var frameborder: FrameBorder?

    /// Creates a new Frame element with the specified attributes.
    ///
    /// - Parameters:
    ///   - src: URL of the document to display in the frame
    ///   - name: Name for the frame (for targeting links)
    ///   - noresize: Whether to prevent user resizing
    ///   - scrolling: Scrollbar appearance control
    ///   - marginheight: Height of margins between frames
    ///   - marginwidth: Width of margins between frames
    ///   - frameborder: Frame border appearance
    public init(
        src: Src? = nil,
        name: Name? = nil,
        noresize: NoResize? = nil,
        scrolling: Scrolling? = nil,
        marginheight: MarginHeight? = nil,
        marginwidth: MarginWidth? = nil,
        frameborder: FrameBorder? = nil
    ) {
        self.src = src
        self.name = name
        self.noresize = noresize
        self.scrolling = scrolling
        self.marginheight = marginheight
        self.marginwidth = marginwidth
        self.frameborder = frameborder
    }
}
