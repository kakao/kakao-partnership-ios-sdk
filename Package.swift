// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// sdk-version: 1.0.0
let package = Package(
    name: "KakaoPartnershipSDK",
    platforms: [ .iOS(.v13)],
    products: [
        .library(
            name: "KakaoPartnershipSDKSocial",
            targets: ["KakaoPartnershipSDKSocial"]),
    ],
    dependencies: [
        .package(name: "KakaoOpenSDK",
                 url: "https://github.com/kakao/kakao-ios-sdk.git",
                 from: "2.22.6"
                )
    ],
    targets: [
        .target(name: "KakaoPartnershipSDKSocial", dependencies: [
            .product(name: "KakaoSDKFriend", package: "KakaoOpenSDK"),
            .product(name: "KakaoSDKTalk", package: "KakaoOpenSDK"),
        ]),
    ],
    swiftLanguageVersions: [.v5]
)
