

Pod::Spec.new do |s|

  s.name         = "NBDNSAccelerator"
  s.homepage	 = "https://github.com/zhfeng20108"
  s.version      = "0.0.1"
  s.summary      = "ip 直连"
  s.author       = "zhfeng"
  s.platform     = :ios, "7.0"
  s.source       = { :git => "git@gitlab.pengpeng.la:ioscore/ppiptransform.git", :tag => "0.0.1" }
  s.source_files = "*.{h,m}"
  s.requires_arc = true

end
