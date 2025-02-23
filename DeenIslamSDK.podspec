Pod::Spec.new do |spec|

  # Metadata
  spec.name         = "DeenIslamSDK"
  spec.version      = "1.1.2"
  spec.summary      = "An Islamic SDK for MyGP iOS app"
  spec.description  = <<-DESC
    DeenIslamSDK provides Islamic content and features for the MyGP iOS app, including prayer times, 
    Quran recitations, and other Islamic functionalities.
  DESC

  spec.homepage     = "https://github.com/shadhin-music/DeenGPSDK-iOS.git"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Talut Mahamud Deep" => "gakkdeep@gmail.com" }

  # Platform
  spec.platform     = :ios
  spec.ios.deployment_target = "13.0"
  spec.swift_version = "5.7"

  # Source location
  spec.source       = { 
    :git => "https://github.com/shadhin-music/DeenGPSDK-iOS.git", 
    :tag => spec.version.to_s 
  }

  # XCFramework
  spec.ios.vendored_frameworks = "DeenIslamSDK.xcframework"

  # Build settings
  spec.pod_target_xcconfig = {
    'SKIP_INSTALL' => 'NO',
    'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES',
    'ENABLE_BITCODE' => 'NO',
    'OTHER_LDFLAGS' => '$(inherited) -ObjC'
  }

  spec.user_target_xcconfig = {
    'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES',
    'ENABLE_BITCODE' => 'NO'
  }

  spec.requires_arc = true
  spec.static_framework = true
  spec.frameworks = 'UIKit', 'WebKit', 'EventKit', 'CoreLocation'

end
