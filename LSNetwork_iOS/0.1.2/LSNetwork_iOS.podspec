#
# Be sure to run `pod lib lint LSNetworkingModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LSNetwork_iOS'
  s.version          = '0.1.2'
  s.summary          = 'LSNetworkingModule is a networking lib for lifesense'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
LSNetworkingModule is a networking lib for lifesense
                       DESC

  s.homepage         = 'https://github.com/leshiguang/LSNetwork_iOS.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'alex.wu' => 'yong.wu@lifesense.com' }
  s.source           = { :git => 'git@github.com:leshiguang/LSNetwork_iOS.git', :commit => "88fb7786d86d8d1dae58685f5509c0c79d285166"  }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'LSNetworkingModule/Classes/**/*.{h,m}'
  
  s.resource_bundles = {
       'Resources' => ['LSNetworkingModule/Assets/*.bundle/*.lproj']
  }

    s.public_header_files = 'LSNetworkingModule/Classes/**/*.h'
    s.frameworks = 'UIKit', 'Foundation'
#    s.dependency 'AFNetworking'

#pod lib lint
#pod repo push lifesense-commonlib_ios-cocoapodsspecs LSNetworkingModule.podspec --verbose
#pod repo push lifesense-commonlib_ios-cocoapodsspecs LSNetworkingModule.podspec --allow-warnings

end
