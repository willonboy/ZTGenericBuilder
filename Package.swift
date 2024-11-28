// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "ZTGenericBuilder",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v14),
        .watchOS(.v7)
    ],
    products: [
        .library(
            name: "ZTGenericBuilder",
            targets: ["ZTGenericBuilder"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "ZTGenericBuilder",
            dependencies: []),
    ],
    swiftLanguageVersions: [.version("5.1")]
)
