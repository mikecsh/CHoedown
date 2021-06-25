// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CHoedown",
    products: [
        .library(name: "CHoedown", targets: ["CHoedown"])
    ],
    targets: [
        .target(name: "libhoedown", dependencies: [], exclude: []),
        .target(name: "CHoedown", dependencies: ["libhoedown"]),
        .testTarget(name: "CHoedownTests", dependencies: ["CHoedown"])
    ]
)

