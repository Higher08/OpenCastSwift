// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "OpenCastSwift",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_14),
    ],
    products: [
        .library(
            name: "OpenCastSwift",
            targets: ["OpenCastSwift"]),
    ],
    dependencies: [
        .package(name: "SwiftProtobuf", url: "https://github.com/apple/swift-protobuf", .upToNextMajor(from: "1.14.0")),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON", .upToNextMajor(from: "5.0.0")),
    ],
    targets: [
        .target(
            name: "OpenCastSwift",
            dependencies: [
                "SwiftProtobuf",
                "SwiftyJSON"
            ],
            path: "Source"
        ),
    ]
)
