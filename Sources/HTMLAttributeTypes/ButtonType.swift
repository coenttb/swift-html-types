//===----------------------------------------------------------------------===//
//
// Copyright (c) 2025 Coen ten Thije Boonkkamp
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of project contributors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//


/// Button types that define how a button behaves
public struct ButtonType: StringAttribute {
    
    public static let attribute: String = "type"
    
    public let rawValue: String
    
    public init(value: String) {
        self.rawValue = value
    }
}

extension ButtonType {
    /// Submits the form data (default behavior)
    public static let submit: Self = "submit"
    
    /// Resets the form data to its initial values
    public static let reset: Self = "reset"
    
    /// No default behavior, typically used with JavaScript
    public static let button: Self = "button"
}

