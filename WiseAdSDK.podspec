Pod::Spec.new do |s|
  s.name             = 'WiseAdSDK'
  s.version          = '1.0.0'
  s.summary          = 'WiseMedia Advertising SDK'
  s.description      = 'iOS Advertising SDK for WiseMedia'
  s.homepage         = 'https://github.com/556445543/WiseAdSDK-iOS'
  s.license          = { :type => 'Commercial', :text => 'Copyright' }
  s.author           = { 'WiseMedia' => 'sdk@wisemedia.com' }
  s.source           = {
    :http => 'https://github.com/556445543/WiseAdSDK-iOS/releases/download/1.0.0/WiseAdSDK-1.0.0.zip',
    :sha256 => '6eb8ef98c0391764035c9b402242e27c426f15fba0a4bee658d4eb052efea14e'
  }

  s.ios.deployment_target = '11.0'
  s.requires_arc = true

  s.ios.vendored_frameworks = 'WiseAdSDK.xcframework'

  s.resource_bundles = {
    'WiseAdSDKBundle' => ['WiseAdSDKBundle.bundle/**/*']
  }

  s.frameworks = 'UIKit', 'Foundation', 'AdSupport', 'AppTrackingTransparency', 'WebKit'
  s.libraries = 'z', 'c++'

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
end