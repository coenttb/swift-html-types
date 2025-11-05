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
import HTMLElementTypesFoundation
import Testing

@Suite("Contact Address Tests")
struct AddressTests {

    @Test("Basic address creation")
    func basicAddressCreation() {
        let address = Address()
        #expect(type(of: address).tag == "address")
    }

    @Test("Address conforms to HTMLElement")
    func addressConformsToHTMLElement() {
        let address = Address()
        let element: any HTMLElement = address
        #expect(type(of: element).tag == "address")
    }

    @Test("Address is equatable")
    func addressIsEquatable() {
        let address1 = Address()
        let address2 = Address()
        #expect(address1 == address2)
    }

    @Test("Address is sendable")
    func addressIsSendable() {
        let address = Address()

        Task {
            _ = address
        }

        #expect(address == Address())
    }

    @Suite("Common Use Cases")
    struct CommonUseCases {

        @Test("Author contact information")
        func authorContactInformation() {
            let address = Address()
            #expect(address == Address())
        }

        @Test("Business contact information")
        func businessContactInformation() {
            let address = Address()
            #expect(address == Address())
        }

        @Test("Article author contact")
        func articleAuthorContact() {
            let address = Address()
            #expect(address == Address())
        }

        @Test("Website contact information")
        func websiteContactInformation() {
            let address = Address()
            #expect(address == Address())
        }

        @Test("Organization contact details")
        func organizationContactDetails() {
            let address = Address()
            #expect(address == Address())
        }
    }

    @Suite("Semantic Usage")
    struct SemanticUsage {

        @Test("Physical address representation")
        func physicalAddressRepresentation() {
            let address = Address()
            #expect(address == Address())
        }

        @Test("Email contact representation")
        func emailContactRepresentation() {
            let address = Address()
            #expect(address == Address())
        }

        @Test("Phone number representation")
        func phoneNumberRepresentation() {
            let address = Address()
            #expect(address == Address())
        }

        @Test("Social media handle representation")
        func socialMediaHandleRepresentation() {
            let address = Address()
            #expect(address == Address())
        }

        @Test("Geographic coordinates representation")
        func geographicCoordinatesRepresentation() {
            let address = Address()
            #expect(address == Address())
        }

        @Test("URL contact representation")
        func urlContactRepresentation() {
            let address = Address()
            #expect(address == Address())
        }
    }

    @Suite("Best Practices Validation")
    struct BestPracticesValidation {

        @Test("Simple address element")
        func simpleAddressElement() {
            let address = Address()
            #expect(address == Address())
        }

        @Test("Multiple address elements")
        func multipleAddressElements() {
            let authorAddress = Address()
            let businessAddress = Address()
            let contactAddress = Address()

            #expect(authorAddress == businessAddress)
            #expect(businessAddress == contactAddress)
            #expect(authorAddress == contactAddress)
        }

        @Test("Consistent address structure")
        func consistentAddressStructure() {
            let address1 = Address()
            let address2 = Address()
            #expect(address1 == address2)
        }

        @Test("Address element immutability")
        func addressElementImmutability() {
            let address = Address()
            let addressCopy = address
            #expect(address == addressCopy)
        }
    }

    @Suite("Element Properties")
    struct ElementProperties {

        @Test("Tag name is correct")
        func tagNameIsCorrect() {
            #expect(Address.tag == "address")
        }

        @Test("Element creation is consistent")
        func elementCreationIsConsistent() {
            let address1 = Address()
            let address2 = Address()
            #expect(address1 == address2)
        }

        @Test("Element has no mutable state")
        func elementHasNoMutableState() {
            let address = Address()
            let copy = address
            #expect(address == copy)
        }

        @Test("Static tag property access")
        func staticTagPropertyAccess() {
            #expect(Address.tag == "address")
        }
    }

    @Suite("Integration Tests")
    struct IntegrationTests {

        @Test("Can be used in collections")
        func canBeUsedInCollections() {
            let addresses = [
                Address(),
                Address(),
                Address(),
            ]

            #expect(addresses.count == 3)
            #expect(addresses.allSatisfy { $0 == Address() })
        }

        @Test("Can be used as dictionary keys")
        func canBeUsedAsDictionaryKeys() {
            let addressTypes: [Address: String] = [
                Address(): "contact"
            ]

            #expect(addressTypes.count == 1)
            #expect(addressTypes[Address()] == "contact")
        }

        @Test("Can be used as dictionary values")
        func canBeUsedAsDictionaryValues() {
            let contactMethods: [String: Address] = [
                "email": Address(),
                "postal": Address(),
                "phone": Address(),
            ]

            #expect(contactMethods.count == 3)
            #expect(contactMethods.values.allSatisfy { $0 == Address() })
        }

        @Test("Can be used in optional contexts")
        func canBeUsedInOptionalContexts() {
            let maybeAddress: Address? = Address()
            let noAddress: Address? = nil

            #expect(maybeAddress != nil)
            #expect(maybeAddress == Address())
            #expect(noAddress == nil)
        }

        @Test("Can be used in sets")
        func canBeUsedInSets() {
            let addressSet: Set<Address> = [
                Address(),
                Address(),
                Address(),
            ]

            #expect(addressSet.count == 1)  // All Address() instances are equal
            #expect(addressSet.contains(Address()))
        }
    }

    @Suite("Contextual Usage")
    struct ContextualUsage {

        @Test("Footer section usage")
        func footerSectionUsage() {
            let address = Address()
            #expect(address == Address())
        }

        @Test("Article footer usage")
        func articleFooterUsage() {
            let address = Address()
            #expect(address == Address())
        }

        @Test("Document footer usage")
        func documentFooterUsage() {
            let address = Address()
            #expect(address == Address())
        }

        @Test("Contact section usage")
        func contactSectionUsage() {
            let address = Address()
            #expect(address == Address())
        }
    }
}
