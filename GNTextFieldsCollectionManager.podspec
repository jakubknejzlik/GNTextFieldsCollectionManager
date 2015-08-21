#
# Be sure to run `pod lib lint GNTextFieldsCollectionManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "GNTextFieldsCollectionManager"
  s.version          = "0.1.1"
  s.summary          = "Manage which textFields flow (next button -> next textField)."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
                        When using many textFields in one view with "next" functionality, you usualy end up with repeating code and with checking field one by one.
                        This tool helps you with this process by taking all textFields in specified view (or specified array of textFields) and handles the flow automaticaly.
                       DESC

  s.homepage         = "https://github.com/jakubknejzlik/GNTextFieldsCollectionManager"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Jakub Knejzlik" => "jakub.knejzlik@gmail.com" }
  s.source           = { :git => "https://github.com/jakubknejzlik/GNTextFieldsCollectionManager.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'GNTextFieldsCollectionManager' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
