#
# Be sure to run `pod lib lint LZH5SDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

#pod repo push leshiguang LZH5SDK.podspec --allow-warnings --verbose --skip-import-validation

Pod::Spec.new do |s|
  s.name             = 'LZH5SDK'
  s.version          = '0.1.0'
  s.summary          = 'A short description of LZH5SDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/leshiguang/lz_H5'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jackwang1991' => 'wangmengios@163.com' }
  s.source           = { :git => 'https://github.com/leshiguang/lz_H5.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'LZH5SDK/Classes/**/*'
  
  s.subspec 'NetWork' do |network|
      network.ios.vendored_framework = 'LZH5SDK/SDK/LSNetwork_iOS.framework'
  end
  s.subspec 'LSAuthorization' do |authorization|
      authorization.ios.vendored_frameworks = 'LZH5SDK/SDK/LSAuthorization.framework'
  end
  s.subspec 'lzH5' do |ui|
      ui.ios.vendored_frameworks = 'LZH5SDK/SDK/lzH5.framework'
  end
  
  s.dependency 'Masonry'
  s.dependency 'SDWebImage'
  
  # s.resource_bundles = {
  #   'LZH5SDK' => ['LZH5SDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
