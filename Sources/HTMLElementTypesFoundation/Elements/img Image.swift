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
import HTMLElementTypes

extension Image {
    public init?(base64EncodedFromURL url: URL, description: String) {
        guard
            let imageData = try? Foundation.Data(contentsOf: url)
        else {
            return nil
        }

        let base64String = imageData.base64EncodedString()
        let mimeType = Image.mimeTypeForImage(relativeURL: url.relativeString)

        self.init(src: "data:\(mimeType);base64,\(base64String)", alt: .init(description))
    }

    private static func mimeTypeForImage(relativeURL: String) -> String {
        let pathExtension = (relativeURL as NSString).pathExtension.lowercased()
        switch pathExtension {
        case "jpg", "jpeg":
            return "image/jpeg"
        case "png":
            return "image/png"
        case "gif":
            return "image/gif"
        case "svg":
            return "image/svg+xml"
        default:
            return "application/octet-stream"
        }
    }
}

extension Image {
    public init?(baseURL: URL, base64EncodedFromURL relativeURL: String, description: String) {
        guard let fullURL = URL(string: relativeURL, relativeTo: baseURL) else {
            return nil
        }

        self.init(base64EncodedFromURL: fullURL, description: description)
    }
}
