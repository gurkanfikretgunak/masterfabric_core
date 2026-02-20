#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint masterfabric_core.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'masterfabric_core'
  s.version          = '0.0.14'
  s.summary          = 'Core utilities for MasterFabric Flutter project with native iOS support.'
  s.description      = <<-DESC
Core utilities, base classes, and shared logic for the MasterFabric Flutter project.
Includes native iOS App Tracking Transparency (ATT) support via platform channels.
                       DESC
  s.homepage         = 'https://github.com/gurkanfikretgunak/masterfabric_core'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'MasterFabric' => 'info@masterfabric.com' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform         = :ios, '13.0'
  s.frameworks       = 'AppTrackingTransparency', 'AVFoundation', 'Photos', 'CoreLocation', 'Contacts'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version    = '5.0'
end
