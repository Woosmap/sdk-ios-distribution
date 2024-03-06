// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let version = "1.1.0-alpha.6"
let moduleName = "Woosmap"
let checksum = "f3fe96b74f19beb3de6f1e8f122a715f98fad17cc7beef4a752ad4d37d1ffffc"
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