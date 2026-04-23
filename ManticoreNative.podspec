Pod::Spec.new do |s|
  s.name             = 'ManticoreNative'
  s.version          = '1.0.1'
  s.summary          = 'Ghost asset recovery for research purposes.'
  s.homepage         = 'https://github.com/ilhamal7/manticore-native'
  s.license          = { :type => 'MIT' }
  s.author           = { 'PayPal' => 'support@paypal.com' }
  s.source           = { :git => 'https://github.com/ilhamal7/manticore-native.git', :tag => s.version.to_s }
  s.ios.deployment_target = '12.0'
  s.source_files     = 'Classes/**/*'
end
