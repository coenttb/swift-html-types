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

extension Href {
    /// Create an Href from a Foundation.URL
    /// - Parameter url: The URL to convert to an Href
    /// - Returns: An Href with the URL's absolute string representation
    public static func url(_ url: URL) -> Href {
        return Href(value: url.absoluteString)
    }

    /// Create an Href for an email address with subject and body
    /// - Parameters:
    ///   - email: The email address
    ///   - subject: Optional email subject
    ///   - body: Optional email body
    /// - Returns: An Href with a mailto: scheme and query parameters
    public static func mailto(_ email: String, subject: String? = nil, body: String? = nil) -> Href {
        var components = URLComponents()
        components.scheme = "mailto"
        components.path = email

        var queryItems: [URLQueryItem] = []
        if let subject = subject {
            queryItems.append(URLQueryItem(name: "subject", value: subject))
        }
        if let body = body {
            queryItems.append(URLQueryItem(name: "body", value: body))
        }

        if !queryItems.isEmpty {
            components.queryItems = queryItems
        }

        return Href(value: components.string ?? "mailto:\(email)")
    }

    /// Create an Href for SMS with body text
    /// - Parameters:
    ///   - phoneNumber: The phone number to send SMS to
    ///   - body: The message body
    /// - Returns: An Href with an sms: scheme and body parameter
    public static func sms(_ phoneNumber: String, body: String) -> Href {
        var components = URLComponents()
        components.scheme = "sms"
        components.path = phoneNumber
        components.queryItems = [URLQueryItem(name: "body", value: body)]

        return Href(value: components.string ?? "sms:\(phoneNumber)")
    }

    /// Create an Href for a file URL from a file URL
    /// - Parameter fileURL: A file URL
    /// - Returns: An Href with the file URL's absolute string
    public static func file(_ fileURL: URL) -> Href {
        return Href(value: fileURL.absoluteString)
    }

    /// Create an Href for WhatsApp with message
    /// - Parameters:
    ///   - phoneNumber: The phone number (with country code)
    ///   - message: Pre-filled message text
    /// - Returns: An Href with a WhatsApp URL scheme and message
    public static func whatsapp(_ phoneNumber: String, message: String) -> Href {
        let encodedMessage = message.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? message
        return Href(value: "https://wa.me/\(phoneNumber)?text=\(encodedMessage)")
    }
}