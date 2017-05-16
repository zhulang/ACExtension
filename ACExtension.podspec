
Pod::Spec.new do |s|
    s.name         = 'ACExtension'
    s.version      = '1.0.0'
    s.summary      = 'categorys of the classes ( included by UIKit or NSFoundation)'
    s.homepage     = 'https://github.com/zhulang/ACExtension'
    s.license      = 'MIT'
    s.authors      = {'Achilles_Chu' => '610730060@qq.com'}
    s.platform     = :ios, '6.0'
    s.source       = {:git => 'https://github.com/zhulang/ACExtension.git', :tag => s.version}
    s.source_files = 'Extension/**/*.{h,m}'
    s.requires_arc = true
end
