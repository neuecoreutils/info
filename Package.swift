// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "coreutils",
    dependencies: [
    .package(
        url: "https://github.com/sersoft-gmbh/swift-sysctl.git", from: "1.0.0"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .testTarget(
            name: "NCTests",
            dependencies: ["coreutils"]),
    ]
)
