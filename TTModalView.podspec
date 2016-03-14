Pod::Spec.new do |s|
  s.name         = "TTModalView"
  s.version      = "1.0.0"
  s.summary      = "A modalview in ios"
  s.description  = ""
  s.homepage     = "https://github.com/jiangtiteng/TTModalView"
  s.license      = "MIT"
  s.author       = { "titeng.jiang" => "624790402@qq.com" }
  s.source       = { :git => "https://github.com/jiangtiteng/TTModalView.git", :tag => "1.0.0" }

  s.public_header_files = "TTModalView/*.h"
  s.source_files  = "TTModalView/*.{h,m}"
  s.requires_arc = true
  s.dependency "TTAnimations"

end
