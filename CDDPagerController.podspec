
Pod::Spec.new do |s|
s.name         = 'CDDPagerController'
s.version      = '1.1.5'
s.summary      = 'A very useful father-son controller small frame'
s.description  = "CDDKit is a very useful wrapper class"
s.homepage     = 'https://github.com/RocketsChen/CDDPagerController'
s.license      = { :type => "MIT", :file => "LICENSE" }
s.authors      = {'RcoketsChen' => '1062749739@qq.com'}
s.platform     = :ios, '8.0'
s.source       = {:git => 'https://github.com/RocketsChen/CDDPagerController.git', :tag => '1.1.5'}
s.source_files = "CDDPagerController", "CDDPagerController/**/*"
s.requires_arc = true

s.framework  = "UIKit"

end
