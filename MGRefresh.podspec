#
#  Be sure to run `pod spec lint MGRefresh.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#


Pod::Spec.new do |s|

  s.name         = "MGRefresh"
  s.version      = "0.0.3"
  s.summary      = "pull refresh"

  s.description  = <<-DESC
    Net request ,call back data Serialization to CH
                      DESC
  s.homepage     = "https://github.com/guohongqi-china/MGRefresh"
  s.license      = "MIT"
  s.author             = { "guohongqi-china" => "820003039@qq.com" }


  s.platform     = :ios, "10.0"
  s.ios.deployment_target = "10.0"
  s.source       = { :git => "https://github.com/guohongqi-china/MGRefresh.git", :tag => s.version.to_s }

  s.source_files  = "MGRefresh/MGrefresh.h"
  s.public_header_files = "MGRefresh/MGrefresh.h"

  s.requires_arc = true # 是否启用ARC
  s.frameworks = "UIKit", "Foundation" # 支持的框架
  pch_AF = <<-EOS
#ifndef TARGET_OS_IOS
  #define TARGET_OS_IOS TARGET_OS_IPHONE
#endif

EOS
  s.prefix_header_contents = pch_AF
  s.ios.deployment_target = '10.0'

  s.subspec 'FrameWork' do |ss|
    ss.source_files = 'MGRefresh/Component/**/*.{h,m}'
    ss.public_header_files = 'MGrefresh/Component/**/*.{h}'
    ss.ios.frameworks = 'MobileCoreServices', 'CoreGraphics'
  end

end
