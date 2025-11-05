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
import Testing

@Suite("Autocomplete Test")
struct AutocompleteTests {
    @Test("Autocomplete attribute should be autocomplete")
    func attribute() {
        #expect(Autocomplete.attribute == "autocomplete")
    }

    @Test("Autocomplete convenience properties")
    func convenienceProperties() {
        #expect(Autocomplete.on.rawValue == "on")
        #expect(Autocomplete.off.rawValue == "off")
    }

    @Test("Autocomplete boolean literal")
    func booleanLiteral() {
        let onValue: Autocomplete = true
        let offValue: Autocomplete = false
        #expect(onValue.rawValue == "on")
        #expect(offValue.rawValue == "off")
    }

    @Test("Autocomplete array literal")
    func arrayLiteral() {
        let autocomplete: Autocomplete = ["email", "username"]
        #expect(autocomplete.rawValue == "email username")
    }

    @Test("Autocomplete token support")
    func tokenSupport() {
        let nameToken = Autocomplete.Token.name(.givenName)
        let addressToken = Autocomplete.Token.address(.streetAddress)
        let autocomplete = Autocomplete(nameToken, addressToken)
        #expect(autocomplete.rawValue == "given-name street-address")
    }

    @Test("Autocomplete shipping and billing helpers")
    func shippingBillingHelpers() {
        let shipping = Autocomplete.shipping(.streetAddress)
        let billing = Autocomplete.billing(.postalCode)
        #expect(shipping.rawValue == "shipping street-address")
        #expect(billing.rawValue == "billing postal-code")
    }
}
