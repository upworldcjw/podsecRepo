#
#  Be sure to run `pod spec lint PPShareSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "PPShareSDK"
  s.version      = "0.1.6"
  s.summary      = "PPShareSDK support share."
  s.homepage     = "https://github.com/upworldcjw"
  s.license      = "MIT"
  s.author             = { "jianwei.chen" => "1042294579@qq.com" }
  s.platform     = :ios, "7.0"
 
  s.source       = { :git => "git@gitlab.pengpeng.la:ioscore/ppthirdsdk.git", :tag => "0.1.6" }
  s.frameworks = "UIKit"
  s.source_files  = "PPShareSDK/*.{h,m}"
  #s.prepare_command = 'sh ./PrepareDownload.sh'

#   spec.ios.dependency  'PPUtilities' 

  s.subspec 'SinaWeibo' do |ss|
      ss.source_files  = 'PPShareSDK/SinaWeibo/*.{h,m}','PPShareSDK/NBShareServiceHeader.h'
      ss.ios.dependency 'JRSwizzle'
      ss.ios.dependency 'WeiboSDK' , '3.1.1'
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
      ss.ios.dependency 'FBSDKShareKit'
  end

  s.ios.dependency 'SDWebImage'
end
