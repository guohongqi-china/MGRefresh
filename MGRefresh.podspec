#
#  Be sure to run `pod spec lint MGRefresh.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "MGRefresh"
  spec.version      = "0.0.1"
  spec.summary      = "pull refresh"

  spec.homepage     = "https://github.com/guohongqi-china/MGRefresh"
  spec.license      = "MIT"
  spec.author             = { "guohongqi-china" => "820003039@qq.com" }


  spec.platform     = :ios, "10.0"
  spec.ios.deployment_target = "10.0"
  spec.source       = { :git => "hhttps://github.com/guohongqi-china/MGRefresh.git", :tag => s.version.to_s }

  spec.source_files  = "MGRefresh/Component/*.{h,m}"
  spec.public_header_files = "MGRefresh/**/*.{h}"

  spec.requires_arc = true # 是否启用ARC
  spec.frameworks = "UIKit", "Foundation" # 支持的框架


end
