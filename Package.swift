// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let version = "1.0.0"
let moduleName = "Woosmap"
let checksum = "7d62300d7e5ab967ac318b487ae99fc9f9d94a946f9b16f1ec58728a114d88e5"

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
            url: "https://api.ringum.net/maps/sdk/ios/Woosmap/v\(version)/\(moduleName).xcframework.zip",
            checksum: checksum
        )
    ]
)
