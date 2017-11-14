require 'json'
package_json = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name           = "react-native-cookie"
  s.version        = package_json["version"]
  s.summary        = package_json["description"]
  s.homepage       = "https://github.com/baronapp/react-native-cookie"
  s.license        = package_json["license"]
  s.author         = "shimohq / baronapp"
  s.platform       = :ios, "8.2"
  s.source         = { :git => 'https://github.com/baronapp/react-native-cookie', :tag => s.version }
  s.source_files   = 'ios/*.{h,m}'
  s.dependency 'React'

end

