// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "silly-calc",
    dependencies: [
        .package(url: "https://github.com/tmandry/AXSwift", from: "0.3.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "silly-calc",
            dependencies: [
                .product(name: "AXSwift", package: "AXSwift")
            ])
    ]
)
