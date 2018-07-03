Pod::Spec.new do |s|
  s.name         = "PPImage"
  s.version      = "0.1.0"
  s.summary      = "PPImage"
  s.homepage     = "https://github.com/upworldcjw"
  s.license      = "MIT"
  s.author       = { "jianwei.chen" => "1042294579@qq.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "git@gitlab.pengpeng.la:ioscore/ppimage.git",:tag => "0.1.0"}
  
  s.ios.dependency "SDWebImage"

  s.source_files  = "PPImage/**/*.{h,m}"
#  s.frameworks = "AddressBook"

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"
end
