// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let version = "1.0.1.alpha2"
let moduleName = "Woosmap"
let checksum = "490725ab151933e17cbd1a8d1870c09af02433e9b22644c9c951d5d1a329be11"
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