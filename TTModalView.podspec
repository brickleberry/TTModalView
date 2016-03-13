Pod::Spec.new do |s|
  s.name         = "TTModalView"
  s.version      = "0.0.1"
  s.summary      = "A short description of TTModalView."

  s.description  = ""
  s.homepage     = "http://EXAMPLE/TTModalView"

  s.license      = "MIT"

  s.author             = { "titeng.jiang" => "624790402@qq.com" }

  s.source       = { :git => "http://EXAMPLE/TTModalView.git", :tag => "0.0.1" }


  s.source_files  = "Classes", "TTModalView/**/*.{h,m}"
  s.public_header_files = "Classes/**/*.h"


  s.requires_arc = true
  s.dependency "TTAnimations"

end
