#
#  Be sure to run `pod spec lint BSLoader.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.

Pod::Spec.new do |s|

  s.name         = "BSLoader"
  s.version      = "0.0.1"
  s.summary      = "Show loading animations"

  s.description  = <<-DESC
                   DESC
  s.homepage     = "http://EXAMPLE/BSLoader"

  s.license = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "bisma" => "bismasaeed00@gmail.com" }
  s.homepage = "https://github.com/bismasaeed00/"

  s.platform     = :ios

  s.ios.deployment_target = "8.0"
  s.requires_arc = true

  s.source       = { :git => "https://github.com/bismasaeed00/BSLoader", :tag => "#{s.version}" }

  s.framework  = "UIKit"


end
