#

Pod::Spec.new do |s|


  s.name         = "JMFoundation"
  s.version      = "0.0.1"
  s.summary      = "积木仓库"
  s.description  = 'This is JMCode for develope app'
  s.ios.deployment_target = "8.0"
  s.requires_arc = true

  s.homepage     = "https://github.com/wangjinshan"
  s.license      = "MIT"
  s.author             = { "1096452045" => "1096452045@qq.com" }
  s.source       = { :git => "https://github.com/wangjinshan/JMFoundation.git", :tag => "#{s.version}" }

  s.source_files  = "SDK/*.{h,m}"
  

end
