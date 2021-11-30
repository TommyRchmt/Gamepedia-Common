#
#  Be sure to run `pod spec lint Common.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.platform = :ios
  spec.ios.deployment_target = '13.0'
  spec.name         = 'Common'
  spec.version      = '1.0.0'
  spec.summary      = 'Common.framework for Gamepedia Apps'
  spec.requires_arc = true

  spec.homepage     = 'https://github.com/TommyRchmt/Gamepedia-Common'

  spec.license 		= { :type => 'MIT', :file => 'LICENSE' }

  spec.author       = { 'Tommy Rachmat' => 'tom.rchmt02@gmail.com' }
  
  spec.source       = { :git => 'https://github.com/TommyRchmt/Gamepedia-Common.git', :tag => spec.version.to_s }

  spec.framework = "UIKit"

  spec.source_files  = "Common/**/*.{swift}"
  spec.resource_bundles = { "Common" => ["*.lproj/*.strings"] }

  spec.swift_version = "5.1"

end
