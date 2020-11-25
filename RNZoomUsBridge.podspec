require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNUdaraZoom"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-zoom
                   DESC
  s.homepage     = "https://github.com/udara1999/react-native-zoom"
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  s.authors      = { "Udara" => "udaraprabathrcp@gmail.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/udara1999/react-native-zoom.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"

  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => ['"${PODS_ROOT}/ZoomSDK"', '"${PODS_ROOT}/../ZoomSDK"'] }
end

