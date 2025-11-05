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

public struct CharSet: Sendable, Hashable, ExpressibleByStringLiteral, CustomStringConvertible {

    public var value: String

    public var description: String { value }

    public init(stringLiteral value: String) {
        self.value = value
    }

    @inlinable public static var utf8: Self { "utf-8" }

    @available(
        *,
        deprecated,
        message:
            "UTF-16 is rarely used in HTML and may cause compatibility issues. Use utf8 instead."
    )
    @inlinable public static var utf16: Self { "utf-16" }

    @available(
        *,
        deprecated,
        message: "UTF-16BE is not suitable for use in HTML. Use utf8 instead."
    )
    @inlinable public static var utf16BE: Self { "utf-16be" }

    @available(
        *,
        deprecated,
        message: "UTF-16LE is not suitable for use in HTML. Use utf8 instead."
    )
    @inlinable public static var utf16LE: Self { "utf-16le" }

    @available(*, deprecated, message: "ISO-8859-1 is a legacy encoding. Use utf8 instead.")
    @inlinable public static var iso8859_1: Self { "iso-8859-1" }

    @available(
        *,
        deprecated,
        message: "ISO-8859-2 is a legacy encoding for Central European languages. Use utf8 instead."
    )
    @inlinable public static var iso8859_2: Self { "iso-8859-2" }

    @available(
        *,
        deprecated,
        message: "ISO-8859-15 is a legacy variant of Latin-1. Use utf8 instead."
    )
    @inlinable public static var iso8859_15: Self { "iso-8859-15" }

    @available(
        *,
        deprecated,
        message:
            "Windows-1250 is a legacy encoding for Central European languages. Use utf8 instead."
    )
    @inlinable public static var windows1250: Self { "windows-1250" }

    @available(
        *,
        deprecated,
        message: "Windows-1251 is a legacy encoding for Cyrillic. Use utf8 instead."
    )
    @inlinable public static var windows1251: Self { "windows-1251" }

    @available(
        *,
        deprecated,
        message: "Windows-1252 is a legacy Western European encoding. Use utf8 instead."
    )
    @inlinable public static var windows1252: Self { "windows-1252" }

    @available(
        *,
        deprecated,
        message: "Windows-1256 is a legacy Arabic encoding. Use utf8 instead."
    )
    @inlinable public static var windows1256: Self { "windows-1256" }

    @available(*, deprecated, message: "KOI8-R is a legacy Russian encoding. Use utf8 instead.")
    @inlinable public static var koi8r: Self { "koi8-r" }

    @available(*, deprecated, message: "KOI8-U is a legacy Ukrainian encoding. Use utf8 instead.")
    @inlinable public static var koi8u: Self { "koi8-u" }

    @available(
        *,
        deprecated,
        message:
            "MacRoman (macintosh) is deprecated and not suitable for modern web content. Use utf8 instead."
    )
    @inlinable public static var macRoman: Self { "macintosh" }

    @available(*, deprecated, message: "IBM866 is a legacy DOS encoding. Use utf8 instead.")
    @inlinable public static var ibm866: Self { "ibm866" }

    @available(*, deprecated, message: "GBK is a legacy Chinese encoding. Use utf8 instead.")
    @inlinable public static var gbk: Self { "gbk" }

    @available(
        *,
        deprecated,
        message:
            "GB18030 is mandatory in China but considered legacy for web content. Use utf8 instead."
    )
    @inlinable public static var gb18030: Self { "gb18030" }

    @available(
        *,
        deprecated,
        message: "Big5 is a legacy Traditional Chinese encoding. Use utf8 instead."
    )
    @inlinable public static var big5: Self { "big5" }

    @available(*, deprecated, message: "EUC-JP is a legacy Japanese encoding. Use utf8 instead.")
    @inlinable public static var eucJp: Self { "euc-jp" }

    @available(
        *,
        deprecated,
        message: "ISO-2022-JP is a legacy encoding used in email. Avoid in HTML. Use utf8 instead."
    )
    @inlinable public static var iso2022Jp: Self { "iso-2022-jp" }

    @available(*, deprecated, message: "Shift_JIS is a legacy Japanese encoding. Use utf8 instead.")
    @inlinable public static var shiftJis: Self { "shift_jis" }

    @available(*, deprecated, message: "EUC-KR is a legacy Korean encoding. Use utf8 instead.")
    @inlinable public static var eucKr: Self { "euc-kr" }
}
