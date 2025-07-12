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

import Foundation
import HTMLAttributeTypes

extension Nonce {
    /// Generate a cryptographically secure nonce
    public static func generate() -> Nonce {
        var data = Data(count: 16) // 128 bits
        _ = data.withUnsafeMutableBytes { SecRandomCopyBytes(kSecRandomDefault, 16, $0.baseAddress!) }
        return Nonce(data.base64EncodedString())
    }
}
