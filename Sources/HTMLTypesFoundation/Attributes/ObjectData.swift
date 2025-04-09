import HTMLAttributeTypes
import Foundation

extension ObjectData {
    /// Initialize with a URL object
    public init(_ url: URL) {
        self = .init(url.absoluteString)
    }
}
