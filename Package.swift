// swift-tools-version: 6.4

import PackageDescription

let package = Package(
    name: "swift-whatwg-html",
    platforms: [
        .macOS(.v27),
        .iOS(.v27),
        .tvOS(.v27),
        .watchOS(.v27),
        .visionOS(.v27),
    ],
    products: [

        .library(
            name: "WHATWG HTML Shared",
            targets: ["WHATWG HTML Shared"]
        ),

        .library(
            name: "WHATWG HTML FormData",
            targets: ["WHATWG HTML FormData"]
        ),

        .library(
            name: "WHATWG HTML Document",
            targets: ["WHATWG HTML Document"]
        ),
        .library(
            name: "WHATWG HTML Metadata",
            targets: ["WHATWG HTML Metadata"]
        ),
        .library(
            name: "WHATWG HTML Sections",
            targets: ["WHATWG HTML Sections"]
        ),
        .library(
            name: "WHATWG HTML Grouping",
            targets: ["WHATWG HTML Grouping"]
        ),
        .library(
            name: "WHATWG HTML TextSemantics",
            targets: ["WHATWG HTML TextSemantics"]
        ),
        .library(
            name: "WHATWG HTML Links",
            targets: ["WHATWG HTML Links"]
        ),
        .library(
            name: "WHATWG HTML Edits",
            targets: ["WHATWG HTML Edits"]
        ),
        .library(
            name: "WHATWG HTML Embedded",
            targets: ["WHATWG HTML Embedded"]
        ),
        .library(
            name: "WHATWG HTML Tables",
            targets: ["WHATWG HTML Tables"]
        ),
        .library(
            name: "WHATWG HTML Forms",
            targets: ["WHATWG HTML Forms"]
        ),
        .library(
            name: "WHATWG HTML Interactive",
            targets: ["WHATWG HTML Interactive"]
        ),
        .library(
            name: "WHATWG HTML Scripting",
            targets: ["WHATWG HTML Scripting"]
        ),
        .library(
            name: "WHATWG HTML CustomElements",
            targets: ["WHATWG HTML CustomElements"]
        ),
        .library(
            name: "WHATWG HTML Obsolete",
            targets: ["WHATWG HTML Obsolete"]
        ),

        .library(
            name: "WHATWG HTML GlobalAttributes",
            targets: ["WHATWG HTML GlobalAttributes"]
        ),
        .library(
            name: "WHATWG HTML FormAttributes",
            targets: ["WHATWG HTML FormAttributes"]
        ),
        .library(
            name: "WHATWG HTML LinkAttributes",
            targets: ["WHATWG HTML LinkAttributes"]
        ),
        .library(
            name: "WHATWG HTML MediaAttributes",
            targets: ["WHATWG HTML MediaAttributes"]
        ),
        .library(
            name: "WHATWG HTML TableAttributes",
            targets: ["WHATWG HTML TableAttributes"]
        ),
        .library(
            name: "WHATWG HTML ScriptAttributes",
            targets: ["WHATWG HTML ScriptAttributes"]
        ),

        .library(
            name: "WHATWG HTML Elements",
            targets: ["WHATWG HTML Elements"]
        ),
        .library(
            name: "WHATWG HTML Attributes",
            targets: ["WHATWG HTML Attributes"]
        ),

        .library(
            name: "WHATWG HTML",
            targets: ["WHATWG HTML"]
        ),
    ],
    traits: [
        .trait(
            name: "Foundation",
            description: "Foundation integration for WHATWG HTML"
        )
    ],
    dependencies: [
        .package(url: "https://github.com/swift-whatwg/swift-whatwg.git", branch: "main"),
        .package(url: "https://github.com/swift-ietf/swift-rfc-2045.git", branch: "main"),
        .package(url: "https://github.com/swift-ietf/swift-rfc-2045-coder.git", branch: "main"),
        .package(url: "https://github.com/swift-iso/swift-iso-8601.git", branch: "main"),
        .package(
            url: "https://github.com/swift-atoms/swift-standard-library-extensions.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-atoms/swift-geometry.git",
            branch: "main",
            traits: ["Affine"]
        ),
        .package(
            url: "https://github.com/swift-atoms/swift-ascii.git",
            branch: "main", traits: ["Parser", "Serializer"]
        ),
        .package(url: "https://github.com/swift-atoms/swift-formatter.git", branch: "main", traits: ["Radix"]),
    ],
    targets: [

        .target(
            name: "WHATWG HTML Shared",
            dependencies: [
                .product(name: "WHATWG", package: "swift-whatwg"),
                .product(
                    name: "Standard Library Extensions",
                    package: "swift-standard-library-extensions"
                ),
                .product(name: "Geometry", package: "swift-geometry"),
                .product(name: "ASCII", package: "swift-ascii"),
            ]
        ),

        .target(
            name: "WHATWG HTML FormData",
            dependencies: [
                .target(name: "WHATWG HTML Shared")
            ]
        ),

        .target(
            name: "WHATWG HTML GlobalAttributes",
            dependencies: [
                .target(name: "WHATWG HTML Shared"),
                .product(name: "ISO 8601", package: "swift-iso-8601"),
                .product(name: "Formatter", package: "swift-formatter"),
            ]
        ),
        .target(
            name: "WHATWG HTML FormAttributes",
            dependencies: [
                .target(name: "WHATWG HTML Shared"),
                .target(name: "WHATWG HTML GlobalAttributes"),
                .product(name: "RFC 2045", package: "swift-rfc-2045"),
                .product(name: "RFC 2045 Coder", package: "swift-rfc-2045-coder"),
                .product(name: "ISO 8601", package: "swift-iso-8601"),
            ]
        ),
        .target(
            name: "WHATWG HTML LinkAttributes",
            dependencies: [
                .target(name: "WHATWG HTML Shared"),
                .product(name: "RFC 2045", package: "swift-rfc-2045"),
                .product(name: "RFC 2045 Coder", package: "swift-rfc-2045-coder"),
                .target(name: "WHATWG HTML MediaAttributes"),
            ]
        ),
        .target(
            name: "WHATWG HTML MediaAttributes",
            dependencies: [
                .target(name: "WHATWG HTML Shared"),
                .product(name: "RFC 2045", package: "swift-rfc-2045"),
                .product(name: "RFC 2045 Coder", package: "swift-rfc-2045-coder"),
            ]
        ),
        .target(
            name: "WHATWG HTML TableAttributes",
            dependencies: [.target(name: "WHATWG HTML Shared")]
        ),
        .target(
            name: "WHATWG HTML ScriptAttributes",
            dependencies: [
                .target(name: "WHATWG HTML Shared"),
                .product(name: "RFC 2045", package: "swift-rfc-2045"),
                .product(name: "RFC 2045 Coder", package: "swift-rfc-2045-coder"),
            ]
        ),

        .target(
            name: "WHATWG HTML Document",
            dependencies: [
                .target(name: "WHATWG HTML Shared"),
                .target(name: "WHATWG HTML GlobalAttributes"),
                .target(name: "WHATWG HTML Attributes"),
            ]
        ),

        .target(
            name: "WHATWG HTML Metadata",
            dependencies: [
                .target(name: "WHATWG HTML Shared"),
                .target(name: "WHATWG HTML GlobalAttributes"),
                .target(name: "WHATWG HTML LinkAttributes"),
                .target(name: "WHATWG HTML ScriptAttributes"),
                .target(name: "WHATWG HTML FormAttributes"),
            ]
        ),

        .target(
            name: "WHATWG HTML Sections",
            dependencies: [
                .target(name: "WHATWG HTML Shared"),
                .target(name: "WHATWG HTML GlobalAttributes"),
            ]
        ),

        .target(
            name: "WHATWG HTML Grouping",
            dependencies: [
                .target(name: "WHATWG HTML Shared"),
                .target(name: "WHATWG HTML GlobalAttributes"),
                .target(name: "WHATWG HTML FormAttributes"),
            ]
        ),

        .target(
            name: "WHATWG HTML TextSemantics",
            dependencies: [
                .target(name: "WHATWG HTML Shared"),
                .target(name: "WHATWG HTML GlobalAttributes"),
                .target(name: "WHATWG HTML LinkAttributes"),
                .target(name: "WHATWG HTML FormAttributes"),
                .target(name: "WHATWG HTML MediaAttributes"),
            ]
        ),

        .target(
            name: "WHATWG HTML Links",
            dependencies: [
                .target(name: "WHATWG HTML Shared"),
                .target(name: "WHATWG HTML LinkAttributes"),
            ]
        ),

        .target(
            name: "WHATWG HTML Edits",
            dependencies: [
                .target(name: "WHATWG HTML Shared"),
                .target(name: "WHATWG HTML GlobalAttributes"),
            ]
        ),

        .target(
            name: "WHATWG HTML Embedded",
            dependencies: [
                .target(name: "WHATWG HTML Shared"),
                .target(name: "WHATWG HTML GlobalAttributes"),
                .target(name: "WHATWG HTML MediaAttributes"),
                .target(name: "WHATWG HTML FormAttributes"),
                .target(name: "WHATWG HTML LinkAttributes"),
                .target(name: "WHATWG HTML ScriptAttributes"),
            ]
        ),

        .target(
            name: "WHATWG HTML Tables",
            dependencies: [
                .target(name: "WHATWG HTML Shared"),
                .target(name: "WHATWG HTML GlobalAttributes"),
                .target(name: "WHATWG HTML TableAttributes"),
                .target(name: "WHATWG HTML MediaAttributes"),
            ]
        ),

        .target(
            name: "WHATWG HTML Forms",
            dependencies: [
                .target(name: "WHATWG HTML Shared"),
                .target(name: "WHATWG HTML GlobalAttributes"),
                .target(name: "WHATWG HTML FormAttributes"),
                .target(name: "WHATWG HTML TableAttributes"),
                .target(name: "WHATWG HTML MediaAttributes"),
                .target(name: "WHATWG HTML LinkAttributes"),
            ]
        ),

        .target(
            name: "WHATWG HTML Interactive",
            dependencies: [
                .target(name: "WHATWG HTML Shared"),
                .target(name: "WHATWG HTML GlobalAttributes"),
                .target(name: "WHATWG HTML FormAttributes"),
            ]
        ),

        .target(
            name: "WHATWG HTML Scripting",
            dependencies: [
                .target(name: "WHATWG HTML Shared"),
                .target(name: "WHATWG HTML GlobalAttributes"),
                .target(name: "WHATWG HTML ScriptAttributes"),
                .target(name: "WHATWG HTML FormAttributes"),
                .target(name: "WHATWG HTML MediaAttributes"),

                .target(name: "WHATWG HTML LinkAttributes"),
            ]
        ),

        .target(
            name: "WHATWG HTML CustomElements",
            dependencies: [
                .target(name: "WHATWG HTML Shared"),
                .target(name: "WHATWG HTML GlobalAttributes"),
            ]
        ),

        .target(
            name: "WHATWG HTML Obsolete",
            dependencies: [
                .target(name: "WHATWG HTML Shared"),
                .target(name: "WHATWG HTML GlobalAttributes"),
                .target(name: "WHATWG HTML TableAttributes"),
                .target(name: "WHATWG HTML FormAttributes"),
                .target(name: "WHATWG HTML MediaAttributes"),
            ]
        ),

        .target(
            name: "WHATWG HTML Elements",
            dependencies: [
                .target(name: "WHATWG HTML Document"),
                .target(name: "WHATWG HTML Metadata"),
                .target(name: "WHATWG HTML Sections"),
                .target(name: "WHATWG HTML Grouping"),
                .target(name: "WHATWG HTML TextSemantics"),
                .target(name: "WHATWG HTML Links"),
                .target(name: "WHATWG HTML Edits"),
                .target(name: "WHATWG HTML Embedded"),
                .target(name: "WHATWG HTML Tables"),
                .target(name: "WHATWG HTML Forms"),
                .target(name: "WHATWG HTML Interactive"),
                .target(name: "WHATWG HTML Scripting"),
                .target(name: "WHATWG HTML CustomElements"),
                .target(name: "WHATWG HTML Obsolete"),
            ]
        ),

        .target(
            name: "WHATWG HTML Attributes",
            dependencies: [
                .target(name: "WHATWG HTML GlobalAttributes"),
                .target(name: "WHATWG HTML FormAttributes"),
                .target(name: "WHATWG HTML LinkAttributes"),
                .target(name: "WHATWG HTML MediaAttributes"),
                .target(name: "WHATWG HTML TableAttributes"),
                .target(name: "WHATWG HTML ScriptAttributes"),
            ]
        ),

        .target(
            name: "WHATWG HTML",
            dependencies: [
                .target(name: "WHATWG HTML Shared"),
                .target(name: "WHATWG HTML FormData"),
                .target(name: "WHATWG HTML Elements"),
                .target(name: "WHATWG HTML Attributes"),
            ]
        ),

        .testTarget(
            name: "WHATWG HTML Tests",
            dependencies: [
                .target(name: "WHATWG HTML"),
                .target(name: "WHATWG HTML Shared"),
                .target(name: "WHATWG HTML FormData"),
                .target(name: "WHATWG HTML Elements"),
                .target(name: "WHATWG HTML Attributes"),
                .target(name: "WHATWG HTML Document"),
                .target(name: "WHATWG HTML Metadata"),
                .target(name: "WHATWG HTML Sections"),
                .target(name: "WHATWG HTML Grouping"),
                .target(name: "WHATWG HTML TextSemantics"),
                .target(name: "WHATWG HTML Embedded"),
                .target(name: "WHATWG HTML Forms"),
                .target(name: "WHATWG HTML Obsolete"),
                .target(name: "WHATWG HTML GlobalAttributes"),
                .target(name: "WHATWG HTML FormAttributes"),
                .target(name: "WHATWG HTML LinkAttributes"),
                .target(name: "WHATWG HTML MediaAttributes"),
                .target(name: "WHATWG HTML TableAttributes"),
                .target(name: "WHATWG HTML ScriptAttributes"),
                .product(
                    name: "Standard Library Extensions",
                    package: "swift-standard-library-extensions"
                ),
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

for target in package.targets where ![.system, .binary, .plugin, .macro].contains(target.type) {
    target.swiftSettings = (target.swiftSettings ?? []) + [
        .strictMemorySafety(),
        .enableUpcomingFeature("ExistentialAny"),
        .enableUpcomingFeature("InternalImportsByDefault"),
        .enableUpcomingFeature("MemberImportVisibility"),
        .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
        .enableUpcomingFeature("InferIsolatedConformances"),
        .enableExperimentalFeature("Lifetimes"),
    ]
}
