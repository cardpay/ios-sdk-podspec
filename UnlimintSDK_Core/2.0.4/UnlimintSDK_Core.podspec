#
# Be sure to run `pod lib lint UnlimintSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html>
#

Pod::Spec.new do |s|
  s.name             = 'UnlimintSDK_Core'
  s.version          = '2.0.4'
  s.summary          = 'A short description of UnlimintSDK.'
  s.homepage         = 'https://www.unlimint.com'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'd.gnezdilov' => 'd.gnezdilov@unlimint.com' }

  s.platform = :ios, '13.0'
  s.swift_version = '5.3'

  s.source = {
      :http => "https://github.com/cardpay/ios-sdk-podspec/releases/download/#{s.version}/UnlimintSDK_Core.zip"
  }

  s.vendored_frameworks = [
    'UnlimintSDK_Core.xcframework'
  ]
  
  s.frameworks = 'UIKit'
  s.libraries = "z"

  s.dependency 'Moya', '~> 15.0.0'

end