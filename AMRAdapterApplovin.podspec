Pod::Spec.new do |s|
  s.name             = 'AMRAdapterApplovin'
  s.version          = '11.1.0.1'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited.
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Applovin adapter for AMR SDK.'
  s.description      = 'AMR Applovin adapter allows publishers to mediate Applovin native, interstitial and video ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-APPLOVIN.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '9.0'
  s.vendored_frameworks = 'AMRAdapterApplovin/Libs/AMRAdapterApplovin.xcframework'
  s.dependency 'AMRSDK', '~> 1.5.6'
  s.dependency 'AppLovinSDK', '11.1.0'
end
