#
# Be sure to run `pod lib lint UnlimintSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UnlimintSDK'
  s.version          = '9999'
  s.summary          = 'A short description of UnlimintSDK.'
  s.homepage         = 'https://www.unlimint.com'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'd.gnezdilov' => 'd.gnezdilov@unlimint.com' }

  s.platform = :ios, "11.0"
  s.swift_version = '5.3'

  s.source = {
      :http => "https://github.com/cardpay/ios-sdk-podspec/releases/download/#{s.version}/UnlimintSDK.zip"
  }

  s.vendored_frameworks = [
    'UnlimintSDK.xcframework'
  ]

  s.pod_target_xcconfig = {
      'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES'
  }

  s.frameworks = 'UIKit'
  s.libraries = "z"

  s.dependency 'Swinject', '~> 2.7.1'
  s.dependency 'Moya', '~> 14.0.0'
end
