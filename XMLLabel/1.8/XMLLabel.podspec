Pod::Spec.new do |s|
s.name         = "XMLLabel"
s.version      = "1.8"
s.summary      = "UILabel with TextKit. support Link and Expression. (iOS 7+)"

s.homepage     = 'https://github.com/upworldcjw'
s.license      = { :type => 'MIT'}
s.author       = { "upworldcjw" => "dudl@qq.com" }

s.source       = {
:git => "https://github.com/upworldcjw/MLLabel.git",
:tag => "MLLable_0.1.8"
}

s.platform     = :ios, '7.0'
s.public_header_files = 'Classes/*.h'
s.source_files  = 'Classes/*.{h,m}'
s.requires_arc  = true

end