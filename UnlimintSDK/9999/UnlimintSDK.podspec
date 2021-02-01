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

  s.vendored_frameworks = [
    'UnlimintSDK.xcframework'
  ]

  s.source = {
      :http => "https://github.com/cardpay/ios-sdk-podspec/releases/download/#{s.version}/UnlimintSDK.zip"
  }

  s.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
      'SKIP_INSTALL' => 'NO',
      'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES'
  }
  
  s.user_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
    
  s.frameworks = 'UIKit'
  s.libraries = "z"
  
  s.dependency 'Swinject', '~> 2.7.1'
  s.dependency 'Moya', '~> 14.0.0'
end
