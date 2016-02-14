#
#  Be sure to run `pod spec lint PPShareSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "PPShareSDK"
  s.version      = "0.0.3"
  s.summary      = "PPShareSDK support share."
  #s.description  = <<-DESC
  #                 DESC
  s.homepage     = "https://github.com/upworldcjw"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "jianwei.chen" => "1042294579@qq.com" }
  
  s.platform     = :ios, "7.0"
 
  s.source       = { :git => "git@gitlab.pengpeng.la:ioscore/ppthirdsdk.git", :tag => "0.0.3" }

  s.source_files  = "PPShareSDK/*.{h,m}"
  s.exclude_files = "PPShareSDK/Exclude"
  #s.public_header_files = "PPShareSDK/**/*.h"

  #s.prepare_command = 'sh ./PrepareDownload.sh'

#  s.default_subspec = 'PPShareSDK'
#  s.subspec 'PPShareSDK' do |spec|
#   spec.source = {:git => 'git@gitlab.pengpeng.la:ioscore/pputility.git',:tag => "0.0.4"}
#   spec.ios.dependency  'PPUtilities' 
#  end 

  s.ios.dependency 'PPUtilities'

  s.subspec 'SinaWeibo' do |ss|
      ss.source_files  = 'PPShareSDK/SinaWeibo/*.{h,m}','PPShareSDK/NBShareServiceHeader.h'
      ss.ios.dependency 'JRSwizzle'
      ss.ios.dependency 'WeiboSDK' , '<= 3.1.1'
#    ss.subspec 'libWeiboSDK' do |sss|
#        sss.source_files  = 'PPShareSDK/SinaWeibo/libWeiboSDK/*.{h,m}'
#        sss.vendored_libraries  = "PPShareSDK/SinaWeibo/libWeiboSDK/*.a"
#    end
  end

  s.subspec 'Wechat' do |ss|
      ss.source_files  = 'PPShareSDK/Wechat/*.{h,m}','PPShareSDK/NBShareServiceHeader.h'
      ss.subspec 'WechatSDK' do |sss|
          sss.source_files  = 'PPShareSDK/Wechat/WechatSDK/*.{h,m}'
          sss.vendored_libraries  = "PPShareSDK/Wechat/WechatSDK/*.a"
      end
  end

  s.subspec 'RenRen' do |ss|
      ss.source_files  = 'PPShareSDK/RenRen/*.{h,m}','PPShareSDK/NBShareServiceHeader.h'
      ss.subspec 'RenRenSDK' do |sss|
          sss.vendored_frameworks = 'PPShareSDK/RenRen/RenRenSDK/RennSDK.framework'
          sss.resource = "PPShareSDK/RenRen/RenRenSDK/RennSDK.bundle"
      end
  end

  s.subspec 'Tencent' do |ss|
      ss.source_files  = 'PPShareSDK/Tencent/*.{h,m}','PPShareSDK/NBShareServiceHeader.h'
      ss.subspec 'TencentQQSDK' do |sss|
          sss.vendored_frameworks = 'PPShareSDK/Tencent/TencentQQSDK/TencentOpenAPI.framework'
          sss.resource = "PPShareSDK/Tencent/TencentQQSDK/TencentOpenApi_IOS_Bundle.bundle"
      end
  end

  s.subspec 'FaceBook' do |ss|
      ss.source_files  = 'PPShareSDK/FaceBook/*.{h,m}','PPShareSDK/NBShareServiceHeader.h'
      ss.ios.dependency 'FBSDKCoreKit'
      ss.ios.dependency 'FBSDKLoginKit'
  end
end
