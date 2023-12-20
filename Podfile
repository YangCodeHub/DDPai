# Uncomment the next line to define a global platform for your project
platform :ios, '14.0'
use_frameworks!

target 'DDPai' do
  # Comment the next line if you don't want to use dynamic frameworks
  
  # Pods for Qiushi
  pod 'Alamofire'
  pod 'Kingfisher'
  pod 'SwiftyJSON'
  pod 'MJRefresh'
  pod 'KakaJSON', '~> 1.1.2'
  pod 'SwiftLint', '= 0.53.0', configurations: ['Debug'] #代码规范检查  

  target 'DDPaiTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'DDPaiUITests' do
    # Pods for testing
  end

end

post_install do |installer|
  installer.generated_projects.each do |project|
    project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
            config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
            config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
         end
    end
  end
end
