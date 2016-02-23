#
#  Be sure to run `pod spec lint NBUtilities.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "PPUtilities"
  s.version      = "0.0.9"
  s.summary      = "PengPeng NBUtilities."
  s.homepage     = "https://test1/NBUtilities"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = "MIT"
  s.author             = { "jianwei.chen" => "1042294579@qq.com" }
  

  s.platform     = :ios
  s.platform     = :ios, "7.0"

  s.source       = { :git => "git@gitlab.pengpeng.la:ioscore/pputility.git", :tag => "0.0.9"}

  s.requires_arc            = true

  #s.exclude_files = "Exclude"

  s.source_files  = "PPUtilities/PPUtilities.h"
  s.public_header_files = "PPUtilities/PPUtilities.h"
  
  s.ios.dependency 'JGProgressHUD'
  s.ios.dependency 'MDHTMLLabel'
  s.ios.dependency 'MLLabel'
  s.ios.dependency 'MJRefresh'
  s.ios.dependency 'SDVersion'
  s.ios.dependency 'JRSwizzle'

  s.subspec 'Macro' do  |macro|
    macro.source_files =  "PPUtilities/Macro/**/*.{h,m}"
  end

  s.subspec 'Helper' do  |helperSub|
    helperSub.ios.dependency 'PPUtilities/Macro'
    helperSub.ios.dependency 'PPUtilities/Category'
    helperSub.source_files =  "PPUtilities/Helper/*.{h,m}"
    helperSub.subspec 'jGProgressHUDHelper' do |jGProgressHUDHelper|
    jGProgressHUDHelper.source_files = "PPUtilities/Helper/JGProgressHUDHelper/*.{h,m}"
    end
  end

  s.subspec 'Category' do  |categorySub|
    categorySub.ios.dependency 'PPUtilities/Macro'
    categorySub.source_files  = "PPUtilities/Category/NBCategory.h"
    categorySub.subspec 'ExternCategory' do |externCategorySub|
       externCategorySub.source_files  = "PPUtilities/Category/ExternCategory/**/*.{h,m}" 
    end

    categorySub.subspec 'IMCategory' do |iMCategorySub|
        iMCategorySub.source_files  = "PPUtilities/Category/IMCategory/**/*.{h,m}" 
    end

    categorySub.subspec 'UIViewCategory' do |uIViewCategorySub|
        uIViewCategorySub.source_files  = "PPUtilities/Category/UIViewCategory/**/*.{h,m}" 
    end

    categorySub.subspec 'UINavigationBarCategory' do |uINavigationBarCategorySub|
        uINavigationBarCategorySub.source_files  = "PPUtilities/Category/UINavigationBarCategory/**/*.{h,m}" 
    end

    categorySub.subspec 'UIImageCategory' do |uIImageCategorySub|
        uIImageCategorySub.source_files  = "PPUtilities/Category/UIImageCategory/**/*.{h,m}" 
    end

    categorySub.subspec 'UIButtonCategory' do |uIButtonCategorySub|
        uIButtonCategorySub.source_files  = "PPUtilities/Category/UIButtonCategory/**/*.{h,m}" 
    end

    categorySub.subspec 'StoryboardHelper' do |storyboardHelperSub|
        storyboardHelperSub.source_files  = "PPUtilities/Category/StoryboardHelper/**/*.{h,m}" 
    end 

    categorySub.subspec 'NSStringCategory' do |nSStringCategorySub|
        nSStringCategorySub.source_files  = "PPUtilities/Category/NSStringCategory/**/*.{h,m}" 
    end 

    categorySub.subspec 'OthersCategory' do |othersCategorySub|
        othersCategorySub.source_files  = "PPUtilities/Category/OthersCategory/**/*.{h,m}" 
    end 
    
    categorySub.subspec 'JSON' do |jSONSub|
        jSONSub.source_files  = "PPUtilities/Category/JSON/**/*.{h,m}" 
    end 

  end

end



