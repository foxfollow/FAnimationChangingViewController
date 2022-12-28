Pod::Spec.new do |s|
  s.name             = 'FAnimationChangingViewController'
  s.version          = '0.1.0'
  s.summary          = 'FAnimationChangingViewController gives functions for easy setup animations to push or pop to new ViewController.'
  s.homepage         = 'https://github.com/foxfollow/'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Heorhii Savoiskyi' => 'd3f0ld@proton.me' }
  s.source           = { :git => 'https://github.com/foxfollow/FAnimationChangingViewController.git', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  s.source_files = 'Sources/FAnimationChangingViewController/**/*'
end

