#
# Be sure to run `pod lib lint KENetworking.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KENetworking'
  s.version          = '0.1.0'
  s.summary          = 'KENetworking is tiny netwroking library based on Alamofire, ObjectMapper, PromiseKit. It built for basic usage for netwroking and calling APIs (till now).'

  s.dependency 'Alamofire'
  s.dependency 'ObjectMapper'
  s.dependency 'PromiseKit/Alamofire', '~> 6.0'
  s.dependency 'PromiseKit', '~> 6.0'
# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This tiny networki library KENetworking is built as practice on using PromiseKit with Alamofire, helping me with my upcomming development projects to focus on models. It is calling apis with using of promises rather comlpetion handlers that will allow me add more functionality to it easly.
                       DESC

  s.homepage         = 'https://github.com/karimabdelazizmansour@gmail.com/KENetworking'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Karim Ebrahem' => 'karimabdelazizmansour@gmail.com' }
  s.source           = { :git => 'https://github.com/karimabdelazizmansour@gmail.com/KENetworking.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'KENetworking/Classes/**/*'
  
  # s.resource_bundles = {
  #   'KENetworking' => ['KENetworking/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
