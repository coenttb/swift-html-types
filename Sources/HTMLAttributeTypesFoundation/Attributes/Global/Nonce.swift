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

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
    import Foundation
#endif

extension Nonce {
    /// Generates a cryptographically secure nonce of at least 16 bytes (128 bits).
    public static func generate(length: Int = 16) -> Nonce {
        let length = max(length, 16)
        var data = Data(count: length)
        #if canImport(Darwin)
            _ = data.withUnsafeMutableBytes {
                SecRandomCopyBytes(kSecRandomDefault, length, $0.baseAddress!)
            }
        #else
            let charset = [Character](
                "0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._"
            )
            var rng = SystemRandomNumberGenerator()
            data.withUnsafeMutableBytes { (p: UnsafeMutableRawBufferPointer) in
                for i in 0..<length {
                    p[i] = charset.randomElement(using: &rng)!.asciiValue!
                }
            }
        #endif
        return Nonce(data.base64EncodedString())
    }
}
