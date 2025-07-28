// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

extension String {
    static let htmlTypes: Self = "HTMLTypes"
    static let htmlAttributeTypes: Self = "HTMLAttributeTypes"
    static let htmlElementTypes: Self = "HTMLElementTypes"
    static let htmlTypesFoundation: Self = "HTMLTypesFoundation"
    static let htmlAttributeTypesFoundation: Self = "HTMLAttributeTypesFoundation"
    static let htmlElementTypesFoundation: Self = "HTMLElementTypesFoundation"
}

extension Target.Dependency {
    static var htmlAttributeTypes: Self { .target(name: .htmlAttributeTypes) }
    static var htmlElementTypes: Self { .target(name: .htmlElementTypes) }
    static var htmlTypes: Self { .target(name: .htmlTypes) }
    static var htmlTypesFoundation: Self { .target(name: .htmlTypesFoundation) }
    static var htmlAttributeTypesFoundation: Self { .target(name: .htmlAttributeTypesFoundation) }
    static var htmlElementTypesFoundation: Self { .target(name: .htmlElementTypesFoundation) }
}

let package = Package(
    name: "swift-html-types",
    products: [
        .library(name: .htmlTypes, targets: [.htmlTypes]),
        .library(name: .htmlTypesFoundation, targets: [.htmlTypesFoundation]),
        .library(name: .htmlAttributeTypes, targets: [.htmlAttributeTypes]),
        .library(name: .htmlAttributeTypesFoundation, targets: [.htmlAttributeTypesFoundation]),
        .library(name: .htmlElementTypes, targets: [.htmlElementTypes]),
        .library(name: .htmlElementTypesFoundation, targets: [.htmlElementTypesFoundation])
    ],
    dependencies: [],
    targets: [
        .target(
            name: .htmlTypes,
            dependencies: [
                .htmlAttributeTypes,
                .htmlElementTypes
            ]
        ),
        .target(
            name: .htmlAttributeTypes,
            dependencies: []
        ),
        .testTarget(
            name: .htmlAttributeTypes.tests,
            dependencies: [
                .htmlAttributeTypes
            ]
        ),
        .target(
            name: .htmlElementTypes,
            dependencies: [
                .htmlAttributeTypes
            ]
        ),
        .testTarget(
            name: .htmlElementTypes.tests,
            dependencies: [
                .htmlElementTypes
            ]
        ),
        .target(
            name: .htmlTypesFoundation,
            dependencies: [
                .htmlElementTypesFoundation,
                .htmlAttributeTypesFoundation
            ]
        ),
        .testTarget(
            name: .htmlTypesFoundation.tests,
            dependencies: [
                .htmlTypesFoundation
            ]
        ),
        .target(
            name: .htmlAttributeTypesFoundation,
            dependencies: [
                .htmlAttributeTypes
            ]
        ),
        .testTarget(
            name: .htmlAttributeTypesFoundation.tests,
            dependencies: [
                .htmlAttributeTypesFoundation
            ]
        ),
        .target(
            name: .htmlElementTypesFoundation,
            dependencies: [
                .htmlElementTypes
            ]
        ),
        .testTarget(
            name: .htmlElementTypesFoundation.tests,
            dependencies: [
                .htmlElementTypesFoundation
            ]
        )
    ],
    swiftLanguageModes: [.v5]
)

extension String { var tests: Self { "\(self) Tests" } }
