// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "OpenCastSwift",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "OpenCastSwift iOS",
            targets: ["OpenCastSwift iOS"]),
    ],
    dependencies: [
        .package(name: "SwiftProtobuf", url: "https://github.com/apple/swift-protobuf", .upToNextMajor(from: "1.14.0")),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON", .upToNextMajor(from: "5.0.0")),
    ],
    targets: [
        .target(
            name: "OpenCastSwift iOS",
            dependencies: [
                "SwiftProtobuf",
                "SwiftyJSON"
            ],
            path: "Source"
        ),
    ]
)
