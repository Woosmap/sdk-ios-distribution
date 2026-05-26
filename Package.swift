// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let version = "1.2.0-alpha.4"
let moduleName = "Woosmap"
let checksum = "da45a505cfc2ea0b725450d0d4dedfb7277bd5a1ad6a8e823cf6dab9f503fff5"
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