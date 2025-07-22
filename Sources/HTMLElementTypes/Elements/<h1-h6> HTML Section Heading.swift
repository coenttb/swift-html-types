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

/// <h1>–<h6>: The HTML Section Heading elements
///
/// The <h1> to <h6> HTML elements represent six levels of section headings.
/// <h1> is the highest section level and <h6> is the lowest.
/// By default, all heading elements create a block-level box in the layout,
/// starting on a new line and taking up the full width available in their containing block.
///
/// These elements only include the global attributes.

// MARK: - H1 Element
public struct H1: HTMLElement {
    @inlinable public static var tag: String { "h1" }

    public init() {}
}

// MARK: - H2 Element
public struct H2: HTMLElement {
    @inlinable public static var tag: String { "h2" }

    public init() {}
}

// MARK: - H3 Element
public struct H3: HTMLElement {
    @inlinable public static var tag: String { "h3" }

    public init() {}
}

// MARK: - H4 Element
public struct H4: HTMLElement {
    @inlinable public static var tag: String { "h4" }

    public init() {}
}

// MARK: - H5 Element
public struct H5: HTMLElement {
    @inlinable public static var tag: String { "h5" }

    public init() {}
}

// MARK: - H6 Element
public struct H6: HTMLElement {
    @inlinable public static var tag: String { "h6" }

    public init() {}
}
