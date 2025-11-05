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
#endif

extension Href {
    /// Initialize with a URL
    public init(_ url: URL) {
        self = .init(url.absoluteString)
    }

    public static func url(_ url: URL) -> Href {
        .init(url)
    }

    /// Creates a link with a fragment identifier (#section)
    public static func fragment(_ base: String, fragment: String) -> Href {
        let baseWithoutFragment = base.split(separator: "#")[0]
        let fragmentWithoutHash = fragment.hasPrefix("#") ? String(fragment.dropFirst()) : fragment
        return Href("\(baseWithoutFragment)#\(fragmentWithoutHash)")
    }

    /// Creates a link to a specific fragment on the current page
    public static func anchor(_ fragmentId: String) -> Href {
        let fragmentWithoutHash = fragmentId.hasPrefix("#") ? fragmentId : "#\(fragmentId)"
        return Href(fragmentWithoutHash)
    }
}

#if canImport(Foundation)
    import Foundation

    extension Href {
        /// Creates an email link (mailto:) - Foundation only
        public static func email(
            _ address: String,
            subject: String? = nil,
            body: String? = nil
        ) -> Href {
            // Define a custom allowed character set that excludes ?, &, =, and other special chars
            var allowedCharacters = CharacterSet.urlQueryAllowed
            allowedCharacters.remove(charactersIn: "?&=+%")

            var url = "mailto:\(address)"

            if subject != nil || body != nil {
                url += "?"
                var queryParts: [String] = []

                if let subject = subject {
                    // Properly encode the subject
                    let encodedSubject =
                        subject.addingPercentEncoding(withAllowedCharacters: allowedCharacters)
                        ?? subject
                    queryParts.append("subject=\(encodedSubject)")
                }

                if let body = body {
                    // Properly encode the body
                    let encodedBody =
                        body.addingPercentEncoding(withAllowedCharacters: allowedCharacters) ?? body
                    queryParts.append("body=\(encodedBody)")
                }

                url += queryParts.joined(separator: "&")
            }

            return Href(url)
        }

        /// Creates a telephone link (tel:) - Foundation only
        public static func tel(_ phoneNumber: String) -> Href {
            let formattedNumber = phoneNumber.replacingOccurrences(
                of: #"[^\d+]"#,
                with: "",
                options: .regularExpression
            )
            return Href("tel:\(formattedNumber)")
        }

        /// Creates an SMS link (sms:) - Foundation only
        public static func sms(_ phoneNumber: String, body: String? = nil) -> Href {
            let formattedNumber = phoneNumber.replacingOccurrences(
                of: #"[^\d+]"#,
                with: "",
                options: .regularExpression
            )

            if let body = body {
                // Define a custom allowed character set that excludes ?, &, =, and other special chars
                var allowedCharacters = CharacterSet.urlQueryAllowed
                allowedCharacters.remove(charactersIn: "?&=+%")

                // Properly encode the body
                let encodedBody =
                    body.addingPercentEncoding(withAllowedCharacters: allowedCharacters) ?? body
                return Href("sms:\(formattedNumber)?body=\(encodedBody)")
            } else {
                return Href("sms:\(formattedNumber)")
            }
        }
    }
#endif
