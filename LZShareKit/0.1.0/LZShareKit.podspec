#
# Be sure to run `pod lib lint LZShareKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LZShareKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of LZShareKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'git@gitlab.lifesense.com:lego/lzsharekit.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = "MIT"
  s.author           = { 'malai_520@163.com' => 'malai_520@163.com' }
  s.source           = { :http => "https://media.githubusercontent.com/media/leshiguang/Framework/main/LZShareKit/#{s.version.to_s}/LZShareKit.zip"}
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  
  s.static_framework = true
 
  s.dependency 'WechatOpenSDK'
  s.dependency 'Masonry'
  s.dependency 'SDWebImage'
  
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  
#  s.source_files = 'LZShareKit/Classes/**/*'
#  s.resource_bundles = {
#    'LZShareKit' => ['LZShareKit/Assets/LZShareKit.xcassets']
#  }
  
  s.vendored_framework = 'LZShareKit.framework'
  s.resource_bundles = {
    'LZShareKit' => ['LZShareKit.bundle/*.xcassets']
  }
end


#pod repo push leshiguang LZShareKit.podspec --allow-warnings --verbose --sources=git@github.com:leshiguang/cocoapods.git,https://github.com/CocoaPods/Specs.git
