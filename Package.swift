// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

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

