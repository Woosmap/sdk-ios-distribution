// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let version = "1.1.0-beta.1"
let moduleName = "Woosmap"
let checksum = "a97387fde9273998da9ba0ef283cfe2c8cc4ddfd18fd227e7a1e88404e01f55a"
let binariesBaseURL = "https://native-sdk.woosmap.com"

let package = Package(
    name: moduleName,
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: moduleName,
            targets: [moduleName]
        )
    ],
    targets: [
        .binaryTarget(
            name: moduleName,
            url: "\(binariesBaseURL)/ios/Woosmap/\(version)/\(moduleName).xcframework.zip",
            checksum: checksum
        )
    ]
)