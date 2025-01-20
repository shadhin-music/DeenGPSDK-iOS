#
#  Be sure to run `pod spec lint DeenIslamSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # Metadata
  spec.name         = "DeenIslamSDK"
  spec.version      = "1.0.0"
  spec.summary      = "An Islamic SDK for MyGP iOS app"
  spec.description  = <<-DESC
    DeenIslamSDK provides Islamic content and features for the MyGP iOS app, including prayer times, Quran recitations, and other Islamic functionalities.
  DESC

  spec.homepage     = "https://github.com/shadhin-music/DeenGPSDK-iOS.git"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Talut Mahamud Deep" => "gakkdeep@gmail.com" }
  
  # Platform
  spec.platform          = :ios
  spec.ios.deployment_target = "13.0"
  spec.swift_version     = "5.7"

  # Source location
  spec.source       = { :git => "https://github.com/shadhin-music/DeenGPSDK-iOS.git", :tag => "#{spec.version}" }

  # XCFramework (if your SDK is a framework)
  spec.ios.vendored_frameworks = "DeenIslamSDK.xcframework"

  spec.requires_arc = true

end
