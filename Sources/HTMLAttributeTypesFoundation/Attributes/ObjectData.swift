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

extension ObjectData {
  /// Initialize with a URL object
  public init(_ url: URL) {
    self = .init(url.absoluteString)
  }
}
