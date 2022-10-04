// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MQTTClient",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "MQTTClient", targets: ["MQTTClient"]),
    ],
    dependencies: [
        .package(url: "git@github.com:robnadin/SocketRocket.git", branch: "spm-support")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MQTTClient",
            dependencies: [.product(name: "SocketRocket", package: "SocketRocket")],
            path: "Sources/MQTTClient",
            sources: [""],
            publicHeadersPath: nil
        )
    ]
)
