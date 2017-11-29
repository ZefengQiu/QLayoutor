
Pod::Spec.new do |s|
  s.name             = 'QLayoutor'
  s.version          = '0.1.0'
  s.module_name      = 'QLayoutor'
  s.summary          = 'Helper functions to do iOS Auto-layout (Swift).'
  s.homepage         = 'https://github.com/ZefengQiu/QLayoutor'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ZefengQiu' => 'z9qiu@uwaterloo.ca' }
  s.source           = { :git => 'https://github.com/ZefengQiu/QLayoutor.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.source_files = 'QLayoutor/Classes/**/*'
  s.frameworks = 'UIKit'

  # s.resource_bundles = {
  #   'QLayoutor' => ['QLayoutor/Assets/*.png']
  # }
  
end
