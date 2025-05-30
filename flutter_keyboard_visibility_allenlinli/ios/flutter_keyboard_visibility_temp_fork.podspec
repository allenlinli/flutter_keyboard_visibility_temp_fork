#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_keyboard_visibility_temp_fork.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_keyboard_visibility_temp_fork'
  s.version          = '0.0.1'
  s.summary          = 'flutter_keyboard_visibility_temp_fork'
  s.description      = <<-DESC
A temporary fork of the flutter_keyboard_visibility plugin
                       DESC
  s.homepage         = 'https://github.com/EchoEllet/flutter_keyboard_visibility_temp_fork'
  s.license          = { :type => 'MIT', :file => '../LICENSE' }
  s.author           = { 'Flutter Quill' => 'https://github.com/singerdmx/flutter-quill' }
  s.source           = { :http => 'https://github.com/EchoEllet/flutter_keyboard_visibility_temp_fork/tree/master/flutter_keyboard_visibility_temp_fork' }
  s.swift_version = '5.0'
  s.source_files = 'flutter_keyboard_visibility_temp_fork/Sources/flutter_keyboard_visibility_temp_fork/**/*.swift'
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
