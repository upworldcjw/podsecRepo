Pod::Spec.new do |s|
  s.name         = "PPAddressBook"
  s.version      = "0.0.1"
  s.summary      = "PPAddressBook"
  s.homepage     = "https://github.com/upworldcjw"
  s.license      = "MIT"
  s.author             = { "jianwei.chen" => "1042294579@qq.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "git@gitlab.pengpeng.la:ioscore/ppuilibrary.git",:tag => "AddressBook_0.0.1"}
  s.ios.dependency "Masonry"

  s.source_files  = "AddressBook/**/*.{h,m}"
  s.frameworks = "AddressBook"

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"
end
