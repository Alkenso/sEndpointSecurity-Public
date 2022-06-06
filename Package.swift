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
            targets: ["sEndpointSecurity"]
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
            name: "sEndpointSecurity",
            path: "Binaries/sEndpointSecurity/sEndpointSecurity.xcframework"
        ),
    ]
)
