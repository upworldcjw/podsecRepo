Pod::Spec.new do |s|
  s.name         = "PPPaymentIAP"
  s.version      = "0.0.2"
  s.summary      = "PP IAP Utility"
  s.homepage     = "https://github.com/upworldcjw"
  s.license      = "MIT"
  s.author             = { "jianwei.chen" => "1042294579@qq.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "git@gitlab.pengpeng.la:ioscore/pppayment.git", :tag => "0.0.2" }

  s.source_files  = "RMStore/**/*.{h,m}"
  s.frameworks = "StoreKit", "Security"
  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"
end
