// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "KrakenKit",
  platforms: [
    .macOS(.v14),
    .visionOS(.v1),
    .iOS(.v17),
    .tvOS(.v17),
    .watchOS(.v10),
  ],
  products: [
    .library(
      name: "KrakenKit",
      targets: ["KrakenKit"]
    ),
  ],
  targets: [
    .target(
      name: "KrakenKit"
    ),
    .executableTarget(
      name: "KrakenApp",
      dependencies: ["KrakenKit"],
      resources: [
        .process("Resources"),
      ]
    ),
    .testTarget(
      name: "KrakenKitTests",
      dependencies: ["KrakenKit"]
    ),
  ]
)
