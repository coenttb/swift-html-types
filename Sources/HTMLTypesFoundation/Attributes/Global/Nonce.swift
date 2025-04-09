import HTMLAttributeTypes
import Foundation

extension Nonce {
    /// Generate a cryptographically secure nonce
    public static func generate() -> Nonce {
        var data = Data(count: 16) // 128 bits
        _ = data.withUnsafeMutableBytes { SecRandomCopyBytes(kSecRandomDefault, 16, $0.baseAddress!) }
        return Nonce(data.base64EncodedString())
    }
}

