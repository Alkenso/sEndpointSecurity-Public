// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "sEndpointSecurityDemo",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "sEndpointSecurityDemo",
            targets: ["sEndpointSecurityDemo"]
        ),
        .library(
            name: "sEndpointSecurityLinkDependencies",
            targets: ["sEndpointSecurityLinkDependencies"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Alkenso/SwiftConvenience.git", from: "0.0.9"),
    ],
    targets: [
        .target(
            name: "sEndpointSecurityLinkDependencies",
            dependencies: ["SwiftConvenience"],
            linkerSettings: [.linkedLibrary("EndpointSecurity")]
        ),
        .binaryTarget(
            name: "sEndpointSecurityDemo",
            path: "Binaries/sEndpointSecurity/sEndpointSecurity.xcframework"
        ),
    ]
)
