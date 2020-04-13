Pod::Spec.new do |s|
  s.name         = "JuphoonCloudSDK_iOS"
  s.version      = "1.26"
  s.summary      = "Juphoon SDK."
  s.description  = "JCSDK for video talk, broadcasting and message service"
  s.homepage     = "http://developer.juphoon.com/cn/download/"
  s.license      = "Copyright 2020 juphoon. All rights reserved"
  s.author             = { "于彩彩" => "color.yu@juphoon.com.cn" }

  s.platform     = :ios, "9.0"
  s.ios.deployment_target = '9.0'
  s.requires_arc = true
  s.source       = { :http => 'https://justalkcloud.com/wo_upload/JC_SDK_iOS_1.26.tar.gz'}

  s.subspec 'include' do |include|

  include.subspec 'grape' do |grape|
  grape.source_files = 'JC_SDK_iOS_1.26/include/grape/*.h'

  include.subspec 'lemon' do |lemon|
  lemon.source_files = 'JC_SDK_iOS_1.26/include/lemon/*.h'

  lemon.subspec 'mtc' do |mtc|
  mtc.source_files = 'JC_SDK_iOS_1.26/include/lemon/mtc/*.h'

  include.subspec 'avatar' do |avatar|
  
  avatar.subspec 'zos' do |zos|
  zos.source_files = 'JC_SDK_iOS_1.26/include/avatar/zos/*.h'

  zos.subspec 'os' do |os|
  
  os.subspec 'os' do |ios|
  ios.source_files = 'JC_SDK_iOS_1.26/include/avatar/zos/os/ios/*.h'

  end
  end
  end
  end
  end
  end
  end
  end

  s.vendored_frameworks  = "framework/JCSDKOC.framework"
  s.vendored_libraries = "lib/ios/libmtc.a", "lib/ios/libzmf.a"
  s.frameworks = 'AVFoundation', 'Security', 'AudioToolbox', 'CoreMedia', 'AssetsLibrary', 'CoreVideo', 'CFNetwork', 'CoreMotion', 'GLKit', 'ReplayKit', 'PushKit', 'SystemConfiguration', 'VideoToolbox'
  s.libraries = 'c++', 'resolv', 'z'
  s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(PODS_ROOT)/JC_SDK_iOS_1.26/include"}
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64 armv7 armv7s arm64e x86_64'}

  end
