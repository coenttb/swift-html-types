// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

extension String {
    static let htmlTypes: Self = "HTMLTypes"
    static let htmlAttributes: Self = "HTMLAttributeTypes"
    static let htmlAttributesFoundation: Self = "HTMLAttributeTypesFoundation"
    static let htmlElements: Self = "HTMLElementTypes"
    static let htmlTypesFoundation: Self = "HTMLTypesFoundation"
}

extension Target.Dependency {
    static var htmlAttributes: Self { .target(name: .htmlAttributes) }
    static var htmlAttributesFoundation: Self { .target(name: .htmlAttributesFoundation) }
    static var htmlElements: Self { .target(name: .htmlElements) }
    static var htmlTypes: Self { .target(name: .htmlTypes) }
    static var htmlTypesFoundation: Self { .target(name: .htmlTypesFoundation) }
}

let package = Package(
    name: "swift-html-types",
    products: [
        .library(name: .htmlTypes, targets: [.htmlTypes]),
        .library(name: .htmlTypesFoundation, targets: [.htmlTypesFoundation]),
        .library(name: .htmlAttributes, targets: [.htmlAttributes]),
        .library(name: .htmlAttributesFoundation, targets: [.htmlAttributesFoundation]),
        .library(name: .htmlElements, targets: [.htmlElements])
    ],
    dependencies: [],
    targets: [
        .target(
            name: .htmlTypes,
            dependencies: [
                .htmlAttributes,
                .htmlElements
            ]
        ),
        .target(
            name: .htmlAttributes,
            dependencies: []
        ),
        .testTarget(
            name: .htmlAttributes.tests,
            dependencies: [
                .htmlAttributes
            ]
        ),
        .target(
            name: .htmlAttributesFoundation,
            dependencies: [
                .htmlAttributes
            ]
        ),
        .testTarget(
            name: .htmlAttributesFoundation.tests,
            dependencies: [
                .htmlAttributesFoundation
            ]
        ),
        .target(
            name: .htmlElements,
            dependencies: [
                .htmlAttributes
            ]
        ),
        .testTarget(
            name: .htmlElements.tests,
            dependencies: [
                .htmlElements
            ]
        ),
        .target(
            name: .htmlTypesFoundation,
            dependencies: [
                .htmlTypes
            ]
        ),
        .testTarget(
            name: .htmlTypesFoundation.tests,
            dependencies: [
                .htmlElements
            ]
        )
    ]
)

extension String {
    var tests: Self { "\(self) Tests" }
}
