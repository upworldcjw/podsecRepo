Pod::Spec.new do |s|
  s.name         = "PPLocationManager"
  s.version      = "0.0.1"
  s.summary      = "PPLocationManager"
  s.homepage     = "https://github.com/upworldcjw"
  s.license      = "MIT"
  s.author             = { "jianwei.chen" => "1042294579@qq.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "git@gitlab.pengpeng.la:ioscore/ppuilibrary.git", :tag => "PPLocationManager_0.0.1" }
  
  s.ios.dependency "Masonry"
  s.ios.dependency "MSWeakTimer",'~> 1.1.0'
  s.ios.dependency "PPUtilities"

  s.source_files  = "LocationManager/**/*.{h,m}"
  s.frameworks = "CoreLocation"

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"
end
