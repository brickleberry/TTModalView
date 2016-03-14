Pod::Spec.new do |s|
  s.name         = "TTModalView"
  s.license      = "MIT"
  s.version      = "1.0.1"
  s.summary      = "A modalview in Ios"
  s.description  = "A modalview in Ios,support custom content and present,dismiss animationstyle"
  s.homepage     = "https://github.com/jiangtiteng/TTModalView"
  s.author       = { "titeng.jiang" => "624790402@qq.com" }
  s.source       = { :git => "https://github.com/jiangtiteng/TTModalView.git", :tag => "1.0.1" }
  s.public_header_files = "TTModalView/*.h"
  s.source_files  = "TTModalView/*.{h,m}"
  s.requires_arc = true
  s.dependency "TTAnimations"
  s.ios.deployment_target = '6.0'

end
