Pod::Spec.new do |s|

  s.name         				= "WWMenuView"
  s.version      				= "0.0.1"
  s.summary      				= "WWMenuView is a SideMenu. (一個側邊選單)"
  s.homepage     				= "https://github.com/William-Weng/WWMenuView"
  s.license      				= { :type => "MIT", :file => "LICENSE" }
  s.author             			= { "翁禹斌(William.Weng)" => "linuxice0609@gmail.com" }
  s.platform 					= :ios, "10.0"
  s.ios.vendored_frameworks 	= "WWMenuView.framework"
  s.source 						= { :git => "https://github.com/William-Weng/WWMenuView.git", :tag => "#{s.version}" }
  s.frameworks 					= 'UIKit'
  
end