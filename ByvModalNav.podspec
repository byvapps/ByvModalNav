#
# Be sure to run `pod lib lint ByvModalNav.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'ByvModalNav'
    s.version          = '1.0.0'
    s.summary          = 'UINavigationController with auto close button'

    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!

    s.description      = <<-DESC
    With this UINavigationController It's developed to quickly show modal views with close button.
    If onlyInRoot:Bool = true (default) the close button is added as leftBarButtonItem only in the root view controller. To dismiss the view you must need to back to the root view on the navigation controller
    If onlyInRoot:Bool = false the close button is added as rightBarButtonItem in all view controllers. The modal navigation can be dismiss in any view controller
                       DESC

    s.homepage         = 'https://github.com/byvapps/ByvModalNav'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Adrian' => 'adrian@byvapps.com' }
    s.source           = { :git => 'https://github.com/byvapps/ByvModalNav.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/byvapps'

    s.ios.deployment_target = '8.0'

    s.source_files = 'ByvModalNav/Classes/**/*'

    # s.resource_bundles = {
    #   'ByvModalNav' => ['ByvModalNav/Assets/*.png']
    # }

    # s.public_header_files = 'Pod/Classes/**/*.h'
    # s.frameworks = 'UIKit', 'MapKit'
    # s.dependency 'AFNetworking', '~> 2.3'
end
