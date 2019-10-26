Pod::Spec.new do |s|

  s.name         = "ZYLoggingCocoaLumberjack"
  s.version      = "1.0.0"
  s.summary      = "基于CocoaLumberjack对 ZYLogging-API实现."


  s.homepage     = "https://github.com/Eyshen"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "张一" => "Eason_zhangyi@163.com" }

  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/Eyshen/ios-zy-loggingCocoaLumberjack.git", :tag => "#{s.version}" }

  s.source_files  = "Classes/*.{h,m}"
  s.exclude_files = "Example"

  s.public_header_files = "Classes/*.h"

  s.frameworks = "Foundation", "UIKit"

  s.requires_arc = true

  s.dependency "CocoaLumberjack", '~> 3.4'
  
  s.dependency "ZYLoggingAPI"

end
