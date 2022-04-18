// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MQTTClient",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MQTTClient",
            targets: ["MQTTClient"]),
    ],
    dependencies: [
        .package(url: "git@github.com:aibo-cora/SocketRocket-SPM.git", exact: "0.6.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MQTTClient",
            dependencies: [.product(name: "SocketRocket", package: "SocketRocket-SPM")],
            path: "Sources/MQTTClient"),
        .testTarget(
            name: "MQTTClientTests",
            dependencies: ["MQTTClient"]),
    ]
)
