#
# Be sure to run `pod lib lint LZBluetooth.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LZScale'
  s.version          = '1.0.2'

  s.summary          = '体脂秤'
  s.description      = <<-DESC
乐智蓝牙设备服务的模块
                       DESC

  s.homepage         = 'https://github.com/leshiguang/lzbluetooth-mini-ui-ios'
 
  s.license          = "MIT"
  s.author           = { 'tanjian' => 'malai_520@163.com' }

  s.source           = { :http => "https://github.com/leshiguang/Framework/raw/main/#{s.name}/#{s.version.to_s}/#{s.name}.framework.zip"}
#  s.source = { :git => 'git@gitlab.lifesense.com:delivery-ios/lzbluetooth.git', :tag => s.version.to_s }
    

  s.frameworks   = 'UIKit', 'Foundation'
  s.requires_arc = true
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => "arm64" }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => "arm64" }
  s.ios.deployment_target = '9.0'
  s.dependency 'LZBluetooth', '~> 2.0'
#  s.source_files = 'LZScale/**/*.{h,m}'
#  s.public_header_files = 'LZScale/**/*.h'
#  s.ios.vendored_framework = "#{s.name}.xcframework"
#s.ios.vendored_framework = "Distribution/DynamicFramework/#{s.name}.xcframework"
#s.ios.vendored_framework = "Release/#{s.name}.framework"
s.ios.vendored_framework = "#{s.name}.framework"
  

end

# 上传命令
# pod repo push lifesense-commonlib_ios-cocoapodsspecs LZBluetooth.podspec --allow-warnings
# pod repo push leshiguang LZBluetooth.podspec --allow-warnings --verbose

#pod package --local LZBluetooth.podspec --dynamic --no-mangle --spec-sources=https://gitlab.lifesense.com/commonlib_ios/CocoaPodsSpecs.git,https://github.com/CocoaPods/Specs.git
