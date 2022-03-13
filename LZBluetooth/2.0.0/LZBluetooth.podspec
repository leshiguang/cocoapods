#
# Be sure to run `pod lib lint LZBluetooth.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LZBluetooth'
  s.version          = '2.0.0'
  s.summary          = '乐智蓝牙设备服务'
  s.description      = <<-DESC
乐智蓝牙设备服务的模块
                       DESC

  s.homepage         = 'https://github.com/leshiguang/lzbluetooth-mini-ui-ios'
 
  s.license          = "MIT"
  s.author           = { 'tanjian' => 'malai_520@163.com' }

  s.source           = { :http => "https://media.githubusercontent.com/media/leshiguang/Framework/main/LZBluetooth/#{s.version.to_s}/LZBluetooth.framework.zip"}
#  s.source = { :git => 'git@gitlab.lifesense.com:delivery-ios/lzbluetooth.git', :tag => s.version.to_s }

  s.frameworks   = 'UIKit', 'Foundation'
  s.requires_arc = true

  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => "arm64" }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => "arm64" }
  s.ios.deployment_target = '9.0'
  s.ios.vendored_framework = "#{s.name}.framework"


end

# 上传命令
# pod repo push lifesense-commonlib_ios-cocoapodsspecs LZBluetooth.podspec --allow-warnings
# pod repo push leshiguang LZBluetooth.podspec --allow-warnings --verbose

#pod package --local LZBluetooth.podspec --dynamic --no-mangle --spec-sources=https://gitlab.lifesense.com/commonlib_ios/CocoaPodsSpecs.git,https://github.com/CocoaPods/Specs.git
