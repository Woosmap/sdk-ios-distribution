// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let version = "1.0.4"
let moduleName = "Woosmap"
let checksum = "652f24cda9bfbda796bd25c40a7e39eb0d2c72ba105aeb1b10940259e2bd1165"
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