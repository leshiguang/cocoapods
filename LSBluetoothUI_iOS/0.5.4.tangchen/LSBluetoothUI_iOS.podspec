#
# Be sure to run `pod lib lint LSBluetoothUI_iOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LSBluetoothUI_iOS'
  s.version          = '0.5.4.tangchen'
  s.summary          = 'A short description of LSBluetoothUI_iOS.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://gitlab.lifesense.com/lego/lsbluetoothui_ios.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT' }
  s.author           = { 'tanjian' => 'malai_520@163.com' }

  s.source           = { :http => "https://media.githubusercontent.com/media/leshiguang/Framework/main/LSBluetoothUI_iOS/#{s.version.to_s}/LSBluetoothUI_iOS.framework.zip"}
#  s.source = { :git => 'https://gitlab.lifesense.com/lego/lsbluetoothui_ios.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  
  s.frameworks   = 'UIKit', 'Foundation'
  s.requires_arc = true
  s.static_framework = true
  
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }

#  s.dependency 'IQKeyboardManager', ">= 4"
  s.dependency 'SDWebImage'
  s.dependency 'Masonry'
  s.dependency 'Logan', '~> 1.2'
#  s.dependency 'LZBluetooth'
  s.libraries = 'z', 'c++', 'stdc++'
#  s.vendored_framework = 'LSBluetoothUI_iOS.framework'
#  s.source_files = 'LSBluetoothUI_iOS/Classes/**/*'
#  s.public_header_files = 'LSBluetoothUI_iOS/LSBluetoothUI.h'

  s.resource_bundles = {
     'LSAuthorization' => ['LSAuthorization.bundle/*'],
     'LSBluetoothUI_iOS' => ['LSBluetoothUI_iOS.bundle/*'],
#     'LSDeviceManager' => ['LSDeviceManager.bundle/*'],
  }

#
#  s.prefix_header_contents = <<-EOS
##ifdef __OBJC__
##  import "LSWAppAppearanceConfigrationMacro.h"
##  import "LSWAppColorConfigrationMacro.h"
##  import "LSWAppFontConfigrationMacro.h"
##  import "LSWConstants.h"
##  import "UIColor+Hex.h"
##  import "NSString+LSWAddition.h"
##  import "TKAlertViewController.h"
##  import "LSWAttributedUtil.h"
##  import "ServerCommunicationManager.h"
##  import "LSWRouter.h"
##  import "LSWRouterDefine.h"
##  import "LSWMacro.h"
##  import "NSBundle+LSBluetoothUI.h"
##  import "LSBluetoothUIAccountInfo.h"
##  import "UIViewController+MBProgressHUD.h"
##  import "UIView+MBProgressHUD.h"
#
##else
##endif
#EOS

  
end


#pod repo push leshiguang LSBluetoothUI_iOS.podspec --allow-warnings --verbose --sources=https://github.com/leshiguang/cocoapods.git,https://github.com/CocoaPods/Specs.git
#pod repo push lifesense-commonlib_ios-cocoapodsspecs LSBluetoothUI_iOS.podspec --allow-warnings --verbose --sources=https://gitlab.lifesense.com/commonlib_ios/CocoaPodsSpecs.git,https://github.com/CocoaPods/Specs.git

