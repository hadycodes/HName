Pod::Spec.new do |s|
    s.name             = 'HName'
    s.version          = '0.9.1'
    s.summary          = 'Swift package to deal with name strings.'
    s.homepage         = 'https://github.com/HadiIOS/HName'
    s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
    s.author           = { 'Hady Nourallah' => 'hady.nourallah@gmail.com' }
    s.source           = { :git => 'https://github.com/HadiIOS/HName.git', :tag => s.version.to_s }
    s.ios.deployment_target = '10.0'
    s.swift_version = '5.0'
    s.source_files = 'Sources/HName/**/*'
  end
  