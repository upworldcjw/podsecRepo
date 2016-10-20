#
#  Be sure to run `pod spec lint NBUtilities.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "PPUtilities"
  s.version      = "0.1.9"
  s.summary      = "PengPeng PPUtilities."
  s.homepage     = "https://test1/PPUtilitiesLite"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = "MIT"
  s.author             = { "jianwei.chen" => "1042294579@qq.com" }
  

  s.platform     = :ios
  s.platform     = :ios, "7.0"

  s.source       = { :git => "git@gitlab.pengpeng.la:ioscore/pputility.git", :tag => "0.1.9Lite"}

  s.requires_arc            = true

#  s.default_subspecs        = "Category/IMNSDate"
  s.default_subspecs        = "Core","Category/Base","Category/JSON","Category/NSStringCategory","Category/IMCategory","Category/UIImageCategory","UI/Base","UI/UINavigationBarCategory","Helper/Base","Helper/UIDeviceHelper"

#
#"PPUtilities/Category/OthersCategory"
#"PPUtilities/Category/IMNSDate"
#
#"PPUtilities/Helper/JGProgressHUDHelper"
#"PPUtilities/Helper/MDHTMLLabelHelper"
#"PPUtilities/Helper/MJRefreshHelper"
#"PPUtilities/Helper/MLLabelHelper"
#"PPUtilities/Helper/StoryboardHelper"
#
#"PPUtilities/Macro"

  s.subspec 'Core' do  |core|
    core.source_files =  "PPUtilities/Core/**/*.{h,m}"
  end

  s.subspec 'Category' do  |categorySub|
 #   categorySub.default_subspecs = "JSON","NSStringCategory","IMCategory"

    categorySub.subspec 'Base' do |base|
        base.source_files  = "PPUtilities/Category/Base/**/*.{h,m}" 
    end 

    categorySub.subspec 'JSON' do |jSONSub|
        jSONSub.source_files  = "PPUtilities/Category/JSON/**/*.{h,m}" 
    end 

    categorySub.subspec 'NSStringCategory' do |nSStringCategorySub|
       nSStringCategorySub.source_files  = "PPUtilities/Category/NSStringCategory/**/*.{h,m}" 
    end 

    categorySub.subspec 'IMCategory' do |iMCategorySub|
        iMCategorySub.source_files  = "PPUtilities/Category/IMCategory/**/*.{h,m}" 
    end

    categorySub.subspec 'UIImageCategory' do |uIImageCategorySub|
        uIImageCategorySub.source_files  = "PPUtilities/Category/UIImageCategory/**/*.{h,m}" 
    end

    categorySub.subspec 'IMNSDate' do |ssp|
        ssp.ios.dependency 'PPUtilities/Category/Base'
        ssp.ios.dependency 'JWDateSetting'
        ssp.source_files  = "PPUtilities/Category/IMNSDate/**/*.{h,m}" 
    end

    categorySub.subspec 'OthersCategory' do |othersCategorySub|
        othersCategorySub.source_files  = "PPUtilities/Category/OthersCategory/**/*.{h,m}" 
    end 

  end  


  s.subspec 'UI' do  |uiSub|

    uiSub.subspec 'Base' do |base|
        base.source_files  = "PPUtilities/UI/base/**/*.{h,m}" 
    end

    uiSub.subspec 'UINavigationBarCategory' do |ssp|
        ssp.ios.dependency 'JRSwizzle'
        ssp.source_files  = "PPUtilities/UI/UINavigationBarCategory/**/*.{h,m}" 
    end 

  end 


  s.subspec 'Helper' do  |helper|

    helper.subspec 'Base' do |ssp|
       ssp.source_files  = "PPUtilities/Helper/Base/**/*.{h,m}" 
    end

    helper.subspec 'JGProgressHUDHelper' do |ssp|
       ssp.ios.dependency 'JGProgressHUD'
       ssp.source_files  = "PPUtilities/Helper/JGProgressHUDHelper/**/*.{h,m}" 
    end

    helper.subspec 'MDHTMLLabelHelper' do |ssp|
       ssp.ios.dependency 'MDHTMLLabel'
       ssp.source_files  = "PPUtilities/Helper/MDHTMLLabelHelper/**/*.{h,m}" 
    end

    helper.subspec 'StoryboardHelper' do |storyboardHelperSub|
        storyboardHelperSub.source_files  = "PPUtilities/Helper/StoryboardHelper/**/*.{h,m}" 
    end 

    helper.subspec 'MJRefreshHelper' do |ssp|
       ssp.ios.dependency 'MJRefresh'
       ssp.source_files  = "PPUtilities/Helper/MJRefreshHelper/**/*.{h,m}" 
    end

    helper.subspec 'MLLabelHelper' do |ssp|
       ssp.ios.dependency 'MLLabel'
       ssp.source_files  = "PPUtilities/Helper/MLLabelHelper/**/*.{h,m}" 
    end

    helper.subspec 'UIDeviceHelper' do |ssp|
        ssp.ios.dependency 'SDVersion'
        ssp.source_files =  "PPUtilities/Helper/UIDeviceHelper/**/*.{h,m}"
    end
  end 

  s.subspec 'Macro' do  |macro|
    macro.source_files  = "PPUtilities/Macro/**/*.{h,m}" 
  end

end



