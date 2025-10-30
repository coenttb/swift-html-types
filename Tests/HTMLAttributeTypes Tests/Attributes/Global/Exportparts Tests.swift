//// ===----------------------------------------------------------------------===//
////
//// Copyright (c) 2025 Coen ten Thije Boonkkamp
//// Licensed under Apache License v2.0
////
//// See LICENSE.txt for license information
//// See CONTRIBUTORS.txt for the list of project contributors
////
//// SPDX-License-Identifier: Apache-2.0
////
//// ===----------------------------------------------------------------------===//
//
// import Foundation
// import Testing
// import HTMLAttributeTypes
//
// @Suite("Exportparts Test")
// struct ExportpartsTests {
//    @Test("Exportparts attribute should be exportparts")
//    func attribute() {
//        #expect(Exportparts.attribute == "exportparts")
//    }
//
//    @Test("Exportparts description should reflect the initialized values")
//    func description() {
//        let single = Exportparts("header")
//        #expect(single.description == "header")
//
//        let multiple = Exportparts(["header", "footer"])
//        #expect(multiple.description == "header footer")
//
//        let empty = Exportparts("")
//        #expect(empty.description == "")
//    }
//
//    @Test("Exportparts can be initialized with single string or array of strings")
//    func initialization() {
//        let singlePart = Exportparts("header")
//        let arrayPart = Exportparts(["header"])
//        #expect(singlePart.description == arrayPart.description)
//
//        let multipleParts = Exportparts(["header", "footer"])
//        #expect(multipleParts.description == "header footer")
//    }
// }
