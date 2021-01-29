#
# Be sure to run `pod lib lint LZBluetooth.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LZBluetooth'
  s.version          = '1.3.1'
  s.summary          = '乐智蓝牙设备服务'
  s.description      = <<-DESC
乐智蓝牙设备服务的模块
                       DESC

  s.homepage         = 'https://gitlab.lifesense.com/delivery-ios/lzbluetooth'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = "MIT"
  s.author           = { 'tanjian' => 'malai_520@163.com' }
  s.source           = { :http => "https://raw.githubusercontent.com/leshiguang/Framework/main/LZBluetooth/#{s.version.to_s}/LZBluetooth.framework.zip"}
#  s.source       = { :http => "http://b.yzcdn.cn/youzanyun/appsdk/open_sdk_ios_basic_#{s.version.to_s}.zip" }

  s.frameworks   = 'UIKit', 'Foundation'
  s.requires_arc = true
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.ios.deployment_target = "9.0"
  s.vendored_framework = 'LZBluetooth.framework'
#  s.source_files = 'LZBluetooth/**/*.{h,m,c}'
end

# 上传命令
# pod repo push lifesense-commonlib_ios-cocoapodsspecs LZBluetooth.podspec --allow-warnings
# pod repo push leshiguang LZBluetooth.podspec --allow-warnings --verbose
