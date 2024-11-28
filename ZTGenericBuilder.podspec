Pod::Spec.new do |s|
  s.name             = 'ZTGenericBuilder'
  s.version          = '1.0.0'
  s.summary          = 'Generic @resultbuilder'

  s.description      = <<-DESC
                          Generic @resultbuilder
                        DESC

  s.homepage         = 'https://github.com/willonboy/ZTGenericBuilder'
  s.license          = { :type => 'MPL-2.0', :file => 'LICENSE' }
  s.author           = { 'trojan zhang' => 'willonboy@qq.com' }
  s.source           = { :git => 'https://github.com/willonboy/ZTGenericBuilder.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.source_files = 'Sources/**/*.{swift,h,m}'
  s.exclude_files = 'Sources/Exclude'

  s.platforms = { :ios => '13.0', :osx => '10.15', :tvos => '14.0', :watchos => '7.0' }

  s.swift_version = '5.1'
  
end
