
Pod::Spec.new do |s|
s.name         = 'CDDPagerController'
s.version      = '1.1.1'
s.summary      = '一个非常好用父子控制器框架'
s.description  = "CDDKit is a very useful wrapper class"
s.homepage     = 'https://github.com/RocketsChen/CDDPagerController'
s.license      = { :type => "MIT", :file => "LICENSE" }
s.authors      = {'RcoketsChen' => '1062749739@qq.com'}
s.platform     = :ios, '8.0'
s.source       = {:git => 'https://github.com/RocketsChen/CDDPagerController.git', :tag => '1.1.1'}
s.source_files = "CDDPagerController", "CDDPagerController/**/*"
s.requires_arc = true

s.framework  = "UIKit"

end
