// swift-tools-version:5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// sdk-version: 1.0.0
let package = Package(
    name: "KakaoPartnershipSDK",
    platforms: [ .iOS(.v15)],
    products: [
        .library(
            name: "KakaoPartnershipSDKSocial",
            targets: ["KakaoPartnershipSDKSocial"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kakao/kakao-ios-sdk.git", from: "2.29.0")
    ],
    targets: [
        .target(name: "KakaoPartnershipSDKSocial", dependencies: [
            .product(name: "KakaoSDKFriend", package: "kakao-ios-sdk"),
            .product(name: "KakaoSDKTalk", package: "kakao-ios-sdk"),
        ]),
    ],
    swiftLanguageVersions: [.v5]
)
