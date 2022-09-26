// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let version = "1.0.0"
let moduleName = "Woosmap"
let checksum = "cdc35ff1c7f96d721f58a2e17c09f68d2c17547e5767d75279fda1977b51dbc7"

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
            url: "https://api.ringum.net/sdk/releases/ios/packages/\(version)/\(moduleName).xcframework.zip",
            checksum: checksum
        )
    ]
)
