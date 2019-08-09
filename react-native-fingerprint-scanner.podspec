require 'json'
package = JSON.parse(File.read('package.json'))["version"]

Pod::Spec.new do |s|

  s.name            = package['name']
  s.version         = package["version"]
  s.homepage        = package['repository']
  s.summary         = package["summary"]
  s.license         = "MIT"
  s.author          = { "Hieu Van" => "brentvatne@gmail.com",
                        "Gennady Evstratov" => "g@goodworkapps.com" }
  s.platform        = :ios, "8.4"
  s.source          = { :git => "https://github.com/hieuvp/react-native-fingerprint-scanner.git", :tag => "#{s.version}" }
  s.source_files    = 'ios/*.{h,m}'
  s.preserve_paths  = "**/*.js"
  s.framework       = 'LocalAuthentication'

  s.dependency 'React'

end
