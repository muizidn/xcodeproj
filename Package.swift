// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "XcodeProj",
    products: [
        .library(name: "TuistXcodeProj", targets: ["TuistXcodeProj"]),
    ],
    dependencies: [
        .package(url: "https://github.com/tadija/AEXML", .upToNextMinor(from: "4.4.0")),
        .package(url: "https://github.com/kylef/PathKit", .upToNextMinor(from: "1.0.0")),
        .package(url: "https://github.com/tuist/Shell", .upToNextMinor(from: "2.0.1")),
    ],
    targets: [
        .target(name: "TuistXcodeProj",
                dependencies: [
                    "PathKit",
                    "AEXML",
                ],
                path: "Sources/XcodeProj"),
        .testTarget(name: "XcodeProjTests", dependencies: ["TuistXcodeProj", "Shell"]),
    ]
)
